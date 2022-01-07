
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u32 ;
struct softing {int ts_overflow; int ts_ref; TYPE_1__* pdat; } ;
typedef int ktime_t ;
struct TYPE_2__ {scalar_t__ freq; } ;


 int do_div (int,int) ;
 int ktime_add (int ,int ) ;
 int ktime_add_us (int ,int) ;
 int ktime_get () ;
 int ktime_get_real () ;
 int ktime_sub (int ,int ) ;
 scalar_t__ ktime_to_ns (int ) ;
 scalar_t__ unlikely (int) ;

ktime_t softing_raw2ktime(struct softing *card, u32 raw)
{
 uint64_t rawl;
 ktime_t now, real_offset;
 ktime_t target;
 ktime_t tmp;

 now = ktime_get();
 real_offset = ktime_sub(ktime_get_real(), now);


 rawl = raw * 16;
 do_div(rawl, card->pdat->freq ?: 16);
 target = ktime_add_us(card->ts_ref, rawl);

 tmp = ktime_add(target, card->ts_overflow);
 while (unlikely(ktime_to_ns(tmp) > ktime_to_ns(now))) {
  card->ts_ref = ktime_add(card->ts_ref, card->ts_overflow);
  target = tmp;
  tmp = ktime_add(target, card->ts_overflow);
 }
 return ktime_add(target, real_offset);
}
