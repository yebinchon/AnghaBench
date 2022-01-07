
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_txe_hw {int slots; } ;
struct mei_device {int dummy; } ;


 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static int mei_txe_hbuf_empty_slots(struct mei_device *dev)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);

 return hw->slots;
}
