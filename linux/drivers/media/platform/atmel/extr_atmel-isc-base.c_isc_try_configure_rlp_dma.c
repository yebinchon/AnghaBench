
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int bpp; int fourcc; void* dctrl_dview; void* dcfg_imode; void* rlp_cfg_mode; } ;
struct isc_device {TYPE_1__ try_config; } ;


 int EINVAL ;
 void* ISC_DCFG_IMODE_PACKED16 ;
 void* ISC_DCFG_IMODE_PACKED32 ;
 void* ISC_DCFG_IMODE_PACKED8 ;
 void* ISC_DCFG_IMODE_YC420P ;
 void* ISC_DCFG_IMODE_YC422P ;
 void* ISC_DCTRL_DVIEW_PACKED ;
 void* ISC_DCTRL_DVIEW_PLANAR ;
 void* ISC_RLP_CFG_MODE_ARGB32 ;
 void* ISC_RLP_CFG_MODE_ARGB444 ;
 void* ISC_RLP_CFG_MODE_ARGB555 ;
 void* ISC_RLP_CFG_MODE_DAT10 ;
 void* ISC_RLP_CFG_MODE_DAT12 ;
 void* ISC_RLP_CFG_MODE_DAT8 ;
 void* ISC_RLP_CFG_MODE_DATY8 ;
 void* ISC_RLP_CFG_MODE_RGB565 ;
 void* ISC_RLP_CFG_MODE_YYCC ;
__attribute__((used)) static int isc_try_configure_rlp_dma(struct isc_device *isc, bool direct_dump)
{
 if (direct_dump) {
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_DAT8;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED8;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
  isc->try_config.bpp = 16;
  return 0;
 }

 switch (isc->try_config.fourcc) {
 case 141:
 case 138:
 case 135:
 case 132:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_DAT8;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED8;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
  isc->try_config.bpp = 8;
  break;
 case 143:
 case 140:
 case 137:
 case 134:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_DAT10;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED16;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
  isc->try_config.bpp = 16;
  break;
 case 142:
 case 139:
 case 136:
 case 133:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_DAT12;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED16;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
  isc->try_config.bpp = 16;
  break;
 case 144:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_RGB565;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED16;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
  isc->try_config.bpp = 16;
  break;
 case 147:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_ARGB444;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED16;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
  isc->try_config.bpp = 16;
  break;
 case 146:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_ARGB555;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED16;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
  isc->try_config.bpp = 16;
  break;
 case 148:
 case 131:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_ARGB32;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED32;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
  isc->try_config.bpp = 32;
  break;
 case 130:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_YYCC;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_YC420P;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PLANAR;
  isc->try_config.bpp = 12;
  break;
 case 129:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_YYCC;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_YC422P;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PLANAR;
  isc->try_config.bpp = 16;
  break;
 case 128:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_YYCC;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED32;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
  isc->try_config.bpp = 16;
  break;
 case 145:
  isc->try_config.rlp_cfg_mode = ISC_RLP_CFG_MODE_DATY8;
  isc->try_config.dcfg_imode = ISC_DCFG_IMODE_PACKED8;
  isc->try_config.dctrl_dview = ISC_DCTRL_DVIEW_PACKED;
  isc->try_config.bpp = 8;
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
