
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int JPEG_QT0_OFFSET ;
 int JPEG_QT1_OFFSET ;
 int* jpeg_head ;

__attribute__((used)) static void jpeg_set_qual(u8 *jpeg_hdr,
     int quality)
{
 int i, sc;

 if (quality <= 0)
  sc = 5000;
 else if (quality < 50)
  sc = 5000 / quality;
 else
  sc = 200 - quality * 2;
 for (i = 0; i < 64; i++) {
  jpeg_hdr[JPEG_QT0_OFFSET + i] =
   (jpeg_head[JPEG_QT0_OFFSET + i] * sc + 50) / 100;
  jpeg_hdr[JPEG_QT1_OFFSET + i] =
   (jpeg_head[JPEG_QT1_OFFSET + i] * sc + 50) / 100;
 }
}
