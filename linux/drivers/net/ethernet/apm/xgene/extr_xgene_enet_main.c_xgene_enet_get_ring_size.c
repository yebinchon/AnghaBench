
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;
typedef enum xgene_enet_ring_cfgsize { ____Placeholder_xgene_enet_ring_cfgsize } xgene_enet_ring_cfgsize ;


 int EINVAL ;





 int dev_err (struct device*,char*,int) ;

__attribute__((used)) static int xgene_enet_get_ring_size(struct device *dev,
        enum xgene_enet_ring_cfgsize cfgsize)
{
 int size = -EINVAL;

 switch (cfgsize) {
 case 130:
  size = 0x200;
  break;
 case 131:
  size = 0x800;
  break;
 case 132:
  size = 0x4000;
  break;
 case 128:
  size = 0x10000;
  break;
 case 129:
  size = 0x80000;
  break;
 default:
  dev_err(dev, "Unsupported cfg ring size %d\n", cfgsize);
  break;
 }

 return size;
}
