
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int link_paddr; } ;
struct slic_device {TYPE_1__ shmem; } ;


 int SLIC_UPR_LSTAT ;
 int slic_new_upr (struct slic_device*,int ,int ) ;

__attribute__((used)) static int slic_handle_link_change(struct slic_device *sdev)
{
 return slic_new_upr(sdev, SLIC_UPR_LSTAT, sdev->shmem.link_paddr);
}
