
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gspca_dev {int dummy; } ;
typedef int __u32 ;


 int gspca_dbg (struct gspca_dev*,int,char*,char*,int,int,int,...) ;

__attribute__((used)) static void PDEBUG_MODE(struct gspca_dev *gspca_dev, int debug, char *txt,
   __u32 pixfmt, int w, int h)
{
 if ((pixfmt >> 24) >= '0' && (pixfmt >> 24) <= 'z') {
  gspca_dbg(gspca_dev, debug, "%s %c%c%c%c %dx%d\n",
     txt,
     pixfmt & 0xff,
     (pixfmt >> 8) & 0xff,
     (pixfmt >> 16) & 0xff,
     pixfmt >> 24,
     w, h);
 } else {
  gspca_dbg(gspca_dev, debug, "%s 0x%08x %dx%d\n",
     txt,
     pixfmt,
     w, h);
 }
}
