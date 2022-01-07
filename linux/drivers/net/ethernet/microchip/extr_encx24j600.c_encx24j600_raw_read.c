
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_2__ {int mutex; } ;
struct encx24j600_priv {TYPE_1__ ctx; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int regmap_encx24j600_spi_read (TYPE_1__*,int ,int *,size_t) ;

__attribute__((used)) static int encx24j600_raw_read(struct encx24j600_priv *priv, u8 reg, u8 *data,
          size_t count)
{
 int ret;

 mutex_lock(&priv->ctx.mutex);
 ret = regmap_encx24j600_spi_read(&priv->ctx, reg, data, count);
 mutex_unlock(&priv->ctx.mutex);

 return ret;
}
