
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct board_info {scalar_t__ chip_term; } ;
struct adapter_params {scalar_t__ chip_version; int is_asic; int chip_revision; } ;
struct TYPE_3__ {scalar_t__ regs; } ;
typedef TYPE_1__ adapter_t ;


 scalar_t__ A_TP_PC_CONFIG ;
 scalar_t__ CHBT_TERM_FPGA ;
 scalar_t__ CHBT_TERM_T1 ;
 scalar_t__ CHBT_TERM_T2 ;
 int G_TP_PC_REV (int) ;
 int TERM_T1B ;
 int TERM_T2 ;
 int readl (scalar_t__) ;

int t1_get_board_rev(adapter_t *adapter, const struct board_info *bi,
       struct adapter_params *p)
{
 p->chip_version = bi->chip_term;
 p->is_asic = (p->chip_version != CHBT_TERM_FPGA);
 if (p->chip_version == CHBT_TERM_T1 ||
     p->chip_version == CHBT_TERM_T2 ||
     p->chip_version == CHBT_TERM_FPGA) {
  u32 val = readl(adapter->regs + A_TP_PC_CONFIG);

  val = G_TP_PC_REV(val);
  if (val == 2)
   p->chip_revision = TERM_T1B;
  else if (val == 3)
   p->chip_revision = TERM_T2;
  else
   return -1;
 } else
  return -1;
 return 0;
}
