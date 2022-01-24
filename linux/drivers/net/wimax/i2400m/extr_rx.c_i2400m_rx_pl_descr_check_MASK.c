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
struct i2400m_pld {int dummy; } ;
struct i2400m {size_t bus_pl_size_max; } ;
struct device {int dummy; } ;
typedef  enum i2400m_pt { ____Placeholder_i2400m_pt } i2400m_pt ;

/* Variables and functions */
 int EIO ; 
 int I2400M_PT_ILLEGAL ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int,...) ; 
 struct device* FUNC1 (struct i2400m*) ; 
 size_t FUNC2 (struct i2400m_pld const*) ; 
 int FUNC3 (struct i2400m_pld const*) ; 

__attribute__((used)) static
int FUNC4(struct i2400m *i2400m,
			      const struct i2400m_pld *pld,
			      size_t pl_itr, size_t buf_size)
{
	int result = -EIO;
	struct device *dev = FUNC1(i2400m);
	size_t pl_size = FUNC2(pld);
	enum i2400m_pt pl_type = FUNC3(pld);

	if (pl_size > i2400m->bus_pl_size_max) {
		FUNC0(dev, "RX: HW BUG? payload @%zu: size %zu is "
			"bigger than maximum %zu; ignoring message\n",
			pl_itr, pl_size, i2400m->bus_pl_size_max);
		goto error;
	}
	if (pl_itr + pl_size > buf_size) {	/* enough? */
		FUNC0(dev, "RX: HW BUG? payload @%zu: size %zu "
			"goes beyond the received buffer "
			"size (%zu bytes); ignoring message\n",
			pl_itr, pl_size, buf_size);
		goto error;
	}
	if (pl_type >= I2400M_PT_ILLEGAL) {
		FUNC0(dev, "RX: HW BUG? illegal payload type %u; "
			"ignoring message\n", pl_type);
		goto error;
	}
	result = 0;
error:
	return result;
}