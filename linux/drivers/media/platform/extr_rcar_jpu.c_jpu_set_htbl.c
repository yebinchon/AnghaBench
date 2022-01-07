
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpu {int dummy; } ;


 int HACTBL_SIZE ;
 int HDCTBL_SIZE ;
 int JCHTBA (int) ;
 int JCHTBD (int) ;
 int hactbl_chr ;
 int hactbl_lum ;
 int hdctbl_chr ;
 int hdctbl_lum ;
 int jpu_set_tbl (struct jpu*,int ,int ,int ) ;

__attribute__((used)) static void jpu_set_htbl(struct jpu *jpu)
{
 jpu_set_tbl(jpu, JCHTBD(0), hdctbl_lum, HDCTBL_SIZE);
 jpu_set_tbl(jpu, JCHTBA(0), hactbl_lum, HACTBL_SIZE);
 jpu_set_tbl(jpu, JCHTBD(1), hdctbl_chr, HDCTBL_SIZE);
 jpu_set_tbl(jpu, JCHTBA(1), hactbl_chr, HACTBL_SIZE);
}
