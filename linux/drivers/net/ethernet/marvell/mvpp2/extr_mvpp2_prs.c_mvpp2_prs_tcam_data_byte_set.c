
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int* tcam; } ;


 int BITS_PER_BYTE ;
 int MVPP2_PRS_BYTE_IN_WORD (unsigned int) ;
 size_t MVPP2_PRS_BYTE_TO_WORD (unsigned int) ;
 int MVPP2_PRS_TCAM_EN (unsigned char) ;

__attribute__((used)) static void mvpp2_prs_tcam_data_byte_set(struct mvpp2_prs_entry *pe,
      unsigned int offs, unsigned char byte,
      unsigned char enable)
{
 int pos = MVPP2_PRS_BYTE_IN_WORD(offs) * BITS_PER_BYTE;

 pe->tcam[MVPP2_PRS_BYTE_TO_WORD(offs)] &= ~(0xff << pos);
 pe->tcam[MVPP2_PRS_BYTE_TO_WORD(offs)] &= ~(MVPP2_PRS_TCAM_EN(0xff) << pos);
 pe->tcam[MVPP2_PRS_BYTE_TO_WORD(offs)] |= byte << pos;
 pe->tcam[MVPP2_PRS_BYTE_TO_WORD(offs)] |= MVPP2_PRS_TCAM_EN(enable << pos);
}
