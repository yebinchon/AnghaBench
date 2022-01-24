#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct htt_security_indication {int flags; int /*<<< orphan*/  peer_id; } ;
struct ath10k_peer {int /*<<< orphan*/  tids_last_pn; int /*<<< orphan*/  tids_last_pn_valid; TYPE_1__* rx_pn; } ;
struct ath10k {int /*<<< orphan*/  data_lock; } ;
typedef  enum htt_txrx_sec_cast_type { ____Placeholder_htt_txrx_sec_cast_type } htt_txrx_sec_cast_type ;
typedef  enum htt_security_types { ____Placeholder_htt_security_types } htt_security_types ;
struct TYPE_2__ {int sec_type; int /*<<< orphan*/  pn_len; } ;

/* Variables and functions */
 int HTT_SECURITY_IS_UNICAST ; 
 int /*<<< orphan*/  HTT_SECURITY_TYPE ; 
 int HTT_TXRX_SEC_MCAST ; 
 int HTT_TXRX_SEC_UCAST ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct ath10k_peer* FUNC3 (struct ath10k*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ath10k *ar,
					  struct htt_security_indication *ev)
{
	enum htt_txrx_sec_cast_type sec_index;
	enum htt_security_types sec_type;
	struct ath10k_peer *peer;

	FUNC6(&ar->data_lock);

	peer = FUNC3(ar, FUNC1(ev->peer_id));
	if (!peer) {
		FUNC4(ar, "failed to find peer id %d for security indication",
			    FUNC1(ev->peer_id));
		goto out;
	}

	sec_type = FUNC0(ev->flags, HTT_SECURITY_TYPE);

	if (ev->flags & HTT_SECURITY_IS_UNICAST)
		sec_index = HTT_TXRX_SEC_UCAST;
	else
		sec_index = HTT_TXRX_SEC_MCAST;

	peer->rx_pn[sec_index].sec_type = sec_type;
	peer->rx_pn[sec_index].pn_len = FUNC2(sec_type);

	FUNC5(peer->tids_last_pn_valid, 0, sizeof(peer->tids_last_pn_valid));
	FUNC5(peer->tids_last_pn, 0, sizeof(peer->tids_last_pn));

out:
	FUNC7(&ar->data_lock);
}