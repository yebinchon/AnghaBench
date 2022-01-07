
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slave {int speed; } ;
typedef long long s64 ;
struct TYPE_2__ {int load; } ;


 TYPE_1__ SLAVE_TLB_INFO (struct slave*) ;

__attribute__((used)) static long long compute_gap(struct slave *slave)
{
 return (s64) (slave->speed << 20) -
        (s64) (SLAVE_TLB_INFO(slave).load << 3);
}
