
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct slic_upr {scalar_t__ type; int paddr; } ;
struct slic_device {int dummy; } ;


 int SLIC_REG_LSTAT ;
 int SLIC_REG_RCONFIG ;
 scalar_t__ SLIC_UPR_CONFIG ;
 int lower_32_bits (int ) ;
 int slic_flush_write (struct slic_device*) ;
 int slic_write (struct slic_device*,int ,int ) ;

__attribute__((used)) static void slic_start_upr(struct slic_device *sdev, struct slic_upr *upr)
{
 u32 reg;

 reg = (upr->type == SLIC_UPR_CONFIG) ? SLIC_REG_RCONFIG :
            SLIC_REG_LSTAT;
 slic_write(sdev, reg, lower_32_bits(upr->paddr));
 slic_flush_write(sdev);
}
