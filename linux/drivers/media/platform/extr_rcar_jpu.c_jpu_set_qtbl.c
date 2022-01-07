
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jpu {int dummy; } ;


 int JCQTBL (int) ;
 int QTBL_SIZE ;
 int jpu_set_tbl (struct jpu*,int ,int ,int ) ;
 int * qtbl_chr ;
 int * qtbl_lum ;

__attribute__((used)) static void jpu_set_qtbl(struct jpu *jpu, unsigned short quality)
{
 jpu_set_tbl(jpu, JCQTBL(0), qtbl_lum[quality], QTBL_SIZE);
 jpu_set_tbl(jpu, JCQTBL(1), qtbl_chr[quality], QTBL_SIZE);
}
