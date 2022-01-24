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
typedef  int u8 ;
struct meson_ao_cec_device {int dummy; } ;
struct cec_adapter {struct meson_ao_cec_device* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  CEC_LOGICAL_ADDR0 ; 
 int CEC_LOG_ADDR_INVALID ; 
 int LOGICAL_ADDR_DISABLE ; 
 int LOGICAL_ADDR_MASK ; 
 int LOGICAL_ADDR_VALID ; 
 int FUNC0 (struct meson_ao_cec_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct meson_ao_cec_device*,int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct cec_adapter *adap, u8 logical_addr)
{
	struct meson_ao_cec_device *ao_cec = adap->priv;
	int ret = 0;

	FUNC1(ao_cec, CEC_LOGICAL_ADDR0,
			   LOGICAL_ADDR_DISABLE, &ret);
	if (ret)
		return ret;

	ret = FUNC0(ao_cec);
	if (ret)
		return ret;

	if (logical_addr == CEC_LOG_ADDR_INVALID)
		return 0;

	FUNC1(ao_cec, CEC_LOGICAL_ADDR0,
			   logical_addr & LOGICAL_ADDR_MASK, &ret);
	if (ret)
		return ret;

	FUNC2(100);

	FUNC1(ao_cec, CEC_LOGICAL_ADDR0,
			   (logical_addr & LOGICAL_ADDR_MASK) |
			   LOGICAL_ADDR_VALID, &ret);

	return ret;
}