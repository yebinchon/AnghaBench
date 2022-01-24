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
typedef  int /*<<< orphan*/  u32 ;
struct cnic_dev {int /*<<< orphan*/  netdev; } ;
struct bnx2x {int /*<<< orphan*/  pfid; } ;

/* Variables and functions */
 scalar_t__ BAR_TSTRORM_INTMEM ; 
 scalar_t__ BAR_XSTRORM_INTMEM ; 
 int /*<<< orphan*/  FUNC0 (struct bnx2x*) ; 
 int /*<<< orphan*/  FUNC1 (struct cnic_dev*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (struct cnic_dev*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct cnic_dev*,scalar_t__,int) ; 
 int DEF_MAX_CWND ; 
 int DEF_MAX_DA_COUNT ; 
 int DEF_SWS_TIMER ; 
 int DEF_TOS ; 
 int DEF_TTL ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct cnic_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct cnic_dev*) ; 
 struct bnx2x* FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(struct cnic_dev *dev)
{
	struct bnx2x *bp = FUNC14(dev->netdev);
	u32 pfid = bp->pfid;
	u32 port = FUNC0(bp);

	FUNC13(dev);
	FUNC12(dev, 0, 1);

	FUNC2(dev, BAR_XSTRORM_INTMEM +
		  FUNC5(pfid), 0);

	FUNC1(dev, BAR_XSTRORM_INTMEM +
		FUNC9(port), 1);
	FUNC1(dev, BAR_XSTRORM_INTMEM +
		FUNC10(port),
		DEF_MAX_DA_COUNT);

	FUNC3(dev, BAR_XSTRORM_INTMEM +
		 FUNC8(pfid), DEF_TTL);
	FUNC3(dev, BAR_XSTRORM_INTMEM +
		 FUNC7(pfid), DEF_TOS);
	FUNC3(dev, BAR_XSTRORM_INTMEM +
		 FUNC6(pfid), 2);
	FUNC1(dev, BAR_XSTRORM_INTMEM +
		FUNC11(pfid), DEF_SWS_TIMER);

	FUNC1(dev, BAR_TSTRORM_INTMEM + FUNC4(pfid),
		DEF_MAX_CWND);
	return 0;
}