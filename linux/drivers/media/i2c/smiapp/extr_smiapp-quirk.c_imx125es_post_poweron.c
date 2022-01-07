
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smiapp_sensor {int dummy; } ;
struct smiapp_reg_8 {int member_0; int member_1; } ;


 int ARRAY_SIZE (struct smiapp_reg_8 const*) ;
 int smiapp_write_8s (struct smiapp_sensor*,struct smiapp_reg_8 const*,int ) ;

__attribute__((used)) static int imx125es_post_poweron(struct smiapp_sensor *sensor)
{

 static const struct smiapp_reg_8 regs[] = {




  { 0x3302, 0x01 },
  { 0x302d, 0x00 },
  { 0x3b08, 0x8c },
 };

 return smiapp_write_8s(sensor, regs, ARRAY_SIZE(regs));
}
