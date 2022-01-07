
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sm_ftl {int zone_count; struct ftl_zone* zones; } ;
struct ftl_zone {int initialized; } ;


 int BUG_ON (int) ;
 struct ftl_zone* ERR_PTR (int) ;
 int sm_init_zone (struct sm_ftl*,int) ;

__attribute__((used)) static struct ftl_zone *sm_get_zone(struct sm_ftl *ftl, int zone_num)
{
 struct ftl_zone *zone;
 int error;

 BUG_ON(zone_num >= ftl->zone_count);
 zone = &ftl->zones[zone_num];

 if (!zone->initialized) {
  error = sm_init_zone(ftl, zone_num);

  if (error)
   return ERR_PTR(error);
 }
 return zone;
}
