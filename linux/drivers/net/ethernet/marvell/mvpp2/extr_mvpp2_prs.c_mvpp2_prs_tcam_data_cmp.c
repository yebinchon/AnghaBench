
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct mvpp2_prs_entry {int* tcam; } ;


 size_t MVPP2_PRS_BYTE_TO_WORD (int) ;

__attribute__((used)) static bool mvpp2_prs_tcam_data_cmp(struct mvpp2_prs_entry *pe, int offs,
        u16 data)
{
 u16 tcam_data;

 tcam_data = pe->tcam[MVPP2_PRS_BYTE_TO_WORD(offs)] & 0xffff;
 return tcam_data == data;
}
