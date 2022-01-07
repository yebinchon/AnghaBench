
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct eth_classify_header {int rule_cnt; int echo; } ;


 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline void bnx2x_rx_mode_set_rdata_hdr_e2(u32 cid,
    struct eth_classify_header *hdr,
    u8 rule_cnt)
{
 hdr->echo = cpu_to_le32(cid);
 hdr->rule_cnt = rule_cnt;
}
