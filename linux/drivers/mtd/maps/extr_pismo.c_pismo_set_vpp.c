
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int parent; } ;
struct platform_device {TYPE_1__ dev; } ;
struct pismo_data {int vpp_data; int (* vpp ) (int ,int) ;} ;
struct i2c_client {int dummy; } ;


 struct pismo_data* i2c_get_clientdata (struct i2c_client*) ;
 int stub1 (int ,int) ;
 struct i2c_client* to_i2c_client (int ) ;

__attribute__((used)) static void pismo_set_vpp(struct platform_device *pdev, int on)
{
 struct i2c_client *client = to_i2c_client(pdev->dev.parent);
 struct pismo_data *pismo = i2c_get_clientdata(client);

 pismo->vpp(pismo->vpp_data, on);
}
