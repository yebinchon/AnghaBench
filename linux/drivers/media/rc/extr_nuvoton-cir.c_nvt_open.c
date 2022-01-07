
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct nvt_dev* priv; } ;
struct nvt_dev {int dummy; } ;


 int nvt_enable_cir (struct nvt_dev*) ;

__attribute__((used)) static int nvt_open(struct rc_dev *dev)
{
 struct nvt_dev *nvt = dev->priv;

 nvt_enable_cir(nvt);

 return 0;
}
