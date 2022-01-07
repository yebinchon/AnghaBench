
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ravb_private {scalar_t__ chip_id; } ;
struct net_device {int dummy; } ;


 int CCC ;
 int CCC_OPC ;
 int CCC_OPC_OPERATION ;
 int CIE ;
 int CIE_CL0M ;
 int CIE_CRIE ;
 int CIE_CTIE ;
 int DIL ;
 int RAVB_BE ;
 int RAVB_NC ;
 scalar_t__ RCAR_GEN3 ;
 int RCR ;
 int RCR_EFFS ;
 int RCR_ENCF ;
 int RCR_ESF ;
 int RCR_ETS0 ;
 int RIC0 ;
 int RIC0_FRE0 ;
 int RIC0_FRE1 ;
 int RIC1 ;
 int RIC2 ;
 int RIC2_QFE0 ;
 int RIC2_QFE1 ;
 int RIC2_RFFE ;
 int TCCR ;
 int TCCR_TFEN ;
 int TGC ;
 int TGC_TQP_AVBMODE1 ;
 int TIC ;
 int TIC_FTE0 ;
 int TIC_FTE1 ;
 int TIC_TFUE ;
 struct ravb_private* netdev_priv (struct net_device*) ;
 int ravb_config (struct net_device*) ;
 int ravb_modify (struct net_device*,int ,int ,int ) ;
 int ravb_ring_format (struct net_device*,int ) ;
 int ravb_ring_free (struct net_device*,int ) ;
 int ravb_ring_init (struct net_device*,int ) ;
 int ravb_write (struct net_device*,int,int ) ;

__attribute__((used)) static int ravb_dmac_init(struct net_device *ndev)
{
 struct ravb_private *priv = netdev_priv(ndev);
 int error;


 error = ravb_config(ndev);
 if (error)
  return error;

 error = ravb_ring_init(ndev, RAVB_BE);
 if (error)
  return error;
 error = ravb_ring_init(ndev, RAVB_NC);
 if (error) {
  ravb_ring_free(ndev, RAVB_BE);
  return error;
 }


 ravb_ring_format(ndev, RAVB_BE);
 ravb_ring_format(ndev, RAVB_NC);


 ravb_write(ndev,
     RCR_EFFS | RCR_ENCF | RCR_ETS0 | RCR_ESF | 0x18000000, RCR);


 ravb_write(ndev, TGC_TQP_AVBMODE1 | 0x00112200, TGC);


 ravb_write(ndev, TCCR_TFEN, TCCR);


 if (priv->chip_id == RCAR_GEN3) {

  ravb_write(ndev, 0, DIL);

  ravb_write(ndev, CIE_CRIE | CIE_CTIE | CIE_CL0M, CIE);
 }

 ravb_write(ndev, RIC0_FRE0 | RIC0_FRE1, RIC0);

 ravb_write(ndev, 0, RIC1);

 ravb_write(ndev, RIC2_QFE0 | RIC2_QFE1 | RIC2_RFFE, RIC2);

 ravb_write(ndev, TIC_FTE0 | TIC_FTE1 | TIC_TFUE, TIC);


 ravb_modify(ndev, CCC, CCC_OPC, CCC_OPC_OPERATION);

 return 0;
}
