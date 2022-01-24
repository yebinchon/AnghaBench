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
typedef  int u32 ;
struct hclge_hw_error {int int_msk; scalar_t__ reset_level; scalar_t__ msg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ HNAE3_NONE_RESET ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long*) ; 

__attribute__((used)) static void FUNC2(struct device *dev, char *reg,
			    const struct hclge_hw_error *err,
			    u32 err_sts, unsigned long *reset_requests)
{
	while (err->msg) {
		if (err->int_msk & err_sts) {
			FUNC0(dev, "%s %s found [error status=0x%x]\n",
				reg, err->msg, err_sts);
			if (err->reset_level &&
			    err->reset_level != HNAE3_NONE_RESET)
				FUNC1(err->reset_level, reset_requests);
		}
		err++;
	}
}