
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int* coda_filler_size ;
 int coda_h264_filler_nal (int,char*) ;

int coda_h264_padding(int size, char *p)
{
 int nal_size;
 int diff;

 diff = size - (size & ~0x7);
 if (diff == 0)
  return 0;

 nal_size = coda_filler_size[diff];
 coda_h264_filler_nal(nal_size, p);

 return nal_size;
}
