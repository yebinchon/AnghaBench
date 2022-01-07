
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct stmfx {int * vdd; int map; } ;
struct i2c_client {int addr; int dev; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int ENODEV ;
 int EPROBE_DEFER ;
 int FIELD_GET (int ,int) ;
 int PTR_ERR_OR_ZERO (int *) ;
 int STMFX_REG_CHIP_ID ;
 int STMFX_REG_CHIP_ID_MASK ;
 int STMFX_REG_FW_VERSION_MSB ;
 int dev_err (int *,char*,int) ;
 int dev_info (int *,char*,int,int ,int ) ;
 int * devm_regulator_get_optional (int *,char*) ;
 struct stmfx* i2c_get_clientdata (struct i2c_client*) ;
 int regmap_bulk_read (int ,int ,int *,int ) ;
 int regmap_read (int ,int ,int*) ;
 int regulator_disable (int *) ;
 int regulator_enable (int *) ;
 int stmfx_chip_reset (struct stmfx*) ;

__attribute__((used)) static int stmfx_chip_init(struct i2c_client *client)
{
 struct stmfx *stmfx = i2c_get_clientdata(client);
 u32 id;
 u8 version[2];
 int ret;

 stmfx->vdd = devm_regulator_get_optional(&client->dev, "vdd");
 ret = PTR_ERR_OR_ZERO(stmfx->vdd);
 if (ret == -ENODEV) {
  stmfx->vdd = ((void*)0);
 } else if (ret == -EPROBE_DEFER) {
  return ret;
 } else if (ret) {
  dev_err(&client->dev, "Failed to get VDD regulator: %d\n", ret);
  return ret;
 }

 if (stmfx->vdd) {
  ret = regulator_enable(stmfx->vdd);
  if (ret) {
   dev_err(&client->dev, "VDD enable failed: %d\n", ret);
   return ret;
  }
 }

 ret = regmap_read(stmfx->map, STMFX_REG_CHIP_ID, &id);
 if (ret) {
  dev_err(&client->dev, "Error reading chip ID: %d\n", ret);
  goto err;
 }
 if (FIELD_GET(STMFX_REG_CHIP_ID_MASK, ~id) != (client->addr << 1)) {
  dev_err(&client->dev, "Unknown chip ID: %#x\n", id);
  ret = -EINVAL;
  goto err;
 }

 ret = regmap_bulk_read(stmfx->map, STMFX_REG_FW_VERSION_MSB,
          version, ARRAY_SIZE(version));
 if (ret) {
  dev_err(&client->dev, "Error reading FW version: %d\n", ret);
  goto err;
 }

 dev_info(&client->dev, "STMFX id: %#x, fw version: %x.%02x\n",
   id, version[0], version[1]);

 ret = stmfx_chip_reset(stmfx);
 if (ret) {
  dev_err(&client->dev, "Failed to reset chip: %d\n", ret);
  goto err;
 }

 return 0;

err:
 if (stmfx->vdd)
  return regulator_disable(stmfx->vdd);

 return ret;
}
