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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct wil_rx_status_extended {int dummy; } ;
struct wil_rx_status_compressed {int dummy; } ;
struct wil_net_stats {int /*<<< orphan*/  rx_non_data_frame; } ;
struct wil6210_vif {int dummy; } ;
struct wil6210_priv {scalar_t__ use_compressed_rx_status; struct wil6210_vif** vifs; } ;
struct sk_buff {void const* data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DUMP_PREFIX_NONE ; 
 int /*<<< orphan*/  DUMP_PREFIX_OFFSET ; 
 int EAGAIN ; 
 scalar_t__ IEEE80211_FTYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct wil6210_priv*,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int,int,void const*,int,int) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (struct wil6210_priv*,struct wil6210_vif*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct wil6210_priv*,void*) ; 
 scalar_t__ FUNC8 (struct wil6210_priv*,void*) ; 
 int FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (struct wil6210_priv*,void*) ; 
 int FUNC11 (void*) ; 

__attribute__((used)) static int FUNC12(struct wil6210_priv *wil, void *msg, int cid,
			 struct sk_buff *skb, struct wil_net_stats *stats)
{
	u8 ftype;
	u8 fc1;
	int mid;
	int tid;
	u16 seq;
	struct wil6210_vif *vif;

	ftype = FUNC8(wil, msg);
	if (ftype == IEEE80211_FTYPE_DATA)
		return 0;

	fc1 = FUNC7(wil, msg);
	mid = FUNC9(msg);
	tid = FUNC11(msg);
	seq = FUNC0(FUNC10(wil, msg));
	vif = wil->vifs[mid];

	if (FUNC2(!vif)) {
		FUNC3(wil, "RX descriptor with invalid mid %d", mid);
		return -EAGAIN;
	}

	FUNC3(wil,
		     "Non-data frame FC[7:0] 0x%02x MID %d CID %d TID %d Seq 0x%03x\n",
		     fc1, mid, cid, tid, seq);
	if (stats)
		stats->rx_non_data_frame++;
	if (FUNC5(fc1)) {
		FUNC3(wil,
			     "BAR: MID %d CID %d TID %d Seq 0x%03x\n",
			     mid, cid, tid, seq);
		FUNC6(wil, vif, cid, tid, seq);
	} else {
		u32 sz = wil->use_compressed_rx_status ?
			sizeof(struct wil_rx_status_compressed) :
			sizeof(struct wil_rx_status_extended);

		/* print again all info. One can enable only this
		 * without overhead for printing every Rx frame
		 */
		FUNC3(wil,
			     "Unhandled non-data frame FC[7:0] 0x%02x MID %d CID %d TID %d Seq 0x%03x\n",
			     fc1, mid, cid, tid, seq);
		FUNC4("RxS ", DUMP_PREFIX_NONE, 32, 4,
				  (const void *)msg, sz, false);
		FUNC4("Rx ", DUMP_PREFIX_OFFSET, 16, 1,
				  skb->data, FUNC1(skb), false);
	}

	return -EAGAIN;
}