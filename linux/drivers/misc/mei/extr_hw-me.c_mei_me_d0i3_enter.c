
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_me_hw {int pg_state; } ;
struct mei_device {int dev; int pg_event; } ;


 int H_D0I3C_I3 ;
 int MEI_PG_EVENT_IDLE ;
 int MEI_PG_ON ;
 int dev_dbg (int ,char*) ;
 int mei_me_d0i3_set (struct mei_device*,int) ;
 int mei_me_d0i3c_read (struct mei_device*) ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;

__attribute__((used)) static int mei_me_d0i3_enter(struct mei_device *dev)
{
 struct mei_me_hw *hw = to_me_hw(dev);
 u32 reg;

 reg = mei_me_d0i3c_read(dev);
 if (reg & H_D0I3C_I3) {

  dev_dbg(dev->dev, "already d0i3 : set not needed\n");
  goto on;
 }

 mei_me_d0i3_set(dev, 0);
on:
 hw->pg_state = MEI_PG_ON;
 dev->pg_event = MEI_PG_EVENT_IDLE;
 dev_dbg(dev->dev, "d0i3 enter\n");
 return 0;
}
