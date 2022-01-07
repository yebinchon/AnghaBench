
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct fc0011_priv {int dummy; } ;


 int FC11_REG_VCOCAL ;
 int FC11_VCOCAL_RUN ;
 int fc0011_readreg (struct fc0011_priv*,int ,int *) ;
 int fc0011_writereg (struct fc0011_priv*,int ,int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int fc0011_vcocal_read(struct fc0011_priv *priv, u8 *value)
{
 int err;

 err = fc0011_writereg(priv, FC11_REG_VCOCAL, FC11_VCOCAL_RUN);
 if (err)
  return err;
 usleep_range(10000, 20000);
 err = fc0011_readreg(priv, FC11_REG_VCOCAL, value);
 if (err)
  return err;

 return 0;
}
