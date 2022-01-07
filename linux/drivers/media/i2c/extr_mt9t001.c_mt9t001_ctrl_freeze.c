
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mt9t001 {int dummy; } ;


 int MT9T001_OUTPUT_CONTROL_SYNC ;
 int mt9t001_set_output_control (struct mt9t001*,int ,int ) ;

__attribute__((used)) static int mt9t001_ctrl_freeze(struct mt9t001 *mt9t001, bool freeze)
{
 return mt9t001_set_output_control(mt9t001,
  freeze ? 0 : MT9T001_OUTPUT_CONTROL_SYNC,
  freeze ? MT9T001_OUTPUT_CONTROL_SYNC : 0);
}
