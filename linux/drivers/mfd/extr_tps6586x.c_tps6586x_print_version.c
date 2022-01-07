
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_client {int dev; } ;
 int dev_info (int *,char*,char const*,int) ;

__attribute__((used)) static void tps6586x_print_version(struct i2c_client *client, int version)
{
 const char *name;

 switch (version) {
 case 133:
  name = "TPS658621A";
  break;
 case 132:
  name = "TPS658621C/D";
  break;
 case 131:
  name = "TPS658623";
  break;
 case 130:
 case 129:
  name = "TPS658640";
  break;
 case 128:
  name = "TPS658643";
  break;
 default:
  name = "TPS6586X";
  break;
 }

 dev_info(&client->dev, "Found %s, VERSIONCRC is %02x\n", name, version);
}
