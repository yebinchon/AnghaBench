
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ath_desc {int ds_link; } ;



__attribute__((used)) static void ar9002_hw_set_desc_link(void *ds, u32 ds_link)
{
 ((struct ath_desc*) ds)->ds_link = ds_link;
}
