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
typedef  void* u32 ;
struct ieee80211_mgmt {int /*<<< orphan*/  da; } ;
struct ath6kl_vif {int /*<<< orphan*/  fw_vif_idx; struct ath6kl* ar; } ;
struct ath6kl_sta {int sta_flags; scalar_t__ mgmt_psq_len; int /*<<< orphan*/  psq_lock; int /*<<< orphan*/  psq; int /*<<< orphan*/  aid; int /*<<< orphan*/  mgmt_psq; } ;
struct ath6kl_mgmt_buff {size_t len; int no_cck; int /*<<< orphan*/  list; int /*<<< orphan*/  buf; void* wait; void* freq; void* id; } ;
struct ath6kl {int /*<<< orphan*/  wmi; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int STA_PS_POLLED ; 
 int STA_PS_SLEEP ; 
 struct ath6kl_sta* FUNC1 (struct ath6kl_vif*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 struct ath6kl_mgmt_buff* FUNC4 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,size_t) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool FUNC10(struct ath6kl_vif *vif,
				     u32 id,
				     u32 freq,
				     u32 wait,
				     const u8 *buf,
				     size_t len,
				     bool *more_data,
				     bool no_cck)
{
	struct ieee80211_mgmt *mgmt;
	struct ath6kl_sta *conn;
	bool is_psq_empty = false;
	struct ath6kl_mgmt_buff *mgmt_buf;
	size_t mgmt_buf_size;
	struct ath6kl *ar = vif->ar;

	mgmt = (struct ieee80211_mgmt *) buf;
	if (FUNC3(mgmt->da))
		return false;

	conn = FUNC1(vif, mgmt->da);
	if (!conn)
		return false;

	if (conn->sta_flags & STA_PS_SLEEP) {
		if (!(conn->sta_flags & STA_PS_POLLED)) {
			/* Queue the frames if the STA is sleeping */
			mgmt_buf_size = len + sizeof(struct ath6kl_mgmt_buff);
			mgmt_buf = FUNC4(mgmt_buf_size, GFP_KERNEL);
			if (!mgmt_buf)
				return false;

			FUNC0(&mgmt_buf->list);
			mgmt_buf->id = id;
			mgmt_buf->freq = freq;
			mgmt_buf->wait = wait;
			mgmt_buf->len = len;
			mgmt_buf->no_cck = no_cck;
			FUNC6(mgmt_buf->buf, buf, len);
			FUNC8(&conn->psq_lock);
			is_psq_empty = FUNC7(&conn->psq) &&
					(conn->mgmt_psq_len == 0);
			FUNC5(&mgmt_buf->list, &conn->mgmt_psq);
			conn->mgmt_psq_len++;
			FUNC9(&conn->psq_lock);

			/*
			 * If this is the first pkt getting queued
			 * for this STA, update the PVB for this
			 * STA.
			 */
			if (is_psq_empty)
				FUNC2(ar->wmi, vif->fw_vif_idx,
						       conn->aid, 1);
			return true;
		}

		/*
		 * This tx is because of a PsPoll.
		 * Determine if MoreData bit has to be set.
		 */
		FUNC8(&conn->psq_lock);
		if (!FUNC7(&conn->psq) || (conn->mgmt_psq_len != 0))
			*more_data = true;
		FUNC9(&conn->psq_lock);
	}

	return false;
}