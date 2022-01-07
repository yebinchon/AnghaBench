
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;
struct e1000_adapter {struct e1000_hw hw; } ;


 int CTRL ;
 int CTRL_EXT ;
 int ERT ;
 int NUM_REGS ;
 int RCTL ;
 int RDBAH0 ;
 int RDBAL0 ;
 int RDFH ;
 int RDFHS ;
 int RDFPC ;
 int RDFT ;
 int RDFTS ;
 int RDH ;
 int RDLEN ;
 int RDT ;
 int RDTR ;
 int STATUS ;
 int TADV ;
 int TARC0 ;
 int TARC1 ;
 int TCTL ;
 int TDBAH ;
 int TDBAH1 ;
 int TDBAL ;
 int TDBAL1 ;
 int TDFH ;
 int TDFHS ;
 int TDFPC ;
 int TDFT ;
 int TDFTS ;
 int TDH ;
 int TDH1 ;
 int TDLEN ;
 int TDLEN1 ;
 int TDT ;
 int TDT1 ;
 int TIDV ;
 int TXDCTL ;
 int TXDCTL1 ;
 int er32 (int ) ;
 int pr_info (char*,...) ;

__attribute__((used)) static void e1000_regdump(struct e1000_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 regs[NUM_REGS];
 u32 *regs_buff = regs;
 int i = 0;

 static const char * const reg_name[] = {
  "CTRL", "STATUS",
  "RCTL", "RDLEN", "RDH", "RDT", "RDTR",
  "TCTL", "TDBAL", "TDBAH", "TDLEN", "TDH", "TDT",
  "TIDV", "TXDCTL", "TADV", "TARC0",
  "TDBAL1", "TDBAH1", "TDLEN1", "TDH1", "TDT1",
  "TXDCTL1", "TARC1",
  "CTRL_EXT", "ERT", "RDBAL", "RDBAH",
  "TDFH", "TDFT", "TDFHS", "TDFTS", "TDFPC",
  "RDFH", "RDFT", "RDFHS", "RDFTS", "RDFPC"
 };

 regs_buff[0] = er32(CTRL);
 regs_buff[1] = er32(STATUS);

 regs_buff[2] = er32(RCTL);
 regs_buff[3] = er32(RDLEN);
 regs_buff[4] = er32(RDH);
 regs_buff[5] = er32(RDT);
 regs_buff[6] = er32(RDTR);

 regs_buff[7] = er32(TCTL);
 regs_buff[8] = er32(TDBAL);
 regs_buff[9] = er32(TDBAH);
 regs_buff[10] = er32(TDLEN);
 regs_buff[11] = er32(TDH);
 regs_buff[12] = er32(TDT);
 regs_buff[13] = er32(TIDV);
 regs_buff[14] = er32(TXDCTL);
 regs_buff[15] = er32(TADV);
 regs_buff[16] = er32(TARC0);

 regs_buff[17] = er32(TDBAL1);
 regs_buff[18] = er32(TDBAH1);
 regs_buff[19] = er32(TDLEN1);
 regs_buff[20] = er32(TDH1);
 regs_buff[21] = er32(TDT1);
 regs_buff[22] = er32(TXDCTL1);
 regs_buff[23] = er32(TARC1);
 regs_buff[24] = er32(CTRL_EXT);
 regs_buff[25] = er32(ERT);
 regs_buff[26] = er32(RDBAL0);
 regs_buff[27] = er32(RDBAH0);
 regs_buff[28] = er32(TDFH);
 regs_buff[29] = er32(TDFT);
 regs_buff[30] = er32(TDFHS);
 regs_buff[31] = er32(TDFTS);
 regs_buff[32] = er32(TDFPC);
 regs_buff[33] = er32(RDFH);
 regs_buff[34] = er32(RDFT);
 regs_buff[35] = er32(RDFHS);
 regs_buff[36] = er32(RDFTS);
 regs_buff[37] = er32(RDFPC);

 pr_info("Register dump\n");
 for (i = 0; i < NUM_REGS; i++)
  pr_info("%-15s  %08x\n", reg_name[i], regs_buff[i]);
}
