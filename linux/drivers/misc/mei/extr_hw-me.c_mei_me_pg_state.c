
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_me_hw {int pg_state; } ;
struct mei_device {int dummy; } ;
typedef enum mei_pg_state { ____Placeholder_mei_pg_state } mei_pg_state ;


 struct mei_me_hw* to_me_hw (struct mei_device*) ;

__attribute__((used)) static inline enum mei_pg_state mei_me_pg_state(struct mei_device *dev)
{
 struct mei_me_hw *hw = to_me_hw(dev);

 return hw->pg_state;
}
