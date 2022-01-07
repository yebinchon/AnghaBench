
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct v4l2_subdev {int dummy; } ;
struct v4l2_ctrl {int id; int val; } ;
struct i2c_client {int dummy; } ;


 int ACCC_CHROMA_CB_MASK ;
 int ACCC_CHROMA_CB_SHIFT ;
 int ACCC_CHROMA_CR_MASK ;
 int ACCC_CHROMA_CR_SHIFT ;
 int ACCC_REG ;
 int ACCRC_CHROMA_MASK ;
 int ACCRC_CHROMA_SHIFT ;
 int ACCRC_REG ;
 int CHRCA_MODE_MASK ;
 int CHRCA_MODE_SHIFT ;
 int CHRCA_REG ;
 int CLC_CONTRAST_MASK ;
 int CLC_REG ;
 int EINVAL ;
 int HUE_REG ;
 int LUMC_ONOFF_MASK ;
 int LUMC_ONOFF_SHIFT ;
 int LUMC_REG ;
 int SSEPL_LUMINANCE_MASK ;
 int SSEPL_REG ;
 int ml86v7667_mask_set (struct i2c_client*,int ,int ,int) ;
 struct v4l2_subdev* to_sd (struct v4l2_ctrl*) ;
 struct i2c_client* v4l2_get_subdevdata (struct v4l2_subdev*) ;

__attribute__((used)) static int ml86v7667_s_ctrl(struct v4l2_ctrl *ctrl)
{
 struct v4l2_subdev *sd = to_sd(ctrl);
 struct i2c_client *client = v4l2_get_subdevdata(sd);
 int ret = -EINVAL;

 switch (ctrl->id) {
 case 134:
  ret = ml86v7667_mask_set(client, SSEPL_REG,
      SSEPL_LUMINANCE_MASK, ctrl->val);
  break;
 case 131:
  ret = ml86v7667_mask_set(client, CLC_REG,
      CLC_CONTRAST_MASK, ctrl->val);
  break;
 case 133:
  ret = ml86v7667_mask_set(client, ACCRC_REG, ACCRC_CHROMA_MASK,
      ctrl->val << ACCRC_CHROMA_SHIFT);
  break;
 case 130:
  ret = ml86v7667_mask_set(client, HUE_REG, ~0, ctrl->val);
  break;
 case 129:
  ret = ml86v7667_mask_set(client, ACCC_REG,
      ACCC_CHROMA_CR_MASK,
      ctrl->val << ACCC_CHROMA_CR_SHIFT);
  break;
 case 135:
  ret = ml86v7667_mask_set(client, ACCC_REG,
      ACCC_CHROMA_CB_MASK,
      ctrl->val << ACCC_CHROMA_CB_SHIFT);
  break;
 case 128:
  ret = ml86v7667_mask_set(client, LUMC_REG,
      LUMC_ONOFF_MASK,
      ctrl->val << LUMC_ONOFF_SHIFT);
  break;
 case 132:
  ret = ml86v7667_mask_set(client, CHRCA_REG,
      CHRCA_MODE_MASK,
      ctrl->val << CHRCA_MODE_SHIFT);
  break;
 }

 return ret;
}
