
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mjpeg_header {int length; int sample_precision; int frame_width; int frame_height; int nb_of_components; } ;


 int snprintf (char*,unsigned int,char*,int,int,int,int,int) ;

__attribute__((used)) static char *header_str(struct mjpeg_header *header,
   char *str,
   unsigned int len)
{
 char *cur = str;
 unsigned int left = len;

 if (!header)
  return "";

 snprintf(cur, left, "[MJPEG header]\n"
   "|- length     = %d\n"
   "|- precision  = %d\n"
   "|- width      = %d\n"
   "|- height     = %d\n"
   "|- components = %d\n",
   header->length,
   header->sample_precision,
   header->frame_width,
   header->frame_height,
   header->nb_of_components);

 return str;
}
