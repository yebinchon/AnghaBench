
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_dev {struct hix5hd2_ir_priv* priv; } ;
struct hix5hd2_ir_priv {int dummy; } ;


 int hix5hd2_ir_config (struct hix5hd2_ir_priv*) ;
 int hix5hd2_ir_enable (struct hix5hd2_ir_priv*,int) ;

__attribute__((used)) static int hix5hd2_ir_open(struct rc_dev *rdev)
{
 struct hix5hd2_ir_priv *priv = rdev->priv;
 int ret;

 ret = hix5hd2_ir_enable(priv, 1);
 if (ret)
  return ret;

 ret = hix5hd2_ir_config(priv);
 if (ret) {
  hix5hd2_ir_enable(priv, 0);
  return ret;
 }
 return 0;
}
