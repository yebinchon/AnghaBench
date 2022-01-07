
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char SDIO_DTSx_SET_TYPE_A ;
 unsigned char SDIO_DTSx_SET_TYPE_B ;
 unsigned char SDIO_DTSx_SET_TYPE_C ;
 unsigned char SDIO_DTSx_SET_TYPE_D ;

__attribute__((used)) static unsigned char host_drive_to_sdio_drive(int host_strength)
{
 switch (host_strength) {
 case 131:
  return SDIO_DTSx_SET_TYPE_A;
 case 130:
  return SDIO_DTSx_SET_TYPE_B;
 case 129:
  return SDIO_DTSx_SET_TYPE_C;
 case 128:
  return SDIO_DTSx_SET_TYPE_D;
 default:
  return SDIO_DTSx_SET_TYPE_B;
 }
}
