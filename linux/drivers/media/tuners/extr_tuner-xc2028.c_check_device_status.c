
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xc2028_data {int state; } ;


 int EAGAIN ;
 int ENODEV ;






__attribute__((used)) static int check_device_status(struct xc2028_data *priv)
{
 switch (priv->state) {
 case 130:
 case 128:
  return -EAGAIN;
 case 132:
  return 1;
 case 129:
  return 0;
 case 131:
  return -ENODEV;
 }
 return 0;
}
