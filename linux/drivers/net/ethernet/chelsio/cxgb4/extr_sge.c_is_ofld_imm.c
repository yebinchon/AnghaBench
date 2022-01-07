
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_request_hdr {int wr_hi; } ;
struct sk_buff {scalar_t__ len; scalar_t__ data; } ;


 unsigned long FW_CRYPTO_LOOKASIDE_WR ;
 unsigned long FW_WR_OP_G (int ) ;
 scalar_t__ MAX_IMM_TX_PKT_LEN ;
 scalar_t__ SGE_MAX_WR_LEN ;
 int ntohl (int ) ;

__attribute__((used)) static inline int is_ofld_imm(const struct sk_buff *skb)
{
 struct work_request_hdr *req = (struct work_request_hdr *)skb->data;
 unsigned long opcode = FW_WR_OP_G(ntohl(req->wr_hi));

 if (opcode == FW_CRYPTO_LOOKASIDE_WR)
  return skb->len <= SGE_MAX_WR_LEN;
 else
  return skb->len <= MAX_IMM_TX_PKT_LEN;
}
