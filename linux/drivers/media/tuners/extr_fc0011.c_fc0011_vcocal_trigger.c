
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fc0011_priv {int dummy; } ;


 int FC11_REG_VCOCAL ;
 int FC11_VCOCAL_RESET ;
 int FC11_VCOCAL_RUN ;
 int fc0011_writereg (struct fc0011_priv*,int ,int ) ;

__attribute__((used)) static int fc0011_vcocal_trigger(struct fc0011_priv *priv)
{
 int err;

 err = fc0011_writereg(priv, FC11_REG_VCOCAL, FC11_VCOCAL_RESET);
 if (err)
  return err;
 err = fc0011_writereg(priv, FC11_REG_VCOCAL, FC11_VCOCAL_RUN);
 if (err)
  return err;

 return 0;
}
