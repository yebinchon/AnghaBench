
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct channel_info {int tsin_id; } ;
struct c8sectpfei {struct channel_info** channel_data; } ;


 int C8SECTPFE_MAX_TSIN_CHAN ;

__attribute__((used)) static struct channel_info *find_channel(struct c8sectpfei *fei, int tsin_num)
{
 int i;

 for (i = 0; i < C8SECTPFE_MAX_TSIN_CHAN; i++) {
  if (!fei->channel_data[i])
   continue;

  if (fei->channel_data[i]->tsin_id == tsin_num)
   return fei->channel_data[i];
 }

 return ((void*)0);
}
