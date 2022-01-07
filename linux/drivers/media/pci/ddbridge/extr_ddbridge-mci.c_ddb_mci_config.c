
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct mci {TYPE_1__* base; } ;
struct TYPE_4__ {int device; } ;
struct ddb_link {TYPE_2__ ids; } ;
struct TYPE_3__ {struct ddb_link* link; } ;


 int EINVAL ;
 int SX8_TSCONFIG ;
 int ddblwritel (struct ddb_link*,int ,int ) ;

int ddb_mci_config(struct mci *state, u32 config)
{
 struct ddb_link *link = state->base->link;

 if (link->ids.device != 0x0009)
  return -EINVAL;
 ddblwritel(link, config, SX8_TSCONFIG);
 return 0;
}
