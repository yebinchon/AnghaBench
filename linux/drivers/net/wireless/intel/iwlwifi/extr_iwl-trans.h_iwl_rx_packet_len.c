
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_rx_packet {int len_n_flags; } ;


 int FH_RSCSR_FRAME_SIZE_MSK ;
 int le32_to_cpu (int ) ;

__attribute__((used)) static inline u32 iwl_rx_packet_len(const struct iwl_rx_packet *pkt)
{
 return le32_to_cpu(pkt->len_n_flags) & FH_RSCSR_FRAME_SIZE_MSK;
}
