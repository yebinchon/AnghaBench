
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_cl_device {int me_cl; int name; int dev; } ;


 int dev_set_name (int *,char*,int ,int ,int ) ;
 int mei_me_cl_uuid (int ) ;
 int mei_me_cl_ver (int ) ;

__attribute__((used)) static inline void mei_cl_bus_set_name(struct mei_cl_device *cldev)
{
 dev_set_name(&cldev->dev, "mei:%s:%pUl:%02X",
       cldev->name,
       mei_me_cl_uuid(cldev->me_cl),
       mei_me_cl_ver(cldev->me_cl));
}
