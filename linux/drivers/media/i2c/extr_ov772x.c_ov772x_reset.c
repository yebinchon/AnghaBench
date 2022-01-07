
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov772x_priv {int regmap; } ;


 int COM2 ;
 int COM7 ;
 int SCCB_RESET ;
 int SOFT_SLEEP_MODE ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int regmap_write (int ,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int ov772x_reset(struct ov772x_priv *priv)
{
 int ret;

 ret = regmap_write(priv->regmap, COM7, SCCB_RESET);
 if (ret < 0)
  return ret;

 usleep_range(1000, 5000);

 return regmap_update_bits(priv->regmap, COM2, SOFT_SLEEP_MODE,
      SOFT_SLEEP_MODE);
}
