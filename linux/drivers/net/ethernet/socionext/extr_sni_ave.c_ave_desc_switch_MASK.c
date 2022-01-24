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
struct net_device {int dummy; } ;
struct ave_private {scalar_t__ base; } ;
typedef  enum desc_state { ____Placeholder_desc_state } desc_state ;

/* Variables and functions */
 scalar_t__ AVE_DESCC ; 
 int AVE_DESCC_RD0 ; 
 int AVE_DESCC_RDSTP ; 
 int AVE_DESCC_STATUS_MASK ; 
 int AVE_DESCC_TD ; 
#define  AVE_DESC_RX_PERMIT 131 
#define  AVE_DESC_RX_SUSPEND 130 
#define  AVE_DESC_START 129 
#define  AVE_DESC_STOP 128 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*) ; 
 struct ave_private* FUNC1 (struct net_device*) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, enum desc_state state)
{
	struct ave_private *priv = FUNC1(ndev);
	int ret = 0;
	u32 val;

	switch (state) {
	case AVE_DESC_START:
		FUNC4(AVE_DESCC_TD | AVE_DESCC_RD0, priv->base + AVE_DESCC);
		break;

	case AVE_DESC_STOP:
		FUNC4(0, priv->base + AVE_DESCC);
		if (FUNC3(priv->base + AVE_DESCC, val, !val,
				       150, 15000)) {
			FUNC0(ndev, "can't stop descriptor\n");
			ret = -EBUSY;
		}
		break;

	case AVE_DESC_RX_SUSPEND:
		val = FUNC2(priv->base + AVE_DESCC);
		val |= AVE_DESCC_RDSTP;
		val &= ~AVE_DESCC_STATUS_MASK;
		FUNC4(val, priv->base + AVE_DESCC);
		if (FUNC3(priv->base + AVE_DESCC, val,
				       val & (AVE_DESCC_RDSTP << 16),
				       150, 150000)) {
			FUNC0(ndev, "can't suspend descriptor\n");
			ret = -EBUSY;
		}
		break;

	case AVE_DESC_RX_PERMIT:
		val = FUNC2(priv->base + AVE_DESCC);
		val &= ~AVE_DESCC_RDSTP;
		val &= ~AVE_DESCC_STATUS_MASK;
		FUNC4(val, priv->base + AVE_DESCC);
		break;

	default:
		ret = -EINVAL;
		break;
	}

	return ret;
}