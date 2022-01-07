
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct i40e_pf {TYPE_1__* pdev; } ;
struct i40e_lump_tracking {int search_hint; int num_entries; int* list; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int I40E_PILE_VALID_BIT ;
 int dev_info (int *,char*,char*,int,int) ;

__attribute__((used)) static int i40e_get_lump(struct i40e_pf *pf, struct i40e_lump_tracking *pile,
    u16 needed, u16 id)
{
 int ret = -ENOMEM;
 int i, j;

 if (!pile || needed == 0 || id >= I40E_PILE_VALID_BIT) {
  dev_info(&pf->pdev->dev,
    "param err: pile=%s needed=%d id=0x%04x\n",
    pile ? "<valid>" : "<null>", needed, id);
  return -EINVAL;
 }


 i = pile->search_hint;
 while (i < pile->num_entries) {

  if (pile->list[i] & I40E_PILE_VALID_BIT) {
   i++;
   continue;
  }


  for (j = 0; (j < needed) && ((i+j) < pile->num_entries); j++) {
   if (pile->list[i+j] & I40E_PILE_VALID_BIT)
    break;
  }

  if (j == needed) {

   for (j = 0; j < needed; j++)
    pile->list[i+j] = id | I40E_PILE_VALID_BIT;
   ret = i;
   pile->search_hint = i + j;
   break;
  }


  i += j;
 }

 return ret;
}
