#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ucc_tdm {int tdm_port; TYPE_1__* si_regs; } ;
struct ucc_hdlc_private {scalar_t__ hdlc_busy; TYPE_3__* ut_info; int /*<<< orphan*/  uccf; scalar_t__ tsa; int /*<<< orphan*/  napi; struct ucc_tdm* utdm; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {struct ucc_hdlc_private* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  irq; int /*<<< orphan*/  ucc_num; } ;
struct TYPE_7__ {TYPE_2__ uf_info; } ;
struct TYPE_5__ {int siglmr1_h; } ;

/* Variables and functions */
 int COMM_DIR_RX ; 
 int COMM_DIR_TX ; 
 int /*<<< orphan*/  QE_CLOSE_RX_BD ; 
 scalar_t__ QE_CR_PROTOCOL_UNSPECIFIED ; 
 int /*<<< orphan*/  QE_GRACEFUL_STOP_TX ; 
 TYPE_4__* FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ucc_hdlc_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev)
{
	struct ucc_hdlc_private *priv = FUNC0(dev)->priv;
	struct ucc_tdm *utdm = priv->utdm;
	u32 cecr_subblock;

	FUNC2(&priv->napi);
	cecr_subblock = FUNC7(
				priv->ut_info->uf_info.ucc_num);

	FUNC5(QE_GRACEFUL_STOP_TX, cecr_subblock,
		     (u8)QE_CR_PROTOCOL_UNSPECIFIED, 0);
	FUNC5(QE_CLOSE_RX_BD, cecr_subblock,
		     (u8)QE_CR_PROTOCOL_UNSPECIFIED, 0);

	if (priv->tsa)
		utdm->si_regs->siglmr1_h &= ~(0x1 << utdm->tdm_port);

	FUNC6(priv->uccf, COMM_DIR_RX | COMM_DIR_TX);

	FUNC1(priv->ut_info->uf_info.irq, priv);
	FUNC4(dev);
	FUNC3(dev);
	priv->hdlc_busy = 0;

	return 0;
}