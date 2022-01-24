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
struct ti_hecc_priv {int dummy; } ;
struct can_rx_offload {int dummy; } ;
struct can_frame {int can_id; int can_dlc; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 int FUNC0 (unsigned int) ; 
 int CAN_EFF_FLAG ; 
 int CAN_EFF_MASK ; 
 int CAN_RTR_FLAG ; 
 int CAN_SFF_MASK ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  HECC_CANMCF ; 
 int HECC_CANMCF_RTR ; 
 int /*<<< orphan*/  HECC_CANMDH ; 
 int /*<<< orphan*/  HECC_CANMDL ; 
 int /*<<< orphan*/  HECC_CANMID ; 
 int HECC_CANMID_IDE ; 
 int /*<<< orphan*/  HECC_CANRML ; 
 int /*<<< orphan*/  HECC_CANRMP ; 
 unsigned int HECC_RX_LAST_MBOX ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (struct ti_hecc_priv*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ti_hecc_priv*,unsigned int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct ti_hecc_priv*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ti_hecc_priv*,int /*<<< orphan*/ ,int) ; 
 struct ti_hecc_priv* FUNC7 (struct can_rx_offload*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static unsigned int FUNC9(struct can_rx_offload *offload,
					 struct can_frame *cf,
					 u32 *timestamp, unsigned int mbxno)
{
	struct ti_hecc_priv *priv = FUNC7(offload);
	u32 data, mbx_mask;
	int ret = 1;

	mbx_mask = FUNC0(mbxno);
	data = FUNC4(priv, mbxno, HECC_CANMID);
	if (data & HECC_CANMID_IDE)
		cf->can_id = (data & CAN_EFF_MASK) | CAN_EFF_FLAG;
	else
		cf->can_id = (data >> 18) & CAN_SFF_MASK;

	data = FUNC4(priv, mbxno, HECC_CANMCF);
	if (data & HECC_CANMCF_RTR)
		cf->can_id |= CAN_RTR_FLAG;
	cf->can_dlc = FUNC2(data & 0xF);

	data = FUNC4(priv, mbxno, HECC_CANMDL);
	*(__be32 *)(cf->data) = FUNC1(data);
	if (cf->can_dlc > 4) {
		data = FUNC4(priv, mbxno, HECC_CANMDH);
		*(__be32 *)(cf->data + 4) = FUNC1(data);
	}

	*timestamp = FUNC5(priv, mbxno);

	/* Check for FIFO overrun.
	 *
	 * All but the last RX mailbox have activated overwrite
	 * protection. So skip check for overrun, if we're not
	 * handling the last RX mailbox.
	 *
	 * As the overwrite protection for the last RX mailbox is
	 * disabled, the CAN core might update while we're reading
	 * it. This means the skb might be inconsistent.
	 *
	 * Return an error to let rx-offload discard this CAN frame.
	 */
	if (FUNC8(mbxno == HECC_RX_LAST_MBOX &&
		     FUNC3(priv, HECC_CANRML) & mbx_mask))
		ret = -ENOBUFS;

	FUNC6(priv, HECC_CANRMP, mbx_mask);

	return ret;
}