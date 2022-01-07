
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *dma_mode_name(unsigned int mode)
{
 switch (mode) {
 case 129:
  return "memcpy";
 case 130:
  return "contig";
 case 128:
  return "sg";
 default:
  return "unknown";
 }
}
