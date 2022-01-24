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
typedef  unsigned int u8 ;
typedef  unsigned int u16 ;
struct sk_buff {int dummy; } ;
struct napi_struct {int dummy; } ;
struct iwl_rx_cmd_buffer {int /*<<< orphan*/  truesize; } ;
struct iwl_mvm {int /*<<< orphan*/  hw; } ;
struct ieee80211_sta {int dummy; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct ieee80211_sta*,struct sk_buff*,struct napi_struct*) ; 
 void* FUNC2 (struct iwl_rx_cmd_buffer*) ; 
 int FUNC3 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,struct ieee80211_hdr*,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,unsigned int) ; 
 unsigned int FUNC8 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC9(struct iwl_mvm *mvm,
					    struct ieee80211_sta *sta,
					    struct napi_struct *napi,
					    struct sk_buff *skb,
					    struct ieee80211_hdr *hdr, u16 len,
					    u8 crypt_len,
					    struct iwl_rx_cmd_buffer *rxb)
{
	unsigned int hdrlen = FUNC0(hdr->frame_control);
	unsigned int fraglen;

	/*
	 * The 'hdrlen' (plus the 8 bytes for the SNAP and the crypt_len,
	 * but those are all multiples of 4 long) all goes away, but we
	 * want the *end* of it, which is going to be the start of the IP
	 * header, to be aligned when it gets pulled in.
	 * The beginning of the skb->data is aligned on at least a 4-byte
	 * boundary after allocation. Everything here is aligned at least
	 * on a 2-byte boundary so we can just take hdrlen & 3 and pad by
	 * the result.
	 */
	FUNC7(skb, hdrlen & 3);

	/* If frame is small enough to fit in skb->head, pull it completely.
	 * If not, only pull ieee80211_hdr (including crypto if present, and
	 * an additional 8 bytes for SNAP/ethertype, see below) so that
	 * splice() or TCP coalesce are more efficient.
	 *
	 * Since, in addition, ieee80211_data_to_8023() always pull in at
	 * least 8 bytes (possibly more for mesh) we can do the same here
	 * to save the cost of doing it later. That still doesn't pull in
	 * the actual IP header since the typical case has a SNAP header.
	 * If the latter changes (there are efforts in the standards group
	 * to do so) we should revisit this and ieee80211_data_to_8023().
	 */
	hdrlen = (len <= FUNC8(skb)) ? len : hdrlen + crypt_len + 8;

	FUNC6(skb, hdr, hdrlen);
	fraglen = len - hdrlen;

	if (fraglen) {
		int offset = (void *)hdr + hdrlen -
			     FUNC2(rxb) + FUNC3(rxb);

		FUNC5(skb, 0, FUNC4(rxb), offset,
				fraglen, rxb->truesize);
	}

	FUNC1(mvm->hw, sta, skb, napi);
}