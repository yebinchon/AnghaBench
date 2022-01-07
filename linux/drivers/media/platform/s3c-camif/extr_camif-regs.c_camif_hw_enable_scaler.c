
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct camif_vp {int camif; int offset; int id; } ;


 int CISCCTRL_SCALERSTART ;
 int S3C_CAMIF_REG_CISCCTRL (int ,int ) ;
 int camif_read (int ,int ) ;
 int camif_write (int ,int ,int ) ;

void camif_hw_enable_scaler(struct camif_vp *vp, bool on)
{
 u32 addr = S3C_CAMIF_REG_CISCCTRL(vp->id, vp->offset);
 u32 cfg;

 cfg = camif_read(vp->camif, addr);
 if (on)
  cfg |= CISCCTRL_SCALERSTART;
 else
  cfg &= ~CISCCTRL_SCALERSTART;
 camif_write(vp->camif, addr, cfg);
}
