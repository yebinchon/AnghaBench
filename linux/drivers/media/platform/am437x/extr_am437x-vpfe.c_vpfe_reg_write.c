
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base_addr; } ;
struct vpfe_ccdc {TYPE_1__ ccdc_cfg; } ;


 int iowrite32 (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void vpfe_reg_write(struct vpfe_ccdc *ccdc, u32 val, u32 offset)
{
 iowrite32(val, ccdc->ccdc_cfg.base_addr + offset);
}
