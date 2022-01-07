
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct nfp_flower_merge_check {int vals; } ;
struct nfp_fl_payload {int dummy; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ NFP_FL_ACTION_OPCODE_OUTPUT ;
 int bitmap_andnot (int ,int ,int ,int) ;
 int nfp_flower_populate_merge_match (struct nfp_fl_payload*,struct nfp_flower_merge_check*,int) ;
 int nfp_flower_update_merge_with_actions (struct nfp_fl_payload*,struct nfp_flower_merge_check*,scalar_t__*,int*) ;

__attribute__((used)) static int
nfp_flower_can_merge(struct nfp_fl_payload *sub_flow1,
       struct nfp_fl_payload *sub_flow2)
{





 struct nfp_flower_merge_check sub_flow1_merge, sub_flow2_merge;
 int err, act_out = 0;
 u8 last_act_id = 0;

 err = nfp_flower_populate_merge_match(sub_flow1, &sub_flow1_merge,
           1);
 if (err)
  return err;

 err = nfp_flower_populate_merge_match(sub_flow2, &sub_flow2_merge,
           0);
 if (err)
  return err;

 err = nfp_flower_update_merge_with_actions(sub_flow1, &sub_flow1_merge,
         &last_act_id, &act_out);
 if (err)
  return err;


 if (act_out != 1 || last_act_id != NFP_FL_ACTION_OPCODE_OUTPUT)
  return -EOPNOTSUPP;




 err = bitmap_andnot(sub_flow2_merge.vals, sub_flow2_merge.vals,
       sub_flow1_merge.vals,
       sizeof(struct nfp_flower_merge_check) * 8);
 if (err)
  return -EINVAL;

 return 0;
}
