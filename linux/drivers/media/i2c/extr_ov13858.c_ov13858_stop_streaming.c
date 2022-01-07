
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov13858 {int dummy; } ;


 int OV13858_MODE_STANDBY ;
 int OV13858_REG_MODE_SELECT ;
 int OV13858_REG_VALUE_08BIT ;
 int ov13858_write_reg (struct ov13858*,int ,int ,int ) ;

__attribute__((used)) static int ov13858_stop_streaming(struct ov13858 *ov13858)
{
 return ov13858_write_reg(ov13858, OV13858_REG_MODE_SELECT,
     OV13858_REG_VALUE_08BIT, OV13858_MODE_STANDBY);
}
