
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int member_0; int member_1; int member_2; int member_3; int member_4; } ;
struct mc7_timing_params {int member_0; int member_1; int member_2; int member_4; int member_5; int member_6; int RdToWrDly; int WrToRdDly; int BkCyc; int * RefCyc; int PreCyc; int ActToRdWrDly; int ActToPreDly; TYPE_1__ member_3; } ;
struct mc7 {unsigned int size; scalar_t__ offset; int name; struct adapter* adapter; } ;
struct adapter {int dummy; } ;


 scalar_t__ A_MC7_BIST_ADDR_BEG ;
 scalar_t__ A_MC7_BIST_ADDR_END ;
 scalar_t__ A_MC7_BIST_DATA ;
 scalar_t__ A_MC7_BIST_OP ;
 scalar_t__ A_MC7_CAL ;
 scalar_t__ A_MC7_CFG ;
 scalar_t__ A_MC7_DLL ;
 scalar_t__ A_MC7_ECC ;
 scalar_t__ A_MC7_EXT_MODE1 ;
 scalar_t__ A_MC7_EXT_MODE2 ;
 scalar_t__ A_MC7_EXT_MODE3 ;
 scalar_t__ A_MC7_MODE ;
 scalar_t__ A_MC7_PARM ;
 scalar_t__ A_MC7_PRE ;
 scalar_t__ A_MC7_REF ;
 int CH_ERR (struct adapter*,char*,int ) ;
 int F_BUSY ;
 int F_CAL_FAULT ;
 int F_CLKEN ;
 int F_DLLENB ;
 int F_DLLRST ;
 unsigned int F_ECCCHKEN ;
 unsigned int F_ECCGENEN ;
 int F_IFEN ;
 unsigned int F_PERREFEN ;
 int F_RDY ;
 int F_SGL_CAL_EN ;
 int F_SLOW ;
 int F_TERM150 ;
 unsigned int G_DEN (int) ;
 unsigned int G_WIDTH (int) ;
 unsigned int V_ACTTOPREDLY (int ) ;
 unsigned int V_ACTTORDWRDLY (int ) ;
 unsigned int V_BKCYC (int ) ;
 unsigned int V_OP (int) ;
 unsigned int V_PRECYC (int ) ;
 unsigned int V_PREREFDIV (unsigned int) ;
 unsigned int V_RDTOWRDLY (int ) ;
 unsigned int V_REFCYC (int ) ;
 unsigned int V_WRTORDDLY (int ) ;
 int msleep (int) ;
 int t3_read_reg (struct adapter*,scalar_t__) ;
 int t3_set_reg_field (struct adapter*,scalar_t__,int ,int ) ;
 int t3_write_reg (struct adapter*,scalar_t__,unsigned int) ;
 int udelay (int) ;
 scalar_t__ wrreg_wait (struct adapter*,scalar_t__,unsigned int const) ;

__attribute__((used)) static int mc7_init(struct mc7 *mc7, unsigned int mc7_clock, int mem_type)
{
 static const unsigned int mc7_mode[] = {
  0x632, 0x642, 0x652, 0x432, 0x442
 };
 static const struct mc7_timing_params mc7_timings[] = {
  {12, 3, 4, {20, 28, 34, 52, 0}, 15, 6, 4},
  {12, 4, 5, {20, 28, 34, 52, 0}, 16, 7, 4},
  {12, 5, 6, {20, 28, 34, 52, 0}, 17, 8, 4},
  {9, 3, 4, {15, 21, 26, 39, 0}, 12, 6, 4},
  {9, 4, 5, {15, 21, 26, 39, 0}, 13, 7, 4}
 };

 u32 val;
 unsigned int width, density, slow, attempts;
 struct adapter *adapter = mc7->adapter;
 const struct mc7_timing_params *p = &mc7_timings[mem_type];

 if (!mc7->size)
  return 0;

 val = t3_read_reg(adapter, mc7->offset + A_MC7_CFG);
 slow = val & F_SLOW;
 width = G_WIDTH(val);
 density = G_DEN(val);

 t3_write_reg(adapter, mc7->offset + A_MC7_CFG, val | F_IFEN);
 val = t3_read_reg(adapter, mc7->offset + A_MC7_CFG);
 msleep(1);

 if (!slow) {
  t3_write_reg(adapter, mc7->offset + A_MC7_CAL, F_SGL_CAL_EN);
  t3_read_reg(adapter, mc7->offset + A_MC7_CAL);
  msleep(1);
  if (t3_read_reg(adapter, mc7->offset + A_MC7_CAL) &
      (F_BUSY | F_SGL_CAL_EN | F_CAL_FAULT)) {
   CH_ERR(adapter, "%s MC7 calibration timed out\n",
          mc7->name);
   goto out_fail;
  }
 }

 t3_write_reg(adapter, mc7->offset + A_MC7_PARM,
       V_ACTTOPREDLY(p->ActToPreDly) |
       V_ACTTORDWRDLY(p->ActToRdWrDly) | V_PRECYC(p->PreCyc) |
       V_REFCYC(p->RefCyc[density]) | V_BKCYC(p->BkCyc) |
       V_WRTORDDLY(p->WrToRdDly) | V_RDTOWRDLY(p->RdToWrDly));

 t3_write_reg(adapter, mc7->offset + A_MC7_CFG,
       val | F_CLKEN | F_TERM150);
 t3_read_reg(adapter, mc7->offset + A_MC7_CFG);

 if (!slow)
  t3_set_reg_field(adapter, mc7->offset + A_MC7_DLL, F_DLLENB,
     F_DLLENB);
 udelay(1);

 val = slow ? 3 : 6;
 if (wrreg_wait(adapter, mc7->offset + A_MC7_PRE, 0) ||
     wrreg_wait(adapter, mc7->offset + A_MC7_EXT_MODE2, 0) ||
     wrreg_wait(adapter, mc7->offset + A_MC7_EXT_MODE3, 0) ||
     wrreg_wait(adapter, mc7->offset + A_MC7_EXT_MODE1, val))
  goto out_fail;

 if (!slow) {
  t3_write_reg(adapter, mc7->offset + A_MC7_MODE, 0x100);
  t3_set_reg_field(adapter, mc7->offset + A_MC7_DLL, F_DLLRST, 0);
  udelay(5);
 }

 if (wrreg_wait(adapter, mc7->offset + A_MC7_PRE, 0) ||
     wrreg_wait(adapter, mc7->offset + A_MC7_REF, 0) ||
     wrreg_wait(adapter, mc7->offset + A_MC7_REF, 0) ||
     wrreg_wait(adapter, mc7->offset + A_MC7_MODE,
         mc7_mode[mem_type]) ||
     wrreg_wait(adapter, mc7->offset + A_MC7_EXT_MODE1, val | 0x380) ||
     wrreg_wait(adapter, mc7->offset + A_MC7_EXT_MODE1, val))
  goto out_fail;


 mc7_clock = mc7_clock * 7812 + mc7_clock / 2;
 mc7_clock /= 1000000;

 t3_write_reg(adapter, mc7->offset + A_MC7_REF,
       F_PERREFEN | V_PREREFDIV(mc7_clock));
 t3_read_reg(adapter, mc7->offset + A_MC7_REF);

 t3_write_reg(adapter, mc7->offset + A_MC7_ECC, F_ECCGENEN | F_ECCCHKEN);
 t3_write_reg(adapter, mc7->offset + A_MC7_BIST_DATA, 0);
 t3_write_reg(adapter, mc7->offset + A_MC7_BIST_ADDR_BEG, 0);
 t3_write_reg(adapter, mc7->offset + A_MC7_BIST_ADDR_END,
       (mc7->size << width) - 1);
 t3_write_reg(adapter, mc7->offset + A_MC7_BIST_OP, V_OP(1));
 t3_read_reg(adapter, mc7->offset + A_MC7_BIST_OP);

 attempts = 50;
 do {
  msleep(250);
  val = t3_read_reg(adapter, mc7->offset + A_MC7_BIST_OP);
 } while ((val & F_BUSY) && --attempts);
 if (val & F_BUSY) {
  CH_ERR(adapter, "%s MC7 BIST timed out\n", mc7->name);
  goto out_fail;
 }


 t3_set_reg_field(adapter, mc7->offset + A_MC7_CFG, 0, F_RDY);
 return 0;

out_fail:
 return -1;
}
