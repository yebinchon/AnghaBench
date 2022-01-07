
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct saa7164_histogram {TYPE_1__* counter1; int name; } ;
struct TYPE_2__ {int val; } ;


 int memset (struct saa7164_histogram*,int ,int) ;
 int strscpy (int ,char*,int) ;

__attribute__((used)) static void saa7164_histogram_reset(struct saa7164_histogram *hg, char *name)
{
 int i;

 memset(hg, 0, sizeof(struct saa7164_histogram));
 strscpy(hg->name, name, sizeof(hg->name));


 for (i = 0; i < 30; i++)
  hg->counter1[0 + i].val = i;


 for (i = 0; i < 18; i++)
  hg->counter1[30 + i].val = 30 + (i * 10);


 for (i = 0; i < 15; i++)
  hg->counter1[48 + i].val = 200 + (i * 200);


 hg->counter1[55].val = 2000;


 hg->counter1[56].val = 4000;


 hg->counter1[57].val = 8000;


 hg->counter1[58].val = 15000;


 hg->counter1[59].val = 30000;


 hg->counter1[60].val = 60000;


 hg->counter1[61].val = 300000;


 hg->counter1[62].val = 900000;


 hg->counter1[63].val = 3600000;
}
