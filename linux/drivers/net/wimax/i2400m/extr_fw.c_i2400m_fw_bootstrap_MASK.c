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
struct i2400m {int /*<<< orphan*/ * fw_hdrs; int /*<<< orphan*/  fw_name; } ;
struct firmware {int /*<<< orphan*/  size; scalar_t__ data; } ;
struct device {int dummy; } ;
typedef  enum i2400m_bri { ____Placeholder_i2400m_bri } i2400m_bri ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct device*,char*,struct i2400m*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,struct device*,char*,struct i2400m*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*,char*,int /*<<< orphan*/ ,int) ; 
 struct device* FUNC3 (struct i2400m*) ; 
 int FUNC4 (struct i2400m*,struct i2400m_bcf_hdr const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct i2400m*,struct i2400m_bcf_hdr const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC7(struct i2400m *i2400m, const struct firmware *fw,
			enum i2400m_bri flags)
{
	int ret;
	struct device *dev = FUNC3(i2400m);
	const struct i2400m_bcf_hdr *bcf;	/* Firmware data */

	FUNC1(5, dev, "(i2400m %p)\n", i2400m);
	bcf = (void *) fw->data;
	ret = FUNC4(i2400m, bcf, fw->size);
	if (ret >= 0)
		ret = FUNC5(i2400m, bcf, fw->size, flags);
	if (ret < 0)
		FUNC2(dev, "%s: cannot use: %d, skipping\n",
			i2400m->fw_name, ret);
	FUNC6(i2400m->fw_hdrs);
	i2400m->fw_hdrs = NULL;
	FUNC0(5, dev, "(i2400m %p) = %d\n", i2400m, ret);
	return ret;
}