#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct napi_struct {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* autosuspend_en ) (struct r8152*,int) ;} ;
struct r8152 {struct napi_struct napi; TYPE_1__ rtl_ops; int /*<<< orphan*/  intr_urb; int /*<<< orphan*/  flags; struct net_device* netdev; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  MCU_TYPE_PLA ; 
 int /*<<< orphan*/  PLA_OOB_CTRL ; 
 int /*<<< orphan*/  PLA_RCR ; 
 int RCR_ACPT_ALL ; 
 int RXFIFO_EMPTY ; 
 int /*<<< orphan*/  SELECTIVE_SUSPEND ; 
 int /*<<< orphan*/  WORK_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*) ; 
 int /*<<< orphan*/  FUNC3 (struct napi_struct*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 
 scalar_t__ FUNC5 (struct net_device*) ; 
 int FUNC6 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct r8152*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC10 (struct r8152*) ; 
 int /*<<< orphan*/  FUNC11 (struct r8152*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (struct r8152*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct r8152 *tp)
{
	struct net_device *netdev = tp->netdev;
	int ret = 0;

	FUNC12(SELECTIVE_SUSPEND, &tp->flags);
	FUNC13();

	if (FUNC5(netdev) && FUNC15(WORK_ENABLE, &tp->flags)) {
		u32 rcr = 0;

		if (FUNC4(netdev)) {
			u32 ocp_data;

			rcr = FUNC7(tp, MCU_TYPE_PLA, PLA_RCR);
			ocp_data = rcr & ~RCR_ACPT_ALL;
			FUNC8(tp, MCU_TYPE_PLA, PLA_RCR, ocp_data);
			FUNC11(tp, true);
			ocp_data = FUNC6(tp, MCU_TYPE_PLA,
						 PLA_OOB_CTRL);
			if (!(ocp_data & RXFIFO_EMPTY)) {
				FUNC11(tp, false);
				FUNC8(tp, MCU_TYPE_PLA, PLA_RCR, rcr);
				FUNC0(SELECTIVE_SUSPEND, &tp->flags);
				FUNC13();
				ret = -EBUSY;
				goto out1;
			}
		}

		FUNC0(WORK_ENABLE, &tp->flags);
		FUNC16(tp->intr_urb);

		tp->rtl_ops.autosuspend_en(tp, true);

		if (FUNC4(netdev)) {
			struct napi_struct *napi = &tp->napi;

			FUNC2(napi);
			FUNC10(tp);
			FUNC11(tp, false);
			FUNC8(tp, MCU_TYPE_PLA, PLA_RCR, rcr);
			FUNC3(napi);
		}

		if (FUNC1(tp)) {
			FUNC9(tp);
			ret = -EBUSY;
		}
	}

out1:
	return ret;
}