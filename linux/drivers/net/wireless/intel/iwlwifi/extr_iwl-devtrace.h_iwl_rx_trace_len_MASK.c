#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct iwl_trans {scalar_t__ rx_mpdu_cmd; int rx_mpdu_cmd_hdr_size; } ;
struct iwl_cmd_header {scalar_t__ cmd; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline size_t FUNC2(const struct iwl_trans *trans,
				      void *rxbuf, size_t len,
				      size_t *out_hdr_offset)
{
	struct iwl_cmd_header *cmd = (void *)((u8 *)rxbuf + sizeof(__le32));
	struct ieee80211_hdr *hdr = NULL;
	size_t hdr_offset;

	if (cmd->cmd != trans->rx_mpdu_cmd)
		return len;

	hdr_offset = sizeof(struct iwl_cmd_header) +
		     trans->rx_mpdu_cmd_hdr_size;

	if (out_hdr_offset)
		*out_hdr_offset = hdr_offset;

	hdr = (void *)((u8 *)cmd + hdr_offset);
	if (!FUNC1(hdr->frame_control))
		return len;
	/* maybe try to identify EAPOL frames? */
	return sizeof(__le32) + sizeof(*cmd) + trans->rx_mpdu_cmd_hdr_size +
		FUNC0(hdr->frame_control);
}