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
struct TYPE_2__ {int flags; } ;
struct xcan_priv {int (* read_reg ) (struct xcan_priv*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* write_reg ) (struct xcan_priv*,int /*<<< orphan*/ ,int) ;TYPE_1__ devtype; } ;
struct net_device {int dummy; } ;
struct napi_struct {struct net_device* dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAN_LED_EVENT_RX ; 
 int XCAN_FLAG_RX_FIFO_MULTI ; 
 int XCAN_FSR_IRI_MASK ; 
 int /*<<< orphan*/  XCAN_FSR_OFFSET ; 
 int /*<<< orphan*/  XCAN_ICR_OFFSET ; 
 int /*<<< orphan*/  XCAN_IER_OFFSET ; 
 int XCAN_IXR_RXNEMP_MASK ; 
 int XCAN_IXR_RXOK_MASK ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct napi_struct*,int) ; 
 struct xcan_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC5 (struct xcan_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xcan_priv*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct net_device*,int) ; 
 int FUNC8 (struct xcan_priv*) ; 
 int FUNC9 (struct xcan_priv*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 scalar_t__ FUNC11 (struct net_device*,int) ; 

__attribute__((used)) static int FUNC12(struct napi_struct *napi, int quota)
{
	struct net_device *ndev = napi->dev;
	struct xcan_priv *priv = FUNC2(ndev);
	u32 ier;
	int work_done = 0;
	int frame_offset;

	while ((frame_offset = FUNC8(priv)) >= 0 &&
	       (work_done < quota)) {
		if (FUNC9(priv) & XCAN_IXR_RXOK_MASK)
			work_done += FUNC11(ndev, frame_offset);
		else
			work_done += FUNC7(ndev, frame_offset);

		if (priv->devtype.flags & XCAN_FLAG_RX_FIFO_MULTI)
			/* increment read index */
			priv->write_reg(priv, XCAN_FSR_OFFSET,
					XCAN_FSR_IRI_MASK);
		else
			/* clear rx-not-empty (will actually clear only if
			 * empty)
			 */
			priv->write_reg(priv, XCAN_ICR_OFFSET,
					XCAN_IXR_RXNEMP_MASK);
	}

	if (work_done) {
		FUNC0(ndev, CAN_LED_EVENT_RX);
		FUNC10(ndev);
	}

	if (work_done < quota) {
		FUNC1(napi, work_done);
		ier = priv->read_reg(priv, XCAN_IER_OFFSET);
		ier |= FUNC9(priv);
		priv->write_reg(priv, XCAN_IER_OFFSET, ier);
	}
	return work_done;
}