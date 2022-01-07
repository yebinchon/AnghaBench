
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gelic_wl_scan_info {int dummy; } ;



__attribute__((used)) static void update_best(struct gelic_wl_scan_info **best,
   struct gelic_wl_scan_info *candid,
   int *best_weight,
   int *weight)
{
 if (*best_weight < ++(*weight)) {
  *best_weight = *weight;
  *best = candid;
 }
}
