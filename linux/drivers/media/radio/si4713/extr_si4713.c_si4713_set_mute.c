
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct si4713_device {scalar_t__ power_state; } ;


 int SI4713_TX_LINE_INPUT_MUTE ;
 int set_mute (int ) ;
 int si4713_write_property (struct si4713_device*,int ,int ) ;

__attribute__((used)) static int si4713_set_mute(struct si4713_device *sdev, u16 mute)
{
 int rval = 0;

 mute = set_mute(mute);

 if (sdev->power_state)
  rval = si4713_write_property(sdev,
    SI4713_TX_LINE_INPUT_MUTE, mute);

 return rval;
}
