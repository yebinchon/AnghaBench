
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_me_hw {int hbuf_depth; } ;
struct mei_device {int dummy; } ;


 struct mei_me_hw* to_me_hw (struct mei_device const*) ;

__attribute__((used)) static u32 mei_me_hbuf_depth(const struct mei_device *dev)
{
 struct mei_me_hw *hw = to_me_hw(dev);

 return hw->hbuf_depth;
}
