
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct rcar_canfd_global {int base; scalar_t__ fdmode; } ;


 int RCANFD_CHANNEL_NUMRULES ;
 int RCANFD_C_GAFL_OFFSET ;
 int RCANFD_F_GAFL_OFFSET ;
 int RCANFD_GAFLCFG0 ;
 int RCANFD_GAFLCFG_GETRNC (int ,scalar_t__) ;
 int RCANFD_GAFLCFG_SETRNC (scalar_t__,int) ;
 int RCANFD_GAFLECTR ;
 int RCANFD_GAFLECTR_AFLDAE ;
 int RCANFD_GAFLECTR_AFLPN (int) ;
 int RCANFD_GAFLID (int,int) ;
 int RCANFD_GAFLM (int,int) ;
 int RCANFD_GAFLP0 (int,int) ;
 int RCANFD_GAFLP1 (int,int) ;
 int RCANFD_GAFLP1_GAFLFDP (scalar_t__) ;
 int RCANFD_GAFL_PAGENUM (int) ;
 scalar_t__ RCANFD_RFFIFO_IDX ;
 int rcar_canfd_clear_bit (int ,int ,int) ;
 scalar_t__ rcar_canfd_read (int ,int ) ;
 int rcar_canfd_set_bit (int ,int ,int) ;
 int rcar_canfd_write (int ,int ,int ) ;

__attribute__((used)) static void rcar_canfd_configure_afl_rules(struct rcar_canfd_global *gpriv,
        u32 ch)
{
 u32 cfg;
 int offset, start, page, num_rules = RCANFD_CHANNEL_NUMRULES;
 u32 ridx = ch + RCANFD_RFFIFO_IDX;

 if (ch == 0) {
  start = 0;
 } else {

  cfg = rcar_canfd_read(gpriv->base, RCANFD_GAFLCFG0);
  start = RCANFD_GAFLCFG_GETRNC(0, cfg);
 }


 page = RCANFD_GAFL_PAGENUM(start);
 rcar_canfd_set_bit(gpriv->base, RCANFD_GAFLECTR,
      (RCANFD_GAFLECTR_AFLPN(page) |
       RCANFD_GAFLECTR_AFLDAE));


 rcar_canfd_set_bit(gpriv->base, RCANFD_GAFLCFG0,
      RCANFD_GAFLCFG_SETRNC(ch, num_rules));
 if (gpriv->fdmode)
  offset = RCANFD_F_GAFL_OFFSET;
 else
  offset = RCANFD_C_GAFL_OFFSET;


 rcar_canfd_write(gpriv->base, RCANFD_GAFLID(offset, start), 0);

 rcar_canfd_write(gpriv->base, RCANFD_GAFLM(offset, start), 0);

 rcar_canfd_write(gpriv->base, RCANFD_GAFLP0(offset, start), 0);

 rcar_canfd_write(gpriv->base, RCANFD_GAFLP1(offset, start),
    RCANFD_GAFLP1_GAFLFDP(ridx));


 rcar_canfd_clear_bit(gpriv->base,
        RCANFD_GAFLECTR, RCANFD_GAFLECTR_AFLDAE);
}
