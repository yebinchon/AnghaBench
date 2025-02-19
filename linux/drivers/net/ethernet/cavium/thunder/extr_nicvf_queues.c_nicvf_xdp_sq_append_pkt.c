
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u16 ;
struct snd_queue {int xdp_free_cnt; int xdp_desc_cnt; } ;
struct nicvf {int dummy; } ;


 int MIN_SQ_DESC_PER_PKT_XMIT ;
 int nicvf_get_nxt_sqentry (struct snd_queue*,int) ;
 int nicvf_get_sq_desc (struct snd_queue*,int) ;
 int nicvf_sq_add_gather_subdesc (struct snd_queue*,int,int ,int ) ;
 int nicvf_xdp_sq_add_hdr_subdesc (struct snd_queue*,int,int,int ,int ) ;

int nicvf_xdp_sq_append_pkt(struct nicvf *nic, struct snd_queue *sq,
       u64 bufaddr, u64 dma_addr, u16 len)
{
 int subdesc_cnt = MIN_SQ_DESC_PER_PKT_XMIT;
 int qentry;

 if (subdesc_cnt > sq->xdp_free_cnt)
  return 0;

 qentry = nicvf_get_sq_desc(sq, subdesc_cnt);

 nicvf_xdp_sq_add_hdr_subdesc(sq, qentry, subdesc_cnt - 1, bufaddr, len);

 qentry = nicvf_get_nxt_sqentry(sq, qentry);
 nicvf_sq_add_gather_subdesc(sq, qentry, len, dma_addr);

 sq->xdp_desc_cnt += subdesc_cnt;

 return 1;
}
