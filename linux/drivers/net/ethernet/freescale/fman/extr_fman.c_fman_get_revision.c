
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct fman_rev_info {int minor; scalar_t__ major; } ;
struct fman {TYPE_1__* fpm_regs; } ;
struct TYPE_2__ {int fm_ip_rev_1; } ;


 int FPM_REV1_MAJOR_MASK ;
 int FPM_REV1_MAJOR_SHIFT ;
 int FPM_REV1_MINOR_MASK ;
 int ioread32be (int *) ;

void fman_get_revision(struct fman *fman, struct fman_rev_info *rev_info)
{
 u32 tmp;

 tmp = ioread32be(&fman->fpm_regs->fm_ip_rev_1);
 rev_info->major = (u8)((tmp & FPM_REV1_MAJOR_MASK) >>
    FPM_REV1_MAJOR_SHIFT);
 rev_info->minor = tmp & FPM_REV1_MINOR_MASK;
}
