
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct isp_device {int dummy; } ;
typedef enum isp_mem_resources { ____Placeholder_isp_mem_resources } isp_mem_resources ;


 int isp_reg_readl (struct isp_device*,int,int) ;
 int isp_reg_writel (struct isp_device*,int,int,int) ;

__attribute__((used)) static inline
void isp_reg_clr(struct isp_device *isp, enum isp_mem_resources mmio_range,
   u32 reg, u32 clr_bits)
{
 u32 v = isp_reg_readl(isp, mmio_range, reg);

 isp_reg_writel(isp, v & ~clr_bits, mmio_range, reg);
}
