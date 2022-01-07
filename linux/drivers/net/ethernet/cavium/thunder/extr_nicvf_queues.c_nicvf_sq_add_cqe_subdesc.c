
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct sq_imm_subdesc {int post_cqe; int dont_send; int tot_len; int rsvd2; int len; int subdesc_type; scalar_t__ subdesc_cnt; } ;
struct sq_hdr_subdesc {int post_cqe; int dont_send; int tot_len; int rsvd2; int len; int subdesc_type; scalar_t__ subdesc_cnt; } ;
struct snd_queue {scalar_t__* skbuff; } ;
struct sk_buff {int dummy; } ;


 scalar_t__ GET_SQ_DESC (struct snd_queue*,int) ;
 scalar_t__ POST_CQE_DESC_COUNT ;
 int SND_QUEUE_DESC_SIZE ;
 int SQ_DESC_TYPE_HEADER ;
 int SQ_DESC_TYPE_IMMEDIATE ;
 int memset (struct sq_imm_subdesc*,int ,int ) ;
 int nicvf_get_nxt_sqentry (struct snd_queue*,int) ;

__attribute__((used)) static inline void nicvf_sq_add_cqe_subdesc(struct snd_queue *sq, int qentry,
         int tso_sqe, struct sk_buff *skb)
{
 struct sq_imm_subdesc *imm;
 struct sq_hdr_subdesc *hdr;

 sq->skbuff[qentry] = (u64)skb;

 hdr = (struct sq_hdr_subdesc *)GET_SQ_DESC(sq, qentry);
 memset(hdr, 0, SND_QUEUE_DESC_SIZE);
 hdr->subdesc_type = SQ_DESC_TYPE_HEADER;

 hdr->post_cqe = 1;

 hdr->dont_send = 1;
 hdr->subdesc_cnt = POST_CQE_DESC_COUNT - 1;
 hdr->tot_len = 1;

 hdr->rsvd2 = tso_sqe;

 qentry = nicvf_get_nxt_sqentry(sq, qentry);
 imm = (struct sq_imm_subdesc *)GET_SQ_DESC(sq, qentry);
 memset(imm, 0, SND_QUEUE_DESC_SIZE);
 imm->subdesc_type = SQ_DESC_TYPE_IMMEDIATE;
 imm->len = 1;
}
