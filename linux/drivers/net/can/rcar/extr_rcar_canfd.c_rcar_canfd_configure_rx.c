
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rcar_canfd_global {int base; scalar_t__ fdmode; } ;


 int RCANFD_RFCC (int) ;
 int RCANFD_RFCC_RFDC (int) ;
 int RCANFD_RFCC_RFIE ;
 int RCANFD_RFCC_RFIM ;
 int RCANFD_RFCC_RFPLS (int) ;
 int RCANFD_RFFIFO_IDX ;
 int rcar_canfd_write (int ,int ,int) ;

__attribute__((used)) static void rcar_canfd_configure_rx(struct rcar_canfd_global *gpriv, u32 ch)
{

 u32 cfg;
 u16 rfdc, rfpls;


 u32 ridx = ch + RCANFD_RFFIFO_IDX;

 rfdc = 2;
 if (gpriv->fdmode)
  rfpls = 7;
 else
  rfpls = 0;

 cfg = (RCANFD_RFCC_RFIM | RCANFD_RFCC_RFDC(rfdc) |
  RCANFD_RFCC_RFPLS(rfpls) | RCANFD_RFCC_RFIE);
 rcar_canfd_write(gpriv->base, RCANFD_RFCC(ridx), cfg);
}
