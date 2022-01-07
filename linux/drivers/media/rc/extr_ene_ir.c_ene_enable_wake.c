
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ene_device {int dummy; } ;


 int ENE_FW1 ;
 int ENE_FW1_WAKE ;
 int dbg (char*,char*) ;
 int ene_set_clear_reg_mask (struct ene_device*,int ,int ,int) ;

__attribute__((used)) static void ene_enable_wake(struct ene_device *dev, bool enable)
{
 dbg("wake on IR %s", enable ? "enabled" : "disabled");
 ene_set_clear_reg_mask(dev, ENE_FW1, ENE_FW1_WAKE, enable);
}
