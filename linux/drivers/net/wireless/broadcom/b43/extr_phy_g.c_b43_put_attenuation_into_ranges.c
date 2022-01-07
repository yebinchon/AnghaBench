
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* g; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_8__ {int min_val; int max_val; } ;
struct TYPE_7__ {int min_val; int max_val; } ;
struct b43_txpower_lo_control {TYPE_4__ bbatt_list; TYPE_3__ rfatt_list; } ;
struct TYPE_5__ {struct b43_txpower_lo_control* lo_control; } ;


 int clamp_val (int,int const,int const) ;

__attribute__((used)) static void b43_put_attenuation_into_ranges(struct b43_wldev *dev,
         int *_bbatt, int *_rfatt)
{
 int rfatt = *_rfatt;
 int bbatt = *_bbatt;
 struct b43_txpower_lo_control *lo = dev->phy.g->lo_control;





 const int rf_min = lo->rfatt_list.min_val;
 const int rf_max = lo->rfatt_list.max_val;
 const int bb_min = lo->bbatt_list.min_val;
 const int bb_max = lo->bbatt_list.max_val;

 while (1) {
  if (rfatt > rf_max && bbatt > bb_max - 4)
   break;
  if (rfatt < rf_min && bbatt < bb_min + 4)
   break;
  if (bbatt > bb_max && rfatt > rf_max - 1)
   break;
  if (bbatt < bb_min && rfatt < rf_min + 1)
   break;

  if (bbatt > bb_max) {
   bbatt -= 4;
   rfatt += 1;
   continue;
  }
  if (bbatt < bb_min) {
   bbatt += 4;
   rfatt -= 1;
   continue;
  }
  if (rfatt > rf_max) {
   rfatt -= 1;
   bbatt += 4;
   continue;
  }
  if (rfatt < rf_min) {
   rfatt += 1;
   bbatt -= 4;
   continue;
  }
  break;
 }

 *_rfatt = clamp_val(rfatt, rf_min, rf_max);
 *_bbatt = clamp_val(bbatt, bb_min, bb_max);
}
