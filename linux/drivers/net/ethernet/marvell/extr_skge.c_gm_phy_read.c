
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct skge_hw {TYPE_1__** dev; } ;
struct TYPE_2__ {int name; } ;


 scalar_t__ __gm_phy_read (struct skge_hw*,int,int ,int *) ;
 int pr_warn (char*,int ) ;

__attribute__((used)) static u16 gm_phy_read(struct skge_hw *hw, int port, u16 reg)
{
 u16 v = 0;
 if (__gm_phy_read(hw, port, reg, &v))
  pr_warn("%s: phy read timeout\n", hw->dev[port]->name);
 return v;
}
