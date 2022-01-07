
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zorro_device_id {int dummy; } ;
struct TYPE_2__ {int start; } ;
struct zorro_dev {TYPE_1__ resource; } ;


 int EBUSY ;
 int hydra_init (struct zorro_dev*) ;
 int release_mem_region (int ,int) ;
 int request_mem_region (int ,int,char*) ;

__attribute__((used)) static int hydra_init_one(struct zorro_dev *z,
     const struct zorro_device_id *ent)
{
    int err;

    if (!request_mem_region(z->resource.start, 0x10000, "Hydra"))
 return -EBUSY;
    if ((err = hydra_init(z))) {
 release_mem_region(z->resource.start, 0x10000);
 return -EBUSY;
    }
    return 0;
}
