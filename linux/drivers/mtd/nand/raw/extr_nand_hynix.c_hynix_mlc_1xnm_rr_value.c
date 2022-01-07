
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int NAND_HYNIX_1XNM_RR_REPEAT ;
 int NAND_HYNIX_1XNM_RR_SET_OFFS (int,int,int) ;
 int hynix_get_majority (int *,int,int *) ;

__attribute__((used)) static int hynix_mlc_1xnm_rr_value(const u8 *buf, int nmodes, int nregs,
       int mode, int reg, bool inv, u8 *val)
{
 u8 tmp[NAND_HYNIX_1XNM_RR_REPEAT];
 int val_offs = (mode * nregs) + reg;
 int set_size = nmodes * nregs;
 int i, ret;

 for (i = 0; i < NAND_HYNIX_1XNM_RR_REPEAT; i++) {
  int set_offs = NAND_HYNIX_1XNM_RR_SET_OFFS(i, set_size, inv);

  tmp[i] = buf[val_offs + set_offs];
 }

 ret = hynix_get_majority(tmp, NAND_HYNIX_1XNM_RR_REPEAT, val);
 if (ret)
  return ret;

 if (inv)
  *val = ~*val;

 return 0;
}
