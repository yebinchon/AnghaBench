
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int memset (char*,int,int) ;

int coda_h264_filler_nal(int size, char *p)
{
 if (size < 6)
  return -EINVAL;

 p[0] = 0x00;
 p[1] = 0x00;
 p[2] = 0x00;
 p[3] = 0x01;
 p[4] = 0x0c;
 memset(p + 5, 0xff, size - 6);

 p[size - 1] = 0x80;

 return 0;
}
