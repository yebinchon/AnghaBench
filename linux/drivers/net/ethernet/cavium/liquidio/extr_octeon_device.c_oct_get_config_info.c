
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct octeon_device {TYPE_1__* pci_dev; } ;
struct TYPE_2__ {int dev; } ;


 void* __retrieve_octeon_config_info (struct octeon_device*,int ) ;
 scalar_t__ __verify_octeon_config_info (struct octeon_device*,void*) ;
 int dev_err (int *,char*) ;

void *oct_get_config_info(struct octeon_device *oct, u16 card_type)
{
 void *conf = ((void*)0);

 conf = __retrieve_octeon_config_info(oct, card_type);
 if (!conf)
  return ((void*)0);

 if (__verify_octeon_config_info(oct, conf)) {
  dev_err(&oct->pci_dev->dev, "Configuration verification failed\n");
  return ((void*)0);
 }

 return conf;
}
