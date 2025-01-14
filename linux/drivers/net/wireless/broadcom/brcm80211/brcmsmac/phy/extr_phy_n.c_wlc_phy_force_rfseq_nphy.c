
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u16 ;
struct brcms_phy {int dummy; } ;
 int NPHY_RfseqMode_CoreActv_override ;
 int NPHY_RfseqMode_Trigger_override ;
 int NPHY_RfseqStatus_reset2rx ;
 int NPHY_RfseqStatus_rx2tx ;
 int NPHY_RfseqStatus_tx2rx ;
 int NPHY_RfseqStatus_updategainh ;
 int NPHY_RfseqStatus_updategainl ;
 int NPHY_RfseqStatus_updategainu ;
 int NPHY_RfseqTrigger_reset2rx ;
 int NPHY_RfseqTrigger_rx2tx ;
 int NPHY_RfseqTrigger_tx2rx ;
 int NPHY_RfseqTrigger_updategainh ;
 int NPHY_RfseqTrigger_updategainl ;
 int NPHY_RfseqTrigger_updategainu ;
 int SPINWAIT (int,int) ;
 int WARN (int,char*) ;
 int or_phy_reg (struct brcms_phy*,int,int) ;
 int read_phy_reg (struct brcms_phy*,int) ;
 int write_phy_reg (struct brcms_phy*,int,int) ;

void wlc_phy_force_rfseq_nphy(struct brcms_phy *pi, u8 cmd)
{
 u16 trigger_mask, status_mask;
 u16 orig_RfseqCoreActv;

 switch (cmd) {
 case 132:
  trigger_mask = NPHY_RfseqTrigger_rx2tx;
  status_mask = NPHY_RfseqStatus_rx2tx;
  break;
 case 131:
  trigger_mask = NPHY_RfseqTrigger_tx2rx;
  status_mask = NPHY_RfseqStatus_tx2rx;
  break;
 case 133:
  trigger_mask = NPHY_RfseqTrigger_reset2rx;
  status_mask = NPHY_RfseqStatus_reset2rx;
  break;
 case 130:
  trigger_mask = NPHY_RfseqTrigger_updategainh;
  status_mask = NPHY_RfseqStatus_updategainh;
  break;
 case 129:
  trigger_mask = NPHY_RfseqTrigger_updategainl;
  status_mask = NPHY_RfseqStatus_updategainl;
  break;
 case 128:
  trigger_mask = NPHY_RfseqTrigger_updategainu;
  status_mask = NPHY_RfseqStatus_updategainu;
  break;
 default:
  return;
 }

 orig_RfseqCoreActv = read_phy_reg(pi, 0xa1);
 or_phy_reg(pi, 0xa1,
     (NPHY_RfseqMode_CoreActv_override |
      NPHY_RfseqMode_Trigger_override));
 or_phy_reg(pi, 0xa3, trigger_mask);
 SPINWAIT((read_phy_reg(pi, 0xa4) & status_mask), 200000);
 write_phy_reg(pi, 0xa1, orig_RfseqCoreActv);
 WARN(read_phy_reg(pi, 0xa4) & status_mask, "HW error in rf");
}
