
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pwc_dec23_private {unsigned char const* stream; unsigned char** table_0004_pass1; unsigned char** table_8004_pass1; unsigned char** table_0004_pass2; unsigned char** table_8004_pass2; int scalebits; int temp_colors; scalar_t__ nbits_in_reservoir; scalar_t__ reservoir; } ;


 int copy_image_block_CrCb (int ,unsigned char*,unsigned int,int ) ;
 int copy_image_block_Y (int ,unsigned char*,unsigned int,int ) ;
 int decode_block (struct pwc_dec23_private*,unsigned char const*,unsigned char const*) ;
 int get_nbits (struct pwc_dec23_private*,int,int) ;

__attribute__((used)) static void DecompressBand23(struct pwc_dec23_private *pdec,
        const unsigned char *rawyuv,
        unsigned char *planar_y,
        unsigned char *planar_u,
        unsigned char *planar_v,
        unsigned int compressed_image_width,
        unsigned int real_image_width)
{
 int compression_index, nblocks;
 const unsigned char *ptable0004;
 const unsigned char *ptable8004;

 pdec->reservoir = 0;
 pdec->nbits_in_reservoir = 0;
 pdec->stream = rawyuv + 1;

 get_nbits(pdec, 4, compression_index);


 nblocks = compressed_image_width / 4;

 ptable0004 = pdec->table_0004_pass1[compression_index];
 ptable8004 = pdec->table_8004_pass1[compression_index];


 while (nblocks) {
  decode_block(pdec, ptable0004, ptable8004);
  copy_image_block_Y(pdec->temp_colors, planar_y, real_image_width, pdec->scalebits);
  planar_y += 4;
  nblocks--;
 }


 nblocks = compressed_image_width / 8;

 ptable0004 = pdec->table_0004_pass2[compression_index];
 ptable8004 = pdec->table_8004_pass2[compression_index];


 while (nblocks) {
  decode_block(pdec, ptable0004, ptable8004);
  copy_image_block_CrCb(pdec->temp_colors, planar_u, real_image_width/2, pdec->scalebits);

  decode_block(pdec, ptable0004, ptable8004);
  copy_image_block_CrCb(pdec->temp_colors, planar_v, real_image_width/2, pdec->scalebits);

  planar_v += 8;
  planar_u += 8;
  nblocks -= 2;
 }

}
