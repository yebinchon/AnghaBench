
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int* tcam; } ;


 int BITS_PER_BYTE ;
 int MVPP2_PRS_BYTE_IN_WORD (unsigned int) ;
 size_t MVPP2_PRS_BYTE_TO_WORD (unsigned int) ;

void mvpp2_prs_tcam_data_byte_get(struct mvpp2_prs_entry *pe,
      unsigned int offs, unsigned char *byte,
      unsigned char *enable)
{
 int pos = MVPP2_PRS_BYTE_IN_WORD(offs) * BITS_PER_BYTE;

 *byte = (pe->tcam[MVPP2_PRS_BYTE_TO_WORD(offs)] >> pos) & 0xff;
 *enable = (pe->tcam[MVPP2_PRS_BYTE_TO_WORD(offs)] >> (pos + 16)) & 0xff;
}
