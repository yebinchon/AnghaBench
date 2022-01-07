
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long max (unsigned long,int ) ;
 int roundup_pow_of_two (unsigned long) ;

__attribute__((used)) static unsigned long roundup_ring_size(unsigned long pending)
{
 return max(128ul, roundup_pow_of_two(pending+1));
}
