
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;



 int DIRECTIONAL_MSK ;



__attribute__((used)) static char *get_dma_direction(u32 status)
{
 switch (status & DIRECTIONAL_MSK) {
 case 129: return "Input";
 case 128: return "Output";
 case 130: return "Bidirectional";
 }
 return "";
}
