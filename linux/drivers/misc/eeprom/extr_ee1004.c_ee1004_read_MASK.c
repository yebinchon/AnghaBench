#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct kobject {int dummy; } ;
struct i2c_client {int dummy; } ;
struct file {int dummy; } ;
struct device {int dummy; } ;
struct bin_attribute {int dummy; } ;
typedef  size_t ssize_t ;
typedef  int loff_t ;

/* Variables and functions */
 int EE1004_PAGE_SHIFT ; 
 int EE1004_PAGE_SIZE ; 
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int,int) ; 
 int /*<<< orphan*/  ee1004_bus_lock ; 
 int ee1004_current_page ; 
 int FUNC2 (struct i2c_client*,char*,int,size_t) ; 
 int FUNC3 () ; 
 int /*<<< orphan*/ * ee1004_set_page ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct device* FUNC5 (struct kobject*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 struct i2c_client* FUNC8 (struct device*) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static ssize_t FUNC10(struct file *filp, struct kobject *kobj,
			   struct bin_attribute *bin_attr,
			   char *buf, loff_t off, size_t count)
{
	struct device *dev = FUNC5(kobj);
	struct i2c_client *client = FUNC8(dev);
	size_t requested = count;
	int page;

	if (FUNC9(!count))
		return count;

	page = off >> EE1004_PAGE_SHIFT;
	if (FUNC9(page > 1))
		return 0;
	off &= (1 << EE1004_PAGE_SHIFT) - 1;

	/*
	 * Read data from chip, protecting against concurrent access to
	 * other EE1004 SPD EEPROMs on the same adapter.
	 */
	FUNC6(&ee1004_bus_lock);

	while (count) {
		int status;

		/* Select page */
		if (page != ee1004_current_page) {
			/* Data is ignored */
			status = FUNC4(ee1004_set_page[page],
						      0x00);
			if (status == -ENXIO) {
				/*
				 * Don't give up just yet. Some memory
				 * modules will select the page but not
				 * ack the command. Check which page is
				 * selected now.
				 */
				if (FUNC3() == page)
					status = 0;
			}
			if (status < 0) {
				FUNC1(dev, "Failed to select page %d (%d)\n",
					page, status);
				FUNC7(&ee1004_bus_lock);
				return status;
			}
			FUNC0(dev, "Selected page %d\n", page);
			ee1004_current_page = page;
		}

		status = FUNC2(client, buf, off, count);
		if (status < 0) {
			FUNC7(&ee1004_bus_lock);
			return status;
		}
		buf += status;
		off += status;
		count -= status;

		if (off == EE1004_PAGE_SIZE) {
			page++;
			off = 0;
		}
	}

	FUNC7(&ee1004_bus_lock);

	return requested;
}