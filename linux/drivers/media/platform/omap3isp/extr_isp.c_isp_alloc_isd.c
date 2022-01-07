
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct isp_bus_cfg {int dummy; } ;
struct isp_async_subdev {struct isp_bus_cfg bus; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct isp_async_subdev* kzalloc (int,int ) ;

__attribute__((used)) static int isp_alloc_isd(struct isp_async_subdev **isd,
    struct isp_bus_cfg **buscfg)
{
 struct isp_async_subdev *__isd;

 __isd = kzalloc(sizeof(*__isd), GFP_KERNEL);
 if (!__isd)
  return -ENOMEM;

 *isd = __isd;
 *buscfg = &__isd->bus;

 return 0;
}
