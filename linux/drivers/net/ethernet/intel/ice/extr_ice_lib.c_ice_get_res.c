
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u16 ;
struct ice_res_tracker {scalar_t__ num_entries; } ;
struct ice_pf {TYPE_1__* pdev; } ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 scalar_t__ ICE_RES_VALID_BIT ;
 int dev_err (int *,char*,scalar_t__,scalar_t__,scalar_t__) ;
 int ice_search_res (struct ice_res_tracker*,scalar_t__,scalar_t__) ;

int
ice_get_res(struct ice_pf *pf, struct ice_res_tracker *res, u16 needed, u16 id)
{
 if (!res || !pf)
  return -EINVAL;

 if (!needed || needed > res->num_entries || id >= ICE_RES_VALID_BIT) {
  dev_err(&pf->pdev->dev,
   "param err: needed=%d, num_entries = %d id=0x%04x\n",
   needed, res->num_entries, id);
  return -EINVAL;
 }

 return ice_search_res(res, needed, id);
}
