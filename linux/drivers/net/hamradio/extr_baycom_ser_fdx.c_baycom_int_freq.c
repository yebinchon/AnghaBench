
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long last_jiffies; scalar_t__ cur_pllcorr; scalar_t__ last_pllcorr; scalar_t__ cur_intcnt; scalar_t__ last_intcnt; } ;
struct baycom_state {TYPE_1__ debug_vals; } ;


 scalar_t__ HZ ;
 unsigned long jiffies ;
 scalar_t__ time_after_eq (unsigned long,scalar_t__) ;

__attribute__((used)) static inline void baycom_int_freq(struct baycom_state *bc)
{
}
