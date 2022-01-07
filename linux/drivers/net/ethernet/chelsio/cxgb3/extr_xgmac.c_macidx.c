
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cmac {int offset; } ;


 int XGMAC0_0_BASE_ADDR ;
 int XGMAC0_1_BASE_ADDR ;

__attribute__((used)) static inline int macidx(const struct cmac *mac)
{
 return mac->offset / (XGMAC0_1_BASE_ADDR - XGMAC0_0_BASE_ADDR);
}
