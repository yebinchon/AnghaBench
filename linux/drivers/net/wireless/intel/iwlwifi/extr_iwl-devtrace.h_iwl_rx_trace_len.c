
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct iwl_trans {scalar_t__ rx_mpdu_cmd; int rx_mpdu_cmd_hdr_size; } ;
struct iwl_cmd_header {scalar_t__ cmd; } ;
struct ieee80211_hdr {int frame_control; } ;
typedef int __le32 ;


 size_t ieee80211_hdrlen (int ) ;
 int ieee80211_is_data (int ) ;

__attribute__((used)) static inline size_t iwl_rx_trace_len(const struct iwl_trans *trans,
          void *rxbuf, size_t len,
          size_t *out_hdr_offset)
{
 struct iwl_cmd_header *cmd = (void *)((u8 *)rxbuf + sizeof(__le32));
 struct ieee80211_hdr *hdr = ((void*)0);
 size_t hdr_offset;

 if (cmd->cmd != trans->rx_mpdu_cmd)
  return len;

 hdr_offset = sizeof(struct iwl_cmd_header) +
       trans->rx_mpdu_cmd_hdr_size;

 if (out_hdr_offset)
  *out_hdr_offset = hdr_offset;

 hdr = (void *)((u8 *)cmd + hdr_offset);
 if (!ieee80211_is_data(hdr->frame_control))
  return len;

 return sizeof(__le32) + sizeof(*cmd) + trans->rx_mpdu_cmd_hdr_size +
  ieee80211_hdrlen(hdr->frame_control);
}
