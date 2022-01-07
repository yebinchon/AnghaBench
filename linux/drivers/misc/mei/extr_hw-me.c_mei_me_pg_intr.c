
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct mei_me_hw {scalar_t__ d0i3_supported; } ;
struct mei_device {int dummy; } ;


 int mei_me_d0i3_intr (struct mei_device*,int ) ;
 int mei_me_pg_legacy_intr (struct mei_device*) ;
 struct mei_me_hw* to_me_hw (struct mei_device*) ;

__attribute__((used)) static void mei_me_pg_intr(struct mei_device *dev, u32 intr_source)
{
 struct mei_me_hw *hw = to_me_hw(dev);

 if (hw->d0i3_supported)
  mei_me_d0i3_intr(dev, intr_source);
 else
  mei_me_pg_legacy_intr(dev);
}
