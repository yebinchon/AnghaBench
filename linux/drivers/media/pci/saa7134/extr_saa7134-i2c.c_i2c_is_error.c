
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum i2c_status { ____Placeholder_i2c_status } i2c_status ;
__attribute__((used)) static inline int i2c_is_error(enum i2c_status status)
{
 switch (status) {
 case 130:
 case 131:
 case 132:
 case 133:
 case 129:
 case 128:
  return 1;
 default:
  return 0;
 }
}
