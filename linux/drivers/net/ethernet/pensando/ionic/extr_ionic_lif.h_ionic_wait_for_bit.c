
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ionic_lif {int state; } ;


 unsigned long HZ ;
 unsigned long jiffies ;
 scalar_t__ test_and_set_bit (int,int ) ;
 int test_bit (int,int ) ;
 scalar_t__ time_before (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static inline int ionic_wait_for_bit(struct ionic_lif *lif, int bitname)
{
 unsigned long tlimit = jiffies + HZ;

 while (test_and_set_bit(bitname, lif->state) &&
        time_before(jiffies, tlimit))
  usleep_range(100, 200);

 return test_bit(bitname, lif->state);
}
