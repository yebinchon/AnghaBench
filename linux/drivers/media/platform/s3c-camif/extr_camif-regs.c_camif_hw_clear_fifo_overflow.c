
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct camif_vp {scalar_t__ id; struct camif_dev* camif; } ;
struct camif_dev {int dummy; } ;


 int CIWDOFST_CLROVCOFICB ;
 int CIWDOFST_CLROVCOFICR ;
 int CIWDOFST_CLROVCOFIY ;
 int CIWDOFST_CLROVPRFICB ;
 int CIWDOFST_CLROVPRFICR ;
 int S3C_CAMIF_REG_CIWDOFST ;
 int camif_read (struct camif_dev*,int ) ;
 int camif_write (struct camif_dev*,int ,int) ;

void camif_hw_clear_fifo_overflow(struct camif_vp *vp)
{
 struct camif_dev *camif = vp->camif;
 u32 cfg;

 cfg = camif_read(camif, S3C_CAMIF_REG_CIWDOFST);
 if (vp->id == 0)
  cfg |= (CIWDOFST_CLROVCOFIY | CIWDOFST_CLROVCOFICB |
   CIWDOFST_CLROVCOFICR);
 else
  cfg |= ( CIWDOFST_CLROVPRFICB |
   CIWDOFST_CLROVPRFICR);
 camif_write(camif, S3C_CAMIF_REG_CIWDOFST, cfg);
}
