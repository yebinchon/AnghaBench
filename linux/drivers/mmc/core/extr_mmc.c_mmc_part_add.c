
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mmc_card {size_t nr_parts; TYPE_1__* part; } ;
struct TYPE_2__ {unsigned int size; unsigned int part_cfg; int force_ro; int area_type; int name; } ;


 int sprintf (int ,char*,int) ;

__attribute__((used)) static void mmc_part_add(struct mmc_card *card, unsigned int size,
    unsigned int part_cfg, char *name, int idx, bool ro,
    int area_type)
{
 card->part[card->nr_parts].size = size;
 card->part[card->nr_parts].part_cfg = part_cfg;
 sprintf(card->part[card->nr_parts].name, name, idx);
 card->part[card->nr_parts].force_ro = ro;
 card->part[card->nr_parts].area_type = area_type;
 card->nr_parts++;
}
