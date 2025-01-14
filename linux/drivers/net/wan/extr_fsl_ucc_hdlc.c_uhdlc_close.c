
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct ucc_tdm {int tdm_port; TYPE_1__* si_regs; } ;
struct ucc_hdlc_private {scalar_t__ hdlc_busy; TYPE_3__* ut_info; int uccf; scalar_t__ tsa; int napi; struct ucc_tdm* utdm; } ;
struct net_device {int dummy; } ;
struct TYPE_8__ {struct ucc_hdlc_private* priv; } ;
struct TYPE_6__ {int irq; int ucc_num; } ;
struct TYPE_7__ {TYPE_2__ uf_info; } ;
struct TYPE_5__ {int siglmr1_h; } ;


 int COMM_DIR_RX ;
 int COMM_DIR_TX ;
 int QE_CLOSE_RX_BD ;
 scalar_t__ QE_CR_PROTOCOL_UNSPECIFIED ;
 int QE_GRACEFUL_STOP_TX ;
 TYPE_4__* dev_to_hdlc (struct net_device*) ;
 int free_irq (int ,struct ucc_hdlc_private*) ;
 int napi_disable (int *) ;
 int netdev_reset_queue (struct net_device*) ;
 int netif_stop_queue (struct net_device*) ;
 int qe_issue_cmd (int ,int ,int ,int ) ;
 int ucc_fast_disable (int ,int) ;
 int ucc_fast_get_qe_cr_subblock (int ) ;

__attribute__((used)) static int uhdlc_close(struct net_device *dev)
{
 struct ucc_hdlc_private *priv = dev_to_hdlc(dev)->priv;
 struct ucc_tdm *utdm = priv->utdm;
 u32 cecr_subblock;

 napi_disable(&priv->napi);
 cecr_subblock = ucc_fast_get_qe_cr_subblock(
    priv->ut_info->uf_info.ucc_num);

 qe_issue_cmd(QE_GRACEFUL_STOP_TX, cecr_subblock,
       (u8)QE_CR_PROTOCOL_UNSPECIFIED, 0);
 qe_issue_cmd(QE_CLOSE_RX_BD, cecr_subblock,
       (u8)QE_CR_PROTOCOL_UNSPECIFIED, 0);

 if (priv->tsa)
  utdm->si_regs->siglmr1_h &= ~(0x1 << utdm->tdm_port);

 ucc_fast_disable(priv->uccf, COMM_DIR_RX | COMM_DIR_TX);

 free_irq(priv->ut_info->uf_info.irq, priv);
 netif_stop_queue(dev);
 netdev_reset_queue(dev);
 priv->hdlc_busy = 0;

 return 0;
}
