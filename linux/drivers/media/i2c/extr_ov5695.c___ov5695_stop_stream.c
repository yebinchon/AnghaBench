
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ov5695 {int client; } ;


 int OV5695_MODE_SW_STANDBY ;
 int OV5695_REG_CTRL_MODE ;
 int OV5695_REG_VALUE_08BIT ;
 int ov5695_write_reg (int ,int ,int ,int ) ;

__attribute__((used)) static int __ov5695_stop_stream(struct ov5695 *ov5695)
{
 return ov5695_write_reg(ov5695->client, OV5695_REG_CTRL_MODE,
    OV5695_REG_VALUE_08BIT, OV5695_MODE_SW_STANDBY);
}
