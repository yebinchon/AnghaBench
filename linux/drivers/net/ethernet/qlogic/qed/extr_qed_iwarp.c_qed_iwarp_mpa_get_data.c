
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct unaligned_opaque_data {int cid; scalar_t__ first_mpa_offset; scalar_t__ tcp_payload_offset; } ;
struct qed_hwfn {int dummy; } ;


 int HILO_64 (int ,int ) ;
 scalar_t__ le16_to_cpu (scalar_t__) ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static void
qed_iwarp_mpa_get_data(struct qed_hwfn *p_hwfn,
         struct unaligned_opaque_data *curr_pkt,
         u32 opaque_data0, u32 opaque_data1)
{
 u64 opaque_data;

 opaque_data = HILO_64(opaque_data1, opaque_data0);
 *curr_pkt = *((struct unaligned_opaque_data *)&opaque_data);

 curr_pkt->first_mpa_offset = curr_pkt->tcp_payload_offset +
         le16_to_cpu(curr_pkt->first_mpa_offset);
 curr_pkt->cid = le32_to_cpu(curr_pkt->cid);
}
