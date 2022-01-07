
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef enum mcs_op { ____Placeholder_mcs_op } mcs_op ;
struct TYPE_2__ {unsigned long max; int total; int count; } ;


 unsigned long CLKS2NSEC (unsigned long) ;
 int atomic_long_add (unsigned long,int *) ;
 int atomic_long_inc (int *) ;
 TYPE_1__* mcs_op_statistics ;

__attribute__((used)) static void update_mcs_stats(enum mcs_op op, unsigned long clks)
{
 unsigned long nsec;

 nsec = CLKS2NSEC(clks);
 atomic_long_inc(&mcs_op_statistics[op].count);
 atomic_long_add(nsec, &mcs_op_statistics[op].total);
 if (mcs_op_statistics[op].max < nsec)
  mcs_op_statistics[op].max = nsec;
}
