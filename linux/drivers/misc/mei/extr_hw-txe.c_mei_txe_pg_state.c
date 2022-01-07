
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mei_txe_hw {scalar_t__ aliveness; } ;
struct mei_device {int dummy; } ;
typedef enum mei_pg_state { ____Placeholder_mei_pg_state } mei_pg_state ;


 int MEI_PG_OFF ;
 int MEI_PG_ON ;
 struct mei_txe_hw* to_txe_hw (struct mei_device*) ;

__attribute__((used)) static inline enum mei_pg_state mei_txe_pg_state(struct mei_device *dev)
{
 struct mei_txe_hw *hw = to_txe_hw(dev);

 return hw->aliveness ? MEI_PG_OFF : MEI_PG_ON;
}
