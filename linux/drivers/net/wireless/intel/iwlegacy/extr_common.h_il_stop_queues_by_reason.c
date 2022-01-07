
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct il_priv {int stop_reason; } ;


 int _il_stop_queue (struct il_priv*,int) ;
 int test_and_set_bit (int,int *) ;

__attribute__((used)) static inline void
il_stop_queues_by_reason(struct il_priv *il, int reason)
{
 u8 ac;

 if (!test_and_set_bit(reason, &il->stop_reason))
  for (ac = 0; ac < 4; ac++)
   _il_stop_queue(il, ac);
}
