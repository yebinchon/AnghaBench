
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct yam_mcs {int bitrate; unsigned char* bits; struct yam_mcs* next; } ;


 int YAM_1200 ;
 int YAM_9600 ;
 unsigned char* add_mcs (int *,int,int ) ;
 struct yam_mcs* yam_data ;

__attribute__((used)) static unsigned char *get_mcs(int bitrate)
{
 struct yam_mcs *p;

 p = yam_data;
 while (p) {
  if (p->bitrate == bitrate)
   return p->bits;
  p = p->next;
 }


 switch (bitrate) {
 case 1200:

  return add_mcs(((void*)0), bitrate, YAM_1200);
 default:

  return add_mcs(((void*)0), bitrate, YAM_9600);
 }
}
