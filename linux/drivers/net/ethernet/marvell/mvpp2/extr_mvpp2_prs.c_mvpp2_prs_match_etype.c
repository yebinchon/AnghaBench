
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int dummy; } ;


 int mvpp2_prs_tcam_data_byte_set (struct mvpp2_prs_entry*,int,unsigned short,int) ;

__attribute__((used)) static void mvpp2_prs_match_etype(struct mvpp2_prs_entry *pe, int offset,
      unsigned short ethertype)
{
 mvpp2_prs_tcam_data_byte_set(pe, offset + 0, ethertype >> 8, 0xff);
 mvpp2_prs_tcam_data_byte_set(pe, offset + 1, ethertype & 0xff, 0xff);
}
