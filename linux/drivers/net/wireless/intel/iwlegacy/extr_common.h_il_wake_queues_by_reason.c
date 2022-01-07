
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_priv {int stop_reason; } ;


 int _il_wake_queue (struct il_priv*,int) ;
 scalar_t__ test_and_clear_bit (int,int *) ;

__attribute__((used)) static inline void
il_wake_queues_by_reason(struct il_priv *il, int reason)
{
 u8 ac;

 if (test_and_clear_bit(reason, &il->stop_reason))
  for (ac = 0; ac < 4; ac++)
   _il_wake_queue(il, ac);
}
