
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct xsdfec_dev {scalar_t__ regs; int dev; } ;


 int dev_dbg (int ,char*,scalar_t__,scalar_t__) ;
 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void xsdfec_regwrite(struct xsdfec_dev *xsdfec, u32 addr,
       u32 value)
{
 dev_dbg(xsdfec->dev, "Writing 0x%x to offset 0x%x", value, addr);
 iowrite32(value, xsdfec->regs + addr);
}
