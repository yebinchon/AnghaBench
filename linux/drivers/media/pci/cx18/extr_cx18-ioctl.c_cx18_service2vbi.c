
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int CX18_SLICED_TYPE_CAPTION_525 ;
 int CX18_SLICED_TYPE_TELETEXT_B ;
 int CX18_SLICED_TYPE_VPS ;
 int CX18_SLICED_TYPE_WSS_625 ;





u16 cx18_service2vbi(int type)
{
 switch (type) {
 case 130:
  return CX18_SLICED_TYPE_TELETEXT_B;
 case 131:
  return CX18_SLICED_TYPE_CAPTION_525;
 case 128:
  return CX18_SLICED_TYPE_WSS_625;
 case 129:
  return CX18_SLICED_TYPE_VPS;
 default:
  return 0;
 }
}
