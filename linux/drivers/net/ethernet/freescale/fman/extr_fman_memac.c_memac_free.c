
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct fman_mac {struct fman_mac* memac_drv_param; TYPE_2__* pcsphy; } ;
struct TYPE_3__ {int dev; } ;
struct TYPE_4__ {TYPE_1__ mdio; } ;


 int free_init_resources (struct fman_mac*) ;
 int kfree (struct fman_mac*) ;
 int put_device (int *) ;

int memac_free(struct fman_mac *memac)
{
 free_init_resources(memac);

 if (memac->pcsphy)
  put_device(&memac->pcsphy->mdio.dev);

 kfree(memac->memac_drv_param);
 kfree(memac);

 return 0;
}
