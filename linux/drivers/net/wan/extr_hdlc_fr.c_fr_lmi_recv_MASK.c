#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int len; int* data; } ;
struct TYPE_4__ {unsigned int new; int deleted; int exist; unsigned int active; int bandwidth; } ;
struct pvc_device {struct pvc_device* next; TYPE_1__ state; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  hdlc_device ;
struct TYPE_5__ {int lmi; int dce; scalar_t__ n391; } ;
struct TYPE_6__ {int rxseq; int txseq; int fullrep_sent; int dce_changed; int request; TYPE_2__ settings; scalar_t__ n391cnt; struct pvc_device* first_pvc; int /*<<< orphan*/  reliable; int /*<<< orphan*/  last_poll; } ;

/* Variables and functions */
 int LMI_ANSI ; 
 int LMI_ANSI_CISCO_ALIVE ; 
 int LMI_ANSI_CISCO_PVCSTAT ; 
 int LMI_ANSI_CISCO_REPTYPE ; 
 int LMI_ANSI_LENGTH ; 
 int LMI_ANSI_LOCKSHIFT ; 
 int LMI_CALLREF ; 
 int LMI_CCITT ; 
 int LMI_CCITT_ALIVE ; 
 int LMI_CCITT_CISCO_LENGTH ; 
 int LMI_CCITT_PVCSTAT ; 
 int LMI_CCITT_REPTYPE ; 
 int LMI_CISCO ; 
 int LMI_FULLREP ; 
 int LMI_INTEGRITY ; 
 int LMI_INTEG_LEN ; 
 int LMI_REPT_LEN ; 
 int LMI_STATUS ; 
 int LMI_STATUS_ENQUIRY ; 
 int NLPID_CCITT_ANSI_LMI ; 
 int NLPID_CISCO_LMI ; 
 struct pvc_device* FUNC0 (struct net_device*,int) ; 
 int /*<<< orphan*/ * FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct pvc_device*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned int,struct pvc_device*) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct net_device *dev, struct sk_buff *skb)
{
	hdlc_device *hdlc = FUNC1(dev);
	struct pvc_device *pvc;
	u8 rxseq, txseq;
	int lmi = FUNC7(hdlc)->settings.lmi;
	int dce = FUNC7(hdlc)->settings.dce;
	int stat_len = (lmi == LMI_CISCO) ? 6 : 3, reptype, error, no_ram, i;

	if (skb->len < (lmi == LMI_ANSI ? LMI_ANSI_LENGTH :
			LMI_CCITT_CISCO_LENGTH)) {
		FUNC4(dev, "Short LMI frame\n");
		return 1;
	}

	if (skb->data[3] != (lmi == LMI_CISCO ? NLPID_CISCO_LMI :
			     NLPID_CCITT_ANSI_LMI)) {
		FUNC4(dev, "Received non-LMI frame with LMI DLCI\n");
		return 1;
	}

	if (skb->data[4] != LMI_CALLREF) {
		FUNC4(dev, "Invalid LMI Call reference (0x%02X)\n",
			    skb->data[4]);
		return 1;
	}

	if (skb->data[5] != (dce ? LMI_STATUS_ENQUIRY : LMI_STATUS)) {
		FUNC4(dev, "Invalid LMI Message type (0x%02X)\n",
			    skb->data[5]);
		return 1;
	}

	if (lmi == LMI_ANSI) {
		if (skb->data[6] != LMI_ANSI_LOCKSHIFT) {
			FUNC4(dev, "Not ANSI locking shift in LMI message (0x%02X)\n",
				    skb->data[6]);
			return 1;
		}
		i = 7;
	} else
		i = 6;

	if (skb->data[i] != (lmi == LMI_CCITT ? LMI_CCITT_REPTYPE :
			     LMI_ANSI_CISCO_REPTYPE)) {
		FUNC4(dev, "Not an LMI Report type IE (0x%02X)\n",
			    skb->data[i]);
		return 1;
	}

	if (skb->data[++i] != LMI_REPT_LEN) {
		FUNC4(dev, "Invalid LMI Report type IE length (%u)\n",
			    skb->data[i]);
		return 1;
	}

	reptype = skb->data[++i];
	if (reptype != LMI_INTEGRITY && reptype != LMI_FULLREP) {
		FUNC4(dev, "Unsupported LMI Report type (0x%02X)\n",
			    reptype);
		return 1;
	}

	if (skb->data[++i] != (lmi == LMI_CCITT ? LMI_CCITT_ALIVE :
			       LMI_ANSI_CISCO_ALIVE)) {
		FUNC4(dev, "Not an LMI Link integrity verification IE (0x%02X)\n",
			    skb->data[i]);
		return 1;
	}

	if (skb->data[++i] != LMI_INTEG_LEN) {
		FUNC4(dev, "Invalid LMI Link integrity verification IE length (%u)\n",
			    skb->data[i]);
		return 1;
	}
	i++;

	FUNC7(hdlc)->rxseq = skb->data[i++]; /* TX sequence from peer */
	rxseq = skb->data[i++];	/* Should confirm our sequence */

	txseq = FUNC7(hdlc)->txseq;

	if (dce)
		FUNC7(hdlc)->last_poll = jiffies;

	error = 0;
	if (!FUNC7(hdlc)->reliable)
		error = 1;

	if (rxseq == 0 || rxseq != txseq) { /* Ask for full report next time */
		FUNC7(hdlc)->n391cnt = 0;
		error = 1;
	}

	if (dce) {
		if (FUNC7(hdlc)->fullrep_sent && !error) {
/* Stop sending full report - the last one has been confirmed by DTE */
			FUNC7(hdlc)->fullrep_sent = 0;
			pvc = FUNC7(hdlc)->first_pvc;
			while (pvc) {
				if (pvc->state.new) {
					pvc->state.new = 0;

/* Tell DTE that new PVC is now active */
					FUNC7(hdlc)->dce_changed = 1;
				}
				pvc = pvc->next;
			}
		}

		if (FUNC7(hdlc)->dce_changed) {
			reptype = LMI_FULLREP;
			FUNC7(hdlc)->fullrep_sent = 1;
			FUNC7(hdlc)->dce_changed = 0;
		}

		FUNC7(hdlc)->request = 1; /* got request */
		FUNC2(dev, reptype == LMI_FULLREP ? 1 : 0);
		return 0;
	}

	/* DTE */

	FUNC7(hdlc)->request = 0; /* got response, no request pending */

	if (error)
		return 0;

	if (reptype != LMI_FULLREP)
		return 0;

	pvc = FUNC7(hdlc)->first_pvc;

	while (pvc) {
		pvc->state.deleted = 1;
		pvc = pvc->next;
	}

	no_ram = 0;
	while (skb->len >= i + 2 + stat_len) {
		u16 dlci;
		u32 bw;
		unsigned int active, new;

		if (skb->data[i] != (lmi == LMI_CCITT ? LMI_CCITT_PVCSTAT :
				       LMI_ANSI_CISCO_PVCSTAT)) {
			FUNC4(dev, "Not an LMI PVC status IE (0x%02X)\n",
				    skb->data[i]);
			return 1;
		}

		if (skb->data[++i] != stat_len) {
			FUNC4(dev, "Invalid LMI PVC status IE length (%u)\n",
				    skb->data[i]);
			return 1;
		}
		i++;

		new = !! (skb->data[i + 2] & 0x08);
		active = !! (skb->data[i + 2] & 0x02);
		if (lmi == LMI_CISCO) {
			dlci = (skb->data[i] << 8) | skb->data[i + 1];
			bw = (skb->data[i + 3] << 16) |
				(skb->data[i + 4] << 8) |
				(skb->data[i + 5]);
		} else {
			dlci = ((skb->data[i] & 0x3F) << 4) |
				((skb->data[i + 1] & 0x78) >> 3);
			bw = 0;
		}

		pvc = FUNC0(dev, dlci);

		if (!pvc && !no_ram) {
			FUNC5(dev, "Memory squeeze on fr_lmi_recv()\n");
			no_ram = 1;
		}

		if (pvc) {
			pvc->state.exist = 1;
			pvc->state.deleted = 0;
			if (active != pvc->state.active ||
			    new != pvc->state.new ||
			    bw != pvc->state.bandwidth ||
			    !pvc->state.exist) {
				pvc->state.new = new;
				pvc->state.active = active;
				pvc->state.bandwidth = bw;
				FUNC6(active, pvc);
				FUNC3(pvc);
			}
		}

		i += stat_len;
	}

	pvc = FUNC7(hdlc)->first_pvc;

	while (pvc) {
		if (pvc->state.deleted && pvc->state.exist) {
			FUNC6(0, pvc);
			pvc->state.active = pvc->state.new = 0;
			pvc->state.exist = 0;
			pvc->state.bandwidth = 0;
			FUNC3(pvc);
		}
		pvc = pvc->next;
	}

	/* Next full report after N391 polls */
	FUNC7(hdlc)->n391cnt = FUNC7(hdlc)->settings.n391;

	return 0;
}