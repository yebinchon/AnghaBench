
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct average {size_t pos; int init; scalar_t__* entries; int sum; } ;
typedef scalar_t__ s16 ;


 size_t AVG_ENTRIES ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void average_add(struct average *avg, s16 val)
{
 avg->sum -= avg->entries[avg->pos];
 avg->sum += val;
 avg->entries[avg->pos++] = val;
 if (unlikely(avg->pos == AVG_ENTRIES)) {
  avg->init = 1;
  avg->pos = 0;
 }
}
