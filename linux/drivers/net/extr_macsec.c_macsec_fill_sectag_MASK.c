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
typedef  int /*<<< orphan*/  u32 ;
struct macsec_tx_sc {int /*<<< orphan*/  encoding_sa; scalar_t__ encrypt; scalar_t__ scb; scalar_t__ end_station; } ;
struct macsec_secy {scalar_t__ icv_len; int /*<<< orphan*/  sci; struct macsec_tx_sc tx_sc; } ;
struct TYPE_2__ {int /*<<< orphan*/  h_proto; } ;
struct macsec_eth_header {int /*<<< orphan*/  tci_an; int /*<<< orphan*/  packet_number; int /*<<< orphan*/  secure_channel_id; TYPE_1__ eth; } ;

/* Variables and functions */
 scalar_t__ DEFAULT_ICV_LEN ; 
 int /*<<< orphan*/  ETH_P_MACSEC ; 
 int /*<<< orphan*/  MACSEC_TCI_C ; 
 int /*<<< orphan*/  MACSEC_TCI_CONFID ; 
 int /*<<< orphan*/  MACSEC_TCI_ES ; 
 int /*<<< orphan*/  MACSEC_TCI_SC ; 
 int /*<<< orphan*/  MACSEC_TCI_SCB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct macsec_eth_header *h,
			       const struct macsec_secy *secy, u32 pn,
			       bool sci_present)
{
	const struct macsec_tx_sc *tx_sc = &secy->tx_sc;

	FUNC4(&h->tci_an, 0, FUNC2(sci_present));
	h->eth.h_proto = FUNC1(ETH_P_MACSEC);

	if (sci_present) {
		h->tci_an |= MACSEC_TCI_SC;
		FUNC3(&h->secure_channel_id, &secy->sci,
		       sizeof(h->secure_channel_id));
	} else {
		if (tx_sc->end_station)
			h->tci_an |= MACSEC_TCI_ES;
		if (tx_sc->scb)
			h->tci_an |= MACSEC_TCI_SCB;
	}

	h->packet_number = FUNC0(pn);

	/* with GCM, C/E clear for !encrypt, both set for encrypt */
	if (tx_sc->encrypt)
		h->tci_an |= MACSEC_TCI_CONFID;
	else if (secy->icv_len != DEFAULT_ICV_LEN)
		h->tci_an |= MACSEC_TCI_C;

	h->tci_an |= tx_sc->encoding_sa;
}