
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MDP_COLOR_420_MT21 ;
 int MDP_COLOR_I420 ;
 int MDP_COLOR_NV12 ;
 int MDP_COLOR_UNKNOWN ;
 int MDP_COLOR_YV12 ;






 int mtk_mdp_err (char*,int) ;

__attribute__((used)) static int32_t mtk_mdp_map_color_format(int v4l2_format)
{
 switch (v4l2_format) {
 case 131:
 case 132:
  return MDP_COLOR_NV12;
 case 133:
  return MDP_COLOR_420_MT21;
 case 129:
 case 130:
  return MDP_COLOR_I420;
 case 128:
  return MDP_COLOR_YV12;
 }

 mtk_mdp_err("Unknown format 0x%x", v4l2_format);

 return MDP_COLOR_UNKNOWN;
}
