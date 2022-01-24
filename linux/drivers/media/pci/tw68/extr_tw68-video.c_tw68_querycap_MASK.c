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
struct v4l2_capability {int /*<<< orphan*/  bus_info; int /*<<< orphan*/  card; int /*<<< orphan*/  driver; } ;
struct tw68_dev {int /*<<< orphan*/  pci; } ;
struct file {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 struct tw68_dev* FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, void  *priv,
					struct v4l2_capability *cap)
{
	struct tw68_dev *dev = FUNC3(file);

	FUNC2(cap->driver, "tw68", sizeof(cap->driver));
	FUNC2(cap->card, "Techwell Capture Card",
		sizeof(cap->card));
	FUNC1(cap->bus_info, "PCI:%s", FUNC0(dev->pci));
	return 0;
}