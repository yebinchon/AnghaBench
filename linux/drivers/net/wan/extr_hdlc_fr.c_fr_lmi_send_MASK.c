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
struct sk_buff {struct net_device* dev; int /*<<< orphan*/  priority; void* protocol; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {int exist; int new; int active; } ;
struct pvc_device {int dlci; struct pvc_device* next; TYPE_2__ state; scalar_t__ open_count; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  hdlc_device ;
struct TYPE_4__ {int lmi; int dce; } ;
struct TYPE_6__ {int dce_pvc_count; int txseq; int rxseq; scalar_t__ reliable; TYPE_1__ settings; struct pvc_device* first_pvc; } ;

/* Variables and functions */
 int HDLC_MAX_MRU ; 
 int LMI_ANSI ; 
 int LMI_ANSI_CISCO_ALIVE ; 
 int LMI_ANSI_CISCO_PVCSTAT ; 
 int LMI_ANSI_CISCO_REPTYPE ; 
 int LMI_ANSI_LENGTH ; 
 int LMI_ANSI_LOCKSHIFT ; 
 int LMI_CALLREF ; 
 int LMI_CCITT ; 
 int LMI_CCITT_ALIVE ; 
 int /*<<< orphan*/  LMI_CCITT_ANSI_DLCI ; 
 int LMI_CCITT_CISCO_LENGTH ; 
 int LMI_CCITT_PVCSTAT ; 
 int LMI_CCITT_REPTYPE ; 
 int LMI_CISCO ; 
 int /*<<< orphan*/  LMI_CISCO_DLCI ; 
 int LMI_FULLREP ; 
 int LMI_INTEGRITY ; 
 int LMI_INTEG_LEN ; 
 int LMI_REPT_LEN ; 
 int LMI_STATUS ; 
 int LMI_STATUS_ENQUIRY ; 
 int /*<<< orphan*/  NLPID_CCITT_ANSI_LMI ; 
 int /*<<< orphan*/  NLPID_CISCO_LMI ; 
 int /*<<< orphan*/  TC_PRIO_CONTROL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int /*<<< orphan*/ * FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff**,int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct pvc_device*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,struct pvc_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int* FUNC13 (struct sk_buff*) ; 
 TYPE_3__* FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev, int fullrep)
{
	hdlc_device *hdlc = FUNC3(dev);
	struct sk_buff *skb;
	struct pvc_device *pvc = FUNC14(hdlc)->first_pvc;
	int lmi = FUNC14(hdlc)->settings.lmi;
	int dce = FUNC14(hdlc)->settings.dce;
	int len = lmi == LMI_ANSI ? LMI_ANSI_LENGTH : LMI_CCITT_CISCO_LENGTH;
	int stat_len = (lmi == LMI_CISCO) ? 6 : 3;
	u8 *data;
	int i = 0;

	if (dce && fullrep) {
		len += FUNC14(hdlc)->dce_pvc_count * (2 + stat_len);
		if (len > HDLC_MAX_MRU) {
			FUNC8(dev, "Too many PVCs while sending LMI full report\n");
			return;
		}
	}

	skb = FUNC1(len);
	if (!skb) {
		FUNC8(dev, "Memory squeeze on fr_lmi_send()\n");
		return;
	}
	FUNC7(skb->data, 0, len);
	FUNC11(skb, 4);
	if (lmi == LMI_CISCO) {
		skb->protocol = FUNC0(NLPID_CISCO_LMI);
		FUNC4(&skb, LMI_CISCO_DLCI);
	} else {
		skb->protocol = FUNC0(NLPID_CCITT_ANSI_LMI);
		FUNC4(&skb, LMI_CCITT_ANSI_DLCI);
	}
	data = FUNC13(skb);
	data[i++] = LMI_CALLREF;
	data[i++] = dce ? LMI_STATUS : LMI_STATUS_ENQUIRY;
	if (lmi == LMI_ANSI)
		data[i++] = LMI_ANSI_LOCKSHIFT;
	data[i++] = lmi == LMI_CCITT ? LMI_CCITT_REPTYPE :
		LMI_ANSI_CISCO_REPTYPE;
	data[i++] = LMI_REPT_LEN;
	data[i++] = fullrep ? LMI_FULLREP : LMI_INTEGRITY;
	data[i++] = lmi == LMI_CCITT ? LMI_CCITT_ALIVE : LMI_ANSI_CISCO_ALIVE;
	data[i++] = LMI_INTEG_LEN;
	data[i++] = FUNC14(hdlc)->txseq =
		FUNC5(FUNC14(hdlc)->txseq);
	data[i++] = FUNC14(hdlc)->rxseq;

	if (dce && fullrep) {
		while (pvc) {
			data[i++] = lmi == LMI_CCITT ? LMI_CCITT_PVCSTAT :
				LMI_ANSI_CISCO_PVCSTAT;
			data[i++] = stat_len;

			/* LMI start/restart */
			if (FUNC14(hdlc)->reliable && !pvc->state.exist) {
				pvc->state.exist = pvc->state.new = 1;
				FUNC6(pvc);
			}

			/* ifconfig PVC up */
			if (pvc->open_count && !pvc->state.active &&
			    pvc->state.exist && !pvc->state.new) {
				FUNC9(1, pvc);
				pvc->state.active = 1;
				FUNC6(pvc);
			}

			if (lmi == LMI_CISCO) {
				data[i] = pvc->dlci >> 8;
				data[i + 1] = pvc->dlci & 0xFF;
			} else {
				data[i] = (pvc->dlci >> 4) & 0x3F;
				data[i + 1] = ((pvc->dlci << 3) & 0x78) | 0x80;
				data[i + 2] = 0x80;
			}

			if (pvc->state.new)
				data[i + 2] |= 0x08;
			else if (pvc->state.active)
				data[i + 2] |= 0x02;

			i += stat_len;
			pvc = pvc->next;
		}
	}

	FUNC10(skb, i);
	skb->priority = TC_PRIO_CONTROL;
	skb->dev = dev;
	FUNC12(skb);

	FUNC2(skb);
}