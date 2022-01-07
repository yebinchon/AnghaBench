
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct rcar_canfd_global {int base; scalar_t__ fdmode; } ;


 int RCANFD_CFCC (int,int ) ;
 int RCANFD_CFCC_CFDC (int) ;
 int RCANFD_CFCC_CFIM ;
 int RCANFD_CFCC_CFM (int) ;
 int RCANFD_CFCC_CFPLS (int) ;
 int RCANFD_CFCC_CFTML (int) ;
 int RCANFD_CFCC_CFTXIE ;
 int RCANFD_CFFIFO_IDX ;
 int RCANFD_F_CFFDCSTS (int,int ) ;
 int rcar_canfd_write (int ,int ,int) ;

__attribute__((used)) static void rcar_canfd_configure_tx(struct rcar_canfd_global *gpriv, u32 ch)
{






 u32 cfg;
 u16 cftml, cfm, cfdc, cfpls;

 cftml = 0;
 cfm = 1;
 cfdc = 2;
 if (gpriv->fdmode)
  cfpls = 7;
 else
  cfpls = 0;

 cfg = (RCANFD_CFCC_CFTML(cftml) | RCANFD_CFCC_CFM(cfm) |
  RCANFD_CFCC_CFIM | RCANFD_CFCC_CFDC(cfdc) |
  RCANFD_CFCC_CFPLS(cfpls) | RCANFD_CFCC_CFTXIE);
 rcar_canfd_write(gpriv->base, RCANFD_CFCC(ch, RCANFD_CFFIFO_IDX), cfg);

 if (gpriv->fdmode)

  rcar_canfd_write(gpriv->base,
     RCANFD_F_CFFDCSTS(ch, RCANFD_CFFIFO_IDX), 0);
}
