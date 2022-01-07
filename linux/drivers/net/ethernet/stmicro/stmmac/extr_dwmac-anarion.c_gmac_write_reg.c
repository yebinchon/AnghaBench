
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
struct anarion_gmac {scalar_t__ ctl_block; } ;


 int writel (int ,void*) ;

__attribute__((used)) static void gmac_write_reg(struct anarion_gmac *gmac, uint8_t reg, uint32_t val)
{
 writel(val, (void *)(gmac->ctl_block + reg));
}
