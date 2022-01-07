
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_60__ TYPE_9__ ;
typedef struct TYPE_59__ TYPE_8__ ;
typedef struct TYPE_58__ TYPE_7__ ;
typedef struct TYPE_57__ TYPE_6__ ;
typedef struct TYPE_56__ TYPE_5__ ;
typedef struct TYPE_55__ TYPE_4__ ;
typedef struct TYPE_54__ TYPE_3__ ;
typedef struct TYPE_53__ TYPE_30__ ;
typedef struct TYPE_52__ TYPE_2__ ;
typedef struct TYPE_51__ TYPE_29__ ;
typedef struct TYPE_50__ TYPE_28__ ;
typedef struct TYPE_49__ TYPE_27__ ;
typedef struct TYPE_48__ TYPE_26__ ;
typedef struct TYPE_47__ TYPE_25__ ;
typedef struct TYPE_46__ TYPE_24__ ;
typedef struct TYPE_45__ TYPE_23__ ;
typedef struct TYPE_44__ TYPE_22__ ;
typedef struct TYPE_43__ TYPE_21__ ;
typedef struct TYPE_42__ TYPE_20__ ;
typedef struct TYPE_41__ TYPE_1__ ;
typedef struct TYPE_40__ TYPE_19__ ;
typedef struct TYPE_39__ TYPE_18__ ;
typedef struct TYPE_38__ TYPE_17__ ;
typedef struct TYPE_37__ TYPE_16__ ;
typedef struct TYPE_36__ TYPE_15__ ;
typedef struct TYPE_35__ TYPE_14__ ;
typedef struct TYPE_34__ TYPE_13__ ;
typedef struct TYPE_33__ TYPE_12__ ;
typedef struct TYPE_32__ TYPE_11__ ;
typedef struct TYPE_31__ TYPE_10__ ;


struct TYPE_51__ {int entity; } ;
struct TYPE_53__ {TYPE_29__ subdev; } ;
struct TYPE_49__ {int entity; } ;
struct TYPE_56__ {int entity; } ;
struct TYPE_57__ {TYPE_5__ video; } ;
struct TYPE_50__ {TYPE_27__ subdev; TYPE_6__ video_out; } ;
struct TYPE_47__ {int entity; } ;
struct TYPE_48__ {TYPE_25__ subdev; } ;
struct TYPE_45__ {int entity; } ;
struct TYPE_46__ {TYPE_23__ subdev; } ;
struct TYPE_43__ {int entity; } ;
struct TYPE_34__ {int entity; } ;
struct TYPE_35__ {TYPE_13__ video; } ;
struct TYPE_32__ {int entity; } ;
struct TYPE_33__ {TYPE_11__ video; } ;
struct TYPE_44__ {TYPE_21__ subdev; TYPE_14__ video_out; TYPE_12__ video_in; } ;
struct TYPE_40__ {int entity; } ;
struct TYPE_60__ {int entity; } ;
struct TYPE_31__ {TYPE_9__ video; } ;
struct TYPE_58__ {int entity; } ;
struct TYPE_59__ {TYPE_7__ video; } ;
struct TYPE_42__ {TYPE_19__ subdev; TYPE_10__ video_out; TYPE_8__ video_in; } ;
struct TYPE_38__ {int entity; } ;
struct TYPE_54__ {int entity; } ;
struct TYPE_55__ {TYPE_3__ video; } ;
struct TYPE_39__ {TYPE_17__ subdev; TYPE_4__ video_in; } ;
struct TYPE_36__ {int entity; } ;
struct TYPE_41__ {int entity; } ;
struct TYPE_52__ {TYPE_1__ video; } ;
struct TYPE_37__ {TYPE_15__ subdev; TYPE_2__ video_out; } ;
struct isp_device {TYPE_30__ isp_hist; TYPE_28__ isp_ccdc; TYPE_26__ isp_af; TYPE_24__ isp_aewb; TYPE_22__ isp_res; TYPE_20__ isp_prev; TYPE_18__ isp_ccp2; TYPE_16__ isp_csi2a; } ;


 int CCDC_PAD_SINK ;
 int CCDC_PAD_SOURCE_OF ;
 int CCDC_PAD_SOURCE_VP ;
 int CCP2_PAD_SINK ;
 int CCP2_PAD_SOURCE ;
 int CSI2_PAD_SOURCE ;
 int MEDIA_LNK_FL_ENABLED ;
 int MEDIA_LNK_FL_IMMUTABLE ;
 int PREV_PAD_SINK ;
 int PREV_PAD_SOURCE ;
 int RESZ_PAD_SINK ;
 int RESZ_PAD_SOURCE ;
 int media_create_pad_link (int *,int ,int *,int ,int) ;

__attribute__((used)) static int isp_create_links(struct isp_device *isp)
{
 int ret;


 ret = media_create_pad_link(
   &isp->isp_csi2a.subdev.entity, CSI2_PAD_SOURCE,
   &isp->isp_csi2a.video_out.video.entity, 0, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_ccp2.video_in.video.entity, 0,
   &isp->isp_ccp2.subdev.entity, CCP2_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_ccdc.subdev.entity, CCDC_PAD_SOURCE_OF,
   &isp->isp_ccdc.video_out.video.entity, 0, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_prev.video_in.video.entity, 0,
   &isp->isp_prev.subdev.entity, PREV_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_prev.subdev.entity, PREV_PAD_SOURCE,
   &isp->isp_prev.video_out.video.entity, 0, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_res.video_in.video.entity, 0,
   &isp->isp_res.subdev.entity, RESZ_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_res.subdev.entity, RESZ_PAD_SOURCE,
   &isp->isp_res.video_out.video.entity, 0, 0);

 if (ret < 0)
  return ret;


 ret = media_create_pad_link(
   &isp->isp_csi2a.subdev.entity, CSI2_PAD_SOURCE,
   &isp->isp_ccdc.subdev.entity, CCDC_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_ccp2.subdev.entity, CCP2_PAD_SOURCE,
   &isp->isp_ccdc.subdev.entity, CCDC_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_ccdc.subdev.entity, CCDC_PAD_SOURCE_VP,
   &isp->isp_prev.subdev.entity, PREV_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_ccdc.subdev.entity, CCDC_PAD_SOURCE_OF,
   &isp->isp_res.subdev.entity, RESZ_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_prev.subdev.entity, PREV_PAD_SOURCE,
   &isp->isp_res.subdev.entity, RESZ_PAD_SINK, 0);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_ccdc.subdev.entity, CCDC_PAD_SOURCE_VP,
   &isp->isp_aewb.subdev.entity, 0,
   MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_ccdc.subdev.entity, CCDC_PAD_SOURCE_VP,
   &isp->isp_af.subdev.entity, 0,
   MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE);
 if (ret < 0)
  return ret;

 ret = media_create_pad_link(
   &isp->isp_ccdc.subdev.entity, CCDC_PAD_SOURCE_VP,
   &isp->isp_hist.subdev.entity, 0,
   MEDIA_LNK_FL_ENABLED | MEDIA_LNK_FL_IMMUTABLE);
 if (ret < 0)
  return ret;

 return 0;
}
