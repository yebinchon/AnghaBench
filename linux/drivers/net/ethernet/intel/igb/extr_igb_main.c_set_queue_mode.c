
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {scalar_t__ type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef enum queue_mode { ____Placeholder_queue_mode } queue_mode ;


 int E1000_I210_TQAVCC (int) ;
 int E1000_TQAVCC_QUEUEMODE ;
 int QUEUE_MODE_STREAM_RESERVATION ;
 int WARN_ON (int) ;
 scalar_t__ e1000_i210 ;
 int rd32 (int ) ;
 int wr32 (int ,int ) ;

__attribute__((used)) static void set_queue_mode(struct e1000_hw *hw, int queue, enum queue_mode mode)
{
 u32 val;

 WARN_ON(hw->mac.type != e1000_i210);
 WARN_ON(queue < 0 || queue > 1);

 val = rd32(E1000_I210_TQAVCC(queue));

 if (mode == QUEUE_MODE_STREAM_RESERVATION)
  val |= E1000_TQAVCC_QUEUEMODE;
 else
  val &= ~E1000_TQAVCC_QUEUEMODE;

 wr32(E1000_I210_TQAVCC(queue), val);
}
