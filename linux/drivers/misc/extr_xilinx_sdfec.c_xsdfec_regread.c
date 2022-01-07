
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xsdfec_dev {int dev; scalar_t__ regs; } ;


 int dev_dbg (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 xsdfec_regread(struct xsdfec_dev *xsdfec, u32 addr)
{
 u32 rval;

 rval = ioread32(xsdfec->regs + addr);
 dev_dbg(xsdfec->dev, "Read value = 0x%x from offset 0x%x", rval, addr);
 return rval;
}
