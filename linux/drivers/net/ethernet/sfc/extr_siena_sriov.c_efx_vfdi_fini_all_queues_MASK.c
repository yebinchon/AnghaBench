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
struct siena_vf {unsigned int index; scalar_t__ evq0_count; int /*<<< orphan*/  buftbl_base; int /*<<< orphan*/  rxq_retry_count; int /*<<< orphan*/  rxq_retry_mask; int /*<<< orphan*/  flush_waitq; scalar_t__ txq_count; scalar_t__ rxq_count; int /*<<< orphan*/  rxq_mask; int /*<<< orphan*/  txq_mask; struct efx_nic* efx; } ;
struct efx_nic {int dummy; } ;
typedef  int /*<<< orphan*/  efx_oword_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int EFX_VF_BUFTBL_PER_VI ; 
 unsigned int EFX_VI_BASE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FLUSH_RX_QUEUES_IN_QID_OFST ; 
 int /*<<< orphan*/  FRF_AZ_TX_FLUSH_DESCQ ; 
 int /*<<< orphan*/  FRF_AZ_TX_FLUSH_DESCQ_CMD ; 
 int /*<<< orphan*/  FR_AZ_TX_FLUSH_DESCQ ; 
 int /*<<< orphan*/  FR_BZ_EVQ_PTR_TBL ; 
 int /*<<< orphan*/  FR_BZ_RX_DESC_PTR_TBL ; 
 int /*<<< orphan*/  FR_BZ_TIMER_TBL ; 
 int /*<<< orphan*/  FR_BZ_TX_DESC_PTR_TBL ; 
 unsigned int HZ ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  MC_CMD_FLUSH_RX_QUEUES ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  MC_CMD_FLUSH_RX_QUEUES_IN_LENMAX ; 
 scalar_t__ MC_CMD_FLUSH_RX_QUEUES_IN_QID_OFST_MAXNUM ; 
 int VFDI_RC_ETIMEDOUT ; 
 scalar_t__ VF_MAX_RX_QUEUES ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int) ; 
 unsigned int FUNC11 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC12 (struct siena_vf*) ; 
 int /*<<< orphan*/  FUNC13 (struct siena_vf*) ; 
 int /*<<< orphan*/  FUNC14 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct efx_nic*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  inbuf ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC19 (struct efx_nic*) ; 
 scalar_t__ FUNC20 (unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 (unsigned int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC23(struct siena_vf *vf)
{
	struct efx_nic *efx = vf->efx;
	efx_oword_t reg;
	unsigned count = FUNC11(efx);
	unsigned vf_offset = EFX_VI_BASE + vf->index * FUNC11(efx);
	unsigned timeout = HZ;
	unsigned index, rxqs_count;
	FUNC3(inbuf, MC_CMD_FLUSH_RX_QUEUES_IN_LENMAX);
	int rc;

	FUNC0(VF_MAX_RX_QUEUES >
		     MC_CMD_FLUSH_RX_QUEUES_IN_QID_OFST_MAXNUM);

	FUNC16();
	FUNC19(efx);
	FUNC17();

	/* Flush all the initialized queues */
	rxqs_count = 0;
	for (index = 0; index < count; ++index) {
		if (FUNC21(index, vf->txq_mask)) {
			FUNC1(reg,
					     FRF_AZ_TX_FLUSH_DESCQ_CMD, 1,
					     FRF_AZ_TX_FLUSH_DESCQ,
					     vf_offset + index);
			FUNC14(efx, &reg, FR_AZ_TX_FLUSH_DESCQ);
		}
		if (FUNC21(index, vf->rxq_mask)) {
			FUNC4(
				inbuf, FLUSH_RX_QUEUES_IN_QID_OFST,
				rxqs_count, vf_offset + index);
			rxqs_count++;
		}
	}

	FUNC8(&vf->rxq_retry_count, 0);
	while (timeout && (vf->rxq_count || vf->txq_count)) {
		rc = FUNC9(efx, MC_CMD_FLUSH_RX_QUEUES, inbuf,
				  FUNC5(rxqs_count),
				  NULL, 0, NULL);
		FUNC6(rc < 0);

		timeout = FUNC22(vf->flush_waitq,
					     FUNC13(vf),
					     timeout);
		rxqs_count = 0;
		for (index = 0; index < count; ++index) {
			if (FUNC20(index, vf->rxq_retry_mask)) {
				FUNC7(&vf->rxq_retry_count);
				FUNC4(
					inbuf, FLUSH_RX_QUEUES_IN_QID_OFST,
					rxqs_count, vf_offset + index);
				rxqs_count++;
			}
		}
	}

	FUNC16();
	FUNC18(efx);
	FUNC17();

	/* Irrespective of success/failure, fini the queues */
	FUNC2(reg);
	for (index = 0; index < count; ++index) {
		FUNC15(efx, &reg, FR_BZ_RX_DESC_PTR_TBL,
				 vf_offset + index);
		FUNC15(efx, &reg, FR_BZ_TX_DESC_PTR_TBL,
				 vf_offset + index);
		FUNC15(efx, &reg, FR_BZ_EVQ_PTR_TBL,
				 vf_offset + index);
		FUNC15(efx, &reg, FR_BZ_TIMER_TBL,
				 vf_offset + index);
	}
	FUNC10(efx, vf->buftbl_base, NULL,
			     EFX_VF_BUFTBL_PER_VI * FUNC11(efx));
	FUNC12(vf);

	vf->evq0_count = 0;

	return timeout ? 0 : VFDI_RC_ETIMEDOUT;
}