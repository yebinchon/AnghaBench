
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ base_addr; } ;
struct vpfe_ccdc {TYPE_1__ ccdc_cfg; } ;


 scalar_t__ ioread32 (scalar_t__) ;

__attribute__((used)) static inline u32 vpfe_reg_read(struct vpfe_ccdc *ccdc, u32 offset)
{
 return ioread32(ccdc->ccdc_cfg.base_addr + offset);
}
