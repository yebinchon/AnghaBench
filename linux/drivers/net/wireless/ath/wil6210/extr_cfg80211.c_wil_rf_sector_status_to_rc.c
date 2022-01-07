
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int EAGAIN ;
 int EINVAL ;
 int EOPNOTSUPP ;





__attribute__((used)) static int wil_rf_sector_status_to_rc(u8 status)
{
 switch (status) {
 case 128:
  return 0;
 case 131:
  return -EINVAL;
 case 130:
  return -EAGAIN;
 case 129:
  return -EOPNOTSUPP;
 default:
  return -EINVAL;
 }
}
