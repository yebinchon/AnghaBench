
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u8 ;
struct v4l2_subdev {int dummy; } ;
struct m5mols_scenemode {size_t metering; size_t ev_bias; size_t wb_mode; size_t wb_preset; size_t chroma_en; size_t chroma_lvl; size_t edge_en; size_t edge_lvl; size_t af_range; size_t fd_mode; size_t tone; size_t iso; size_t wdr; size_t mcc; size_t light; size_t flash; size_t capt_mode; } ;
struct m5mols_info {int lock_3a; struct v4l2_subdev sd; } ;


 int AE_EV_PRESET_CAPTURE ;
 int AE_EV_PRESET_MONITOR ;
 int AE_INDEX ;
 int AE_ISO ;
 int AE_MODE ;
 int AF_MODE ;
 int AWB_MANUAL ;
 int AWB_MODE ;
 int CAPC_MODE ;
 int CAPP_FLASH_CTRL ;
 int CAPP_LIGHT_CTRL ;
 int CAPP_MCC_MODE ;
 int CAPP_WDR_EN ;
 int EINVAL ;
 int FD_CTL ;
 int MON_CHROMA_EN ;
 int MON_CHROMA_LVL ;
 int MON_EDGE_EN ;
 int MON_EDGE_LVL ;
 int MON_TONE_CTL ;
 int REG_CAPTURE ;
 int REG_MONITOR ;
 size_t REG_SCENE_CANDLE ;
 scalar_t__ is_available_af (struct m5mols_info*) ;
 struct m5mols_scenemode* m5mols_default_scenemode ;
 int m5mols_set_mode (struct m5mols_info*,int ) ;
 int m5mols_write (struct v4l2_subdev*,int ,size_t) ;
 int v4l2_ctrl_s_ctrl (int ,int ) ;

int m5mols_do_scenemode(struct m5mols_info *info, u8 mode)
{
 struct v4l2_subdev *sd = &info->sd;
 struct m5mols_scenemode scenemode = m5mols_default_scenemode[mode];
 int ret;

 if (mode > REG_SCENE_CANDLE)
  return -EINVAL;

 ret = v4l2_ctrl_s_ctrl(info->lock_3a, 0);
 if (!ret)
  ret = m5mols_write(sd, AE_EV_PRESET_MONITOR, mode);
 if (!ret)
  ret = m5mols_write(sd, AE_EV_PRESET_CAPTURE, mode);
 if (!ret)
  ret = m5mols_write(sd, AE_MODE, scenemode.metering);
 if (!ret)
  ret = m5mols_write(sd, AE_INDEX, scenemode.ev_bias);
 if (!ret)
  ret = m5mols_write(sd, AWB_MODE, scenemode.wb_mode);
 if (!ret)
  ret = m5mols_write(sd, AWB_MANUAL, scenemode.wb_preset);
 if (!ret)
  ret = m5mols_write(sd, MON_CHROMA_EN, scenemode.chroma_en);
 if (!ret)
  ret = m5mols_write(sd, MON_CHROMA_LVL, scenemode.chroma_lvl);
 if (!ret)
  ret = m5mols_write(sd, MON_EDGE_EN, scenemode.edge_en);
 if (!ret)
  ret = m5mols_write(sd, MON_EDGE_LVL, scenemode.edge_lvl);
 if (!ret && is_available_af(info))
  ret = m5mols_write(sd, AF_MODE, scenemode.af_range);
 if (!ret && is_available_af(info))
  ret = m5mols_write(sd, FD_CTL, scenemode.fd_mode);
 if (!ret)
  ret = m5mols_write(sd, MON_TONE_CTL, scenemode.tone);
 if (!ret)
  ret = m5mols_write(sd, AE_ISO, scenemode.iso);
 if (!ret)
  ret = m5mols_set_mode(info, REG_CAPTURE);
 if (!ret)
  ret = m5mols_write(sd, CAPP_WDR_EN, scenemode.wdr);
 if (!ret)
  ret = m5mols_write(sd, CAPP_MCC_MODE, scenemode.mcc);
 if (!ret)
  ret = m5mols_write(sd, CAPP_LIGHT_CTRL, scenemode.light);
 if (!ret)
  ret = m5mols_write(sd, CAPP_FLASH_CTRL, scenemode.flash);
 if (!ret)
  ret = m5mols_write(sd, CAPC_MODE, scenemode.capt_mode);
 if (!ret)
  ret = m5mols_set_mode(info, REG_MONITOR);

 return ret;
}
