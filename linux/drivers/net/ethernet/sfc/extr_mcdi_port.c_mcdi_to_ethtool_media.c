
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
 int PORT_FIBRE ;
 int PORT_OTHER ;
 int PORT_TP ;

__attribute__((used)) static u8 mcdi_to_ethtool_media(u32 media)
{
 switch (media) {
 case 129:
 case 133:
 case 132:
  return PORT_OTHER;

 case 128:
 case 130:
 case 131:
  return PORT_FIBRE;

 case 134:
  return PORT_TP;

 default:
  return PORT_OTHER;
 }
}
