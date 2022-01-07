
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct bdisp_dev* private; } ;
struct bdisp_dev {int dev; scalar_t__ regs; } ;


 int BLT_ACK ;
 int BLT_AQ1_CTL ;
 int BLT_AQ1_IP ;
 int BLT_AQ1_LNA ;
 int BLT_AQ1_STA ;
 int BLT_CIC ;
 int BLT_CTL ;
 int BLT_DEI ;
 int BLT_FCTL ;
 scalar_t__ BLT_HFC_N ;
 int BLT_HFP ;
 int BLT_INS ;
 int BLT_ITM0 ;
 int BLT_ITS ;
 int BLT_IVMX0 ;
 int BLT_IVMX1 ;
 int BLT_IVMX2 ;
 int BLT_IVMX3 ;
 unsigned int BLT_NB_H_COEF ;
 unsigned int BLT_NB_V_COEF ;
 int BLT_NIP ;
 int BLT_OVMX0 ;
 int BLT_OVMX1 ;
 int BLT_OVMX2 ;
 int BLT_OVMX3 ;
 int BLT_PLUGS1_CHZ ;
 int BLT_PLUGS1_MSZ ;
 int BLT_PLUGS1_OP2 ;
 int BLT_PLUGS1_PGZ ;
 int BLT_PLUGS2_CHZ ;
 int BLT_PLUGS2_MSZ ;
 int BLT_PLUGS2_OP2 ;
 int BLT_PLUGS2_PGZ ;
 int BLT_PLUGS3_CHZ ;
 int BLT_PLUGS3_MSZ ;
 int BLT_PLUGS3_OP2 ;
 int BLT_PLUGS3_PGZ ;
 int BLT_PLUGT_CHZ ;
 int BLT_PLUGT_MSZ ;
 int BLT_PLUGT_OP2 ;
 int BLT_PLUGT_PGZ ;
 int BLT_RSF ;
 int BLT_RZI ;
 int BLT_S1BA ;
 int BLT_S1TY ;
 int BLT_S1XY ;
 int BLT_S2BA ;
 int BLT_S2SZ ;
 int BLT_S2TY ;
 int BLT_S2XY ;
 int BLT_S3BA ;
 int BLT_S3SZ ;
 int BLT_S3TY ;
 int BLT_S3XY ;
 int BLT_STA1 ;
 int BLT_TBA ;
 int BLT_TSZ ;
 int BLT_TTY ;
 int BLT_TXY ;
 scalar_t__ BLT_VFC_N ;
 int BLT_VFP ;
 scalar_t__ BLT_Y_HFC_N ;
 int BLT_Y_HFP ;
 int BLT_Y_RSF ;
 int BLT_Y_RZI ;
 scalar_t__ BLT_Y_VFC_N ;
 int BLT_Y_VFP ;
 int DUMP (int ) ;
 int pm_runtime_get_sync (int ) ;
 int pm_runtime_put (int ) ;
 int readl (scalar_t__) ;
 int seq_printf (struct seq_file*,char*,unsigned int,...) ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static int regs_show(struct seq_file *s, void *data)
{
 struct bdisp_dev *bdisp = s->private;
 int ret;
 unsigned int i;

 ret = pm_runtime_get_sync(bdisp->dev);
 if (ret < 0) {
  seq_puts(s, "Cannot wake up IP\n");
  return 0;
 }

 seq_printf(s, "Reg @ = 0x%p\n", bdisp->regs);

 seq_puts(s, "\nStatic:\n");
 DUMP(BLT_CTL);
 DUMP(BLT_ITS);
 DUMP(BLT_STA1);
 DUMP(BLT_AQ1_CTL);
 DUMP(BLT_AQ1_IP);
 DUMP(BLT_AQ1_LNA);
 DUMP(BLT_AQ1_STA);
 DUMP(BLT_ITM0);

 seq_puts(s, "\nPlugs:\n");
 DUMP(BLT_PLUGS1_OP2);
 DUMP(BLT_PLUGS1_CHZ);
 DUMP(BLT_PLUGS1_MSZ);
 DUMP(BLT_PLUGS1_PGZ);
 DUMP(BLT_PLUGS2_OP2);
 DUMP(BLT_PLUGS2_CHZ);
 DUMP(BLT_PLUGS2_MSZ);
 DUMP(BLT_PLUGS2_PGZ);
 DUMP(BLT_PLUGS3_OP2);
 DUMP(BLT_PLUGS3_CHZ);
 DUMP(BLT_PLUGS3_MSZ);
 DUMP(BLT_PLUGS3_PGZ);
 DUMP(BLT_PLUGT_OP2);
 DUMP(BLT_PLUGT_CHZ);
 DUMP(BLT_PLUGT_MSZ);
 DUMP(BLT_PLUGT_PGZ);

 seq_puts(s, "\nNode:\n");
 DUMP(BLT_NIP);
 DUMP(BLT_CIC);
 DUMP(BLT_INS);
 DUMP(BLT_ACK);
 DUMP(BLT_TBA);
 DUMP(BLT_TTY);
 DUMP(BLT_TXY);
 DUMP(BLT_TSZ);
 DUMP(BLT_S1BA);
 DUMP(BLT_S1TY);
 DUMP(BLT_S1XY);
 DUMP(BLT_S2BA);
 DUMP(BLT_S2TY);
 DUMP(BLT_S2XY);
 DUMP(BLT_S2SZ);
 DUMP(BLT_S3BA);
 DUMP(BLT_S3TY);
 DUMP(BLT_S3XY);
 DUMP(BLT_S3SZ);
 DUMP(BLT_FCTL);
 DUMP(BLT_RSF);
 DUMP(BLT_RZI);
 DUMP(BLT_HFP);
 DUMP(BLT_VFP);
 DUMP(BLT_Y_RSF);
 DUMP(BLT_Y_RZI);
 DUMP(BLT_Y_HFP);
 DUMP(BLT_Y_VFP);
 DUMP(BLT_IVMX0);
 DUMP(BLT_IVMX1);
 DUMP(BLT_IVMX2);
 DUMP(BLT_IVMX3);
 DUMP(BLT_OVMX0);
 DUMP(BLT_OVMX1);
 DUMP(BLT_OVMX2);
 DUMP(BLT_OVMX3);
 DUMP(BLT_DEI);

 seq_puts(s, "\nFilter:\n");
 for (i = 0; i < BLT_NB_H_COEF; i++) {
  seq_printf(s, "BLT_HFC%d \t0x%08X\n", i,
      readl(bdisp->regs + BLT_HFC_N + i * 4));
 }
 for (i = 0; i < BLT_NB_V_COEF; i++) {
  seq_printf(s, "BLT_VFC%d \t0x%08X\n", i,
      readl(bdisp->regs + BLT_VFC_N + i * 4));
 }

 seq_puts(s, "\nLuma filter:\n");
 for (i = 0; i < BLT_NB_H_COEF; i++) {
  seq_printf(s, "BLT_Y_HFC%d \t0x%08X\n", i,
      readl(bdisp->regs + BLT_Y_HFC_N + i * 4));
 }
 for (i = 0; i < BLT_NB_V_COEF; i++) {
  seq_printf(s, "BLT_Y_VFC%d \t0x%08X\n", i,
      readl(bdisp->regs + BLT_Y_VFC_N + i * 4));
 }

 pm_runtime_put(bdisp->dev);

 return 0;
}
