
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct TYPE_2__ {int regmap; } ;
struct encx24j600_priv {TYPE_1__ ctx; } ;


 scalar_t__ CLKRDY ;
 int EINVAL ;
 int ESTAT ;
 int ETIMEDOUT ;
 int EUDAST ;
 scalar_t__ EUDAST_TEST_VAL ;
 int SETETHRST ;
 int encx24j600_cmd (struct encx24j600_priv*,int ) ;
 scalar_t__ encx24j600_read_reg (struct encx24j600_priv*,int ) ;
 int encx24j600_write_reg (struct encx24j600_priv*,int ,scalar_t__) ;
 int regcache_cache_bypass (int ,int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int encx24j600_soft_reset(struct encx24j600_priv *priv)
{
 int ret = 0;
 int timeout;
 u16 eudast;


 regcache_cache_bypass(priv->ctx.regmap, 1);
 timeout = 10;
 do {
  encx24j600_write_reg(priv, EUDAST, EUDAST_TEST_VAL);
  eudast = encx24j600_read_reg(priv, EUDAST);
  usleep_range(25, 100);
 } while ((eudast != EUDAST_TEST_VAL) && --timeout);
 regcache_cache_bypass(priv->ctx.regmap, 0);

 if (timeout == 0) {
  ret = -ETIMEDOUT;
  goto err_out;
 }


 timeout = 10;
 while (!(encx24j600_read_reg(priv, ESTAT) & CLKRDY) && --timeout)
  usleep_range(25, 100);

 if (timeout == 0) {
  ret = -ETIMEDOUT;
  goto err_out;
 }


 encx24j600_cmd(priv, SETETHRST);
 usleep_range(25, 100);


 if (encx24j600_read_reg(priv, EUDAST) != 0) {
  ret = -EINVAL;
  goto err_out;
 }


 usleep_range(256, 1000);

err_out:
 return ret;
}
