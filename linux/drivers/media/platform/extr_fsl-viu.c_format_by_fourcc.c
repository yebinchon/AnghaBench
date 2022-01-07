
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct viu_fmt {int pixelformat; } ;


 int NUM_FORMATS ;
 int dprintk (int ,char*,char*) ;
 struct viu_fmt* formats ;

__attribute__((used)) static struct viu_fmt *format_by_fourcc(int fourcc)
{
 int i;

 for (i = 0; i < NUM_FORMATS; i++) {
  if (formats[i].pixelformat == fourcc)
   return formats + i;
 }

 dprintk(0, "unknown pixelformat:'%4.4s'\n", (char *)&fourcc);
 return ((void*)0);
}
