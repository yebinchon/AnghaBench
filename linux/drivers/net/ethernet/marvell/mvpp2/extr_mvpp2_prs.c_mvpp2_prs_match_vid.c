
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mvpp2_prs_entry {int dummy; } ;


 int mvpp2_prs_tcam_data_byte_set (struct mvpp2_prs_entry*,int,unsigned short,int) ;

__attribute__((used)) static void mvpp2_prs_match_vid(struct mvpp2_prs_entry *pe, int offset,
    unsigned short vid)
{
 mvpp2_prs_tcam_data_byte_set(pe, offset + 0, (vid & 0xf00) >> 8, 0xf);
 mvpp2_prs_tcam_data_byte_set(pe, offset + 1, vid & 0xff, 0xff);
}
