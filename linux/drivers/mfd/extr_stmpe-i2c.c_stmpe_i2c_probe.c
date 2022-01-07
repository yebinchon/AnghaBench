
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct of_device_id {scalar_t__ data; } ;
struct i2c_device_id {int driver_data; } ;
struct i2c_client {int dev; int irq; } ;
typedef enum stmpe_partnum { ____Placeholder_stmpe_partnum } stmpe_partnum ;
struct TYPE_3__ {int * dev; struct i2c_client* client; int irq; void* data; } ;


 int dev_info (int *,char*) ;
 TYPE_1__ i2c_ci ;
 struct of_device_id* of_match_device (int ,int *) ;
 int stmpe_of_match ;
 int stmpe_probe (TYPE_1__*,int) ;

__attribute__((used)) static int
stmpe_i2c_probe(struct i2c_client *i2c, const struct i2c_device_id *id)
{
 enum stmpe_partnum partnum;
 const struct of_device_id *of_id;

 i2c_ci.data = (void *)id;
 i2c_ci.irq = i2c->irq;
 i2c_ci.client = i2c;
 i2c_ci.dev = &i2c->dev;

 of_id = of_match_device(stmpe_of_match, &i2c->dev);
 if (!of_id) {




  dev_info(&i2c->dev, "matching on node name, compatible is preferred\n");
  partnum = id->driver_data;
 } else
  partnum = (enum stmpe_partnum)of_id->data;

 return stmpe_probe(&i2c_ci, partnum);
}
