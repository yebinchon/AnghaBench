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
struct i2400m_bcf_hdr {int dummy; } ;
struct i2400m {int /*<<< orphan*/  fw_name; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ERESTARTSYS ; 
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC2 (struct i2400m*) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int FUNC4 (struct i2400m*) ; 
 int FUNC5 (struct i2400m*,struct i2400m_bcf_hdr const*) ; 

__attribute__((used)) static
int FUNC6(struct i2400m *i2400m,
		       const struct i2400m_bcf_hdr *bcf_hdr)
{
	int result;
	struct device *dev = FUNC3(i2400m);

	if (FUNC2(i2400m)) {
		FUNC0(1, dev, "signed boot\n");
		result = FUNC5(i2400m, bcf_hdr);
		if (result == -ERESTARTSYS)
			return result;
		if (result < 0)
			FUNC1(dev, "firmware %s: signed boot download "
				"initialization failed: %d\n",
				i2400m->fw_name, result);
	} else {
		/* non-signed boot process without pokes */
		FUNC0(1, dev, "non-signed boot\n");
		result = FUNC4(i2400m);
		if (result == -ERESTARTSYS)
			return result;
		if (result < 0)
			FUNC1(dev, "firmware %s: non-signed download "
				"initialization failed: %d\n",
				i2400m->fw_name, result);
	}
	return result;
}