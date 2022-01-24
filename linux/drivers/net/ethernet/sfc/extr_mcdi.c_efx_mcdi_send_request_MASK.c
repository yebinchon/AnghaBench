#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct efx_nic {TYPE_1__* type; int /*<<< orphan*/  net_dev; } ;
struct efx_mcdi_iface {char* logging_buffer; scalar_t__ state; int seqno; scalar_t__ mode; int new_epoch; scalar_t__ logging_enabled; int /*<<< orphan*/  iface_lock; } ;
struct TYPE_9__ {int /*<<< orphan*/ * u32; } ;
typedef  TYPE_2__ efx_dword_t ;
struct TYPE_8__ {int mcdi_max_ver; int /*<<< orphan*/  (* mcdi_request ) (struct efx_nic*,TYPE_2__*,size_t,TYPE_2__ const*,size_t) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 size_t MCDI_CTL_SDU_LEN_MAX_V2 ; 
 int /*<<< orphan*/  MCDI_HEADER_CODE ; 
 int /*<<< orphan*/  MCDI_HEADER_DATALEN ; 
 int /*<<< orphan*/  MCDI_HEADER_NOT_EPOCH ; 
 int /*<<< orphan*/  MCDI_HEADER_RESPONSE ; 
 int /*<<< orphan*/  MCDI_HEADER_RESYNC ; 
 int /*<<< orphan*/  MCDI_HEADER_SEQ ; 
 int /*<<< orphan*/  MCDI_HEADER_XFLAGS ; 
 int MCDI_HEADER_XFLAGS_EVREQ ; 
 scalar_t__ MCDI_MODE_EVENTS ; 
 scalar_t__ MCDI_STATE_QUIESCENT ; 
 unsigned int MC_CMD_V2_EXTN ; 
 int /*<<< orphan*/  MC_CMD_V2_EXTN_IN_ACTUAL_LEN ; 
 int /*<<< orphan*/  MC_CMD_V2_EXTN_IN_EXTENDED_CMD ; 
 int PAGE_SIZE ; 
 int SEQ_MASK ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 struct efx_mcdi_iface* FUNC4 (struct efx_nic*) ; 
 int /*<<< orphan*/  hw ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*,TYPE_2__*,size_t,TYPE_2__ const*,size_t) ; 

__attribute__((used)) static void FUNC11(struct efx_nic *efx, unsigned cmd,
				  const efx_dword_t *inbuf, size_t inlen)
{
	struct efx_mcdi_iface *mcdi = FUNC4(efx);
#ifdef CONFIG_SFC_MCDI_LOGGING
	char *buf = mcdi->logging_buffer; /* page-sized */
#endif
	efx_dword_t hdr[2];
	size_t hdr_len;
	u32 xflags, seqno;

	FUNC0(mcdi->state == MCDI_STATE_QUIESCENT);

	/* Serialise with efx_mcdi_ev_cpl() and efx_mcdi_ev_death() */
	FUNC8(&mcdi->iface_lock);
	++mcdi->seqno;
	FUNC9(&mcdi->iface_lock);

	seqno = mcdi->seqno & SEQ_MASK;
	xflags = 0;
	if (mcdi->mode == MCDI_MODE_EVENTS)
		xflags |= MCDI_HEADER_XFLAGS_EVREQ;

	if (efx->type->mcdi_max_ver == 1) {
		/* MCDI v1 */
		FUNC2(hdr[0],
				     MCDI_HEADER_RESPONSE, 0,
				     MCDI_HEADER_RESYNC, 1,
				     MCDI_HEADER_CODE, cmd,
				     MCDI_HEADER_DATALEN, inlen,
				     MCDI_HEADER_SEQ, seqno,
				     MCDI_HEADER_XFLAGS, xflags,
				     MCDI_HEADER_NOT_EPOCH, !mcdi->new_epoch);
		hdr_len = 4;
	} else {
		/* MCDI v2 */
		FUNC0(inlen > MCDI_CTL_SDU_LEN_MAX_V2);
		FUNC2(hdr[0],
				     MCDI_HEADER_RESPONSE, 0,
				     MCDI_HEADER_RESYNC, 1,
				     MCDI_HEADER_CODE, MC_CMD_V2_EXTN,
				     MCDI_HEADER_DATALEN, 0,
				     MCDI_HEADER_SEQ, seqno,
				     MCDI_HEADER_XFLAGS, xflags,
				     MCDI_HEADER_NOT_EPOCH, !mcdi->new_epoch);
		FUNC1(hdr[1],
				     MC_CMD_V2_EXTN_IN_EXTENDED_CMD, cmd,
				     MC_CMD_V2_EXTN_IN_ACTUAL_LEN, inlen);
		hdr_len = 8;
	}

#ifdef CONFIG_SFC_MCDI_LOGGING
	if (mcdi->logging_enabled && !WARN_ON_ONCE(!buf)) {
		int bytes = 0;
		int i;
		/* Lengths should always be a whole number of dwords, so scream
		 * if they're not.
		 */
		WARN_ON_ONCE(hdr_len % 4);
		WARN_ON_ONCE(inlen % 4);

		/* We own the logging buffer, as only one MCDI can be in
		 * progress on a NIC at any one time.  So no need for locking.
		 */
		for (i = 0; i < hdr_len / 4 && bytes < PAGE_SIZE; i++)
			bytes += snprintf(buf + bytes, PAGE_SIZE - bytes,
					  " %08x", le32_to_cpu(hdr[i].u32[0]));

		for (i = 0; i < inlen / 4 && bytes < PAGE_SIZE; i++)
			bytes += snprintf(buf + bytes, PAGE_SIZE - bytes,
					  " %08x", le32_to_cpu(inbuf[i].u32[0]));

		netif_info(efx, hw, efx->net_dev, "MCDI RPC REQ:%s\n", buf);
	}
#endif

	efx->type->mcdi_request(efx, hdr, hdr_len, inbuf, inlen);

	mcdi->new_epoch = false;
}