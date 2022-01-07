
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct xsdfec_dev {scalar_t__ state; int dev; } ;


 int XSDFEC_AXIS_ENABLE_ADDR ;
 int XSDFEC_AXIS_IN_ENABLE_MASK ;
 scalar_t__ XSDFEC_STARTED ;
 scalar_t__ XSDFEC_STOPPED ;
 int dev_dbg (int ,char*) ;
 int xsdfec_regread (struct xsdfec_dev*,int ) ;
 int xsdfec_regwrite (struct xsdfec_dev*,int ,int ) ;

__attribute__((used)) static int xsdfec_stop(struct xsdfec_dev *xsdfec)
{
 u32 regread;

 if (xsdfec->state != XSDFEC_STARTED)
  dev_dbg(xsdfec->dev, "Device not started correctly");

 regread = xsdfec_regread(xsdfec, XSDFEC_AXIS_ENABLE_ADDR);
 regread &= (~XSDFEC_AXIS_IN_ENABLE_MASK);
 xsdfec_regwrite(xsdfec, XSDFEC_AXIS_ENABLE_ADDR, regread);

 xsdfec->state = XSDFEC_STOPPED;
 return 0;
}
