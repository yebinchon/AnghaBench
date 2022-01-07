
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int JPU_JPEG_HACTBL_CHR_OFFSET ;
 int JPU_JPEG_HACTBL_LUM_OFFSET ;
 int JPU_JPEG_HACTBL_SIZE ;
 int JPU_JPEG_HDCTBL_CHR_OFFSET ;
 int JPU_JPEG_HDCTBL_LUM_OFFSET ;
 int JPU_JPEG_HDCTBL_SIZE ;
 int JPU_JPEG_QTBL_CHR_OFFSET ;
 int JPU_JPEG_QTBL_LUM_OFFSET ;
 scalar_t__ hactbl_chr ;
 scalar_t__ hactbl_lum ;
 scalar_t__ hdctbl_chr ;
 scalar_t__ hdctbl_lum ;
 int put_htbl (unsigned char*,int const*,int ) ;
 int put_qtbl (unsigned char*,int const*) ;
 scalar_t__* qtbl_chr ;
 scalar_t__* qtbl_lum ;

__attribute__((used)) static void jpu_generate_hdr(unsigned short quality, unsigned char *p)
{
 put_qtbl(p + JPU_JPEG_QTBL_LUM_OFFSET, (const u8 *)qtbl_lum[quality]);
 put_qtbl(p + JPU_JPEG_QTBL_CHR_OFFSET, (const u8 *)qtbl_chr[quality]);

 put_htbl(p + JPU_JPEG_HDCTBL_LUM_OFFSET, (const u8 *)hdctbl_lum,
   JPU_JPEG_HDCTBL_SIZE);
 put_htbl(p + JPU_JPEG_HACTBL_LUM_OFFSET, (const u8 *)hactbl_lum,
   JPU_JPEG_HACTBL_SIZE);

 put_htbl(p + JPU_JPEG_HDCTBL_CHR_OFFSET, (const u8 *)hdctbl_chr,
   JPU_JPEG_HDCTBL_SIZE);
 put_htbl(p + JPU_JPEG_HACTBL_CHR_OFFSET, (const u8 *)hactbl_chr,
   JPU_JPEG_HACTBL_SIZE);
}
