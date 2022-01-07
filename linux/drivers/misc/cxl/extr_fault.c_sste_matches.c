
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxl_sste {scalar_t__ vsid_data; scalar_t__ esid_data; } ;
struct copro_slb {int esid; int vsid; } ;


 scalar_t__ cpu_to_be64 (int ) ;

__attribute__((used)) static bool sste_matches(struct cxl_sste *sste, struct copro_slb *slb)
{
 return ((sste->vsid_data == cpu_to_be64(slb->vsid)) &&
  (sste->esid_data == cpu_to_be64(slb->esid)));
}
