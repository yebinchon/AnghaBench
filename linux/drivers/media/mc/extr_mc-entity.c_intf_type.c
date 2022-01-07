
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct media_interface {int type; } ;
__attribute__((used)) static inline const char *intf_type(struct media_interface *intf)
{
 switch (intf->type) {
 case 135:
  return "dvb-frontend";
 case 137:
  return "dvb-demux";
 case 136:
  return "dvb-dvr";
 case 138:
  return "dvb-ca";
 case 134:
  return "dvb-net";
 case 128:
  return "v4l-video";
 case 129:
  return "v4l-vbi";
 case 133:
  return "v4l-radio";
 case 132:
  return "v4l-subdev";
 case 131:
  return "v4l-swradio";
 case 130:
  return "v4l-touch";
 default:
  return "unknown-intf";
 }
}
