
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct ca8210_priv* private_data; } ;
struct ca8210_priv {int spi; } ;



 int ca8210_reset_send (int ,unsigned long) ;

__attribute__((used)) static long ca8210_test_int_ioctl(
 struct file *filp,
 unsigned int ioctl_num,
 unsigned long ioctl_param
)
{
 struct ca8210_priv *priv = filp->private_data;

 switch (ioctl_num) {
 case 128:
  ca8210_reset_send(priv->spi, ioctl_param);
  break;
 default:
  break;
 }
 return 0;
}
