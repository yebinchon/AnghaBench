
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct softing {int ts_overflow; TYPE_1__* pdat; int ts_ref; } ;
struct TYPE_2__ {scalar_t__ freq; } ;


 int do_div (int,int) ;
 int ktime_add_us (int ,int) ;
 int ktime_get () ;

__attribute__((used)) static void softing_initialize_timestamp(struct softing *card)
{
 uint64_t ovf;

 card->ts_ref = ktime_get();


 ovf = 0x100000000ULL * 16;
 do_div(ovf, card->pdat->freq ?: 16);

 card->ts_overflow = ktime_add_us(0, ovf);
}
