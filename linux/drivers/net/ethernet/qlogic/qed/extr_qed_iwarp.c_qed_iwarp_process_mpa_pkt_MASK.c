#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct unaligned_opaque_data {int cid; int first_mpa_offset; } ;
struct qed_iwarp_ll2_mpa_buf {int /*<<< orphan*/  tcp_payload_len; int /*<<< orphan*/  placement_offset; struct qed_iwarp_ll2_buff* ll2_buf; struct unaligned_opaque_data data; } ;
struct qed_iwarp_ll2_buff {scalar_t__ data; } ;
struct qed_iwarp_fpdu {int /*<<< orphan*/  incomplete_bytes; int /*<<< orphan*/  fpdu_length; } ;
struct qed_hwfn {TYPE_2__* p_rdma_info; } ;
typedef  enum qed_iwarp_mpa_pkt_type { ____Placeholder_qed_iwarp_mpa_pkt_type } qed_iwarp_mpa_pkt_type ;
struct TYPE_3__ {int /*<<< orphan*/  ll2_mpa_handle; } ;
struct TYPE_4__ {TYPE_1__ iwarp; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct qed_hwfn*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct qed_hwfn*,int /*<<< orphan*/ ,char*,int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC2 (struct unaligned_opaque_data*) ; 
#define  QED_IWARP_MPA_PKT_PACKED 130 
#define  QED_IWARP_MPA_PKT_PARTIAL 129 
#define  QED_IWARP_MPA_PKT_UNALIGNED 128 
 int /*<<< orphan*/  QED_MSG_RDMA ; 
 int /*<<< orphan*/  FUNC3 (struct qed_iwarp_fpdu*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct qed_hwfn*,struct qed_iwarp_fpdu*,struct unaligned_opaque_data*,struct qed_iwarp_ll2_buff*,int /*<<< orphan*/ ) ; 
 struct qed_iwarp_fpdu* FUNC5 (struct qed_hwfn*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct qed_iwarp_ll2_buff*,struct qed_iwarp_fpdu*,struct unaligned_opaque_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct qed_hwfn*,struct qed_iwarp_ll2_buff*,int /*<<< orphan*/ ) ; 
 int FUNC8 (struct qed_hwfn*,struct qed_iwarp_fpdu*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (struct qed_hwfn*,struct qed_iwarp_fpdu*,struct unaligned_opaque_data*,struct qed_iwarp_ll2_buff*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (struct qed_hwfn*,struct qed_iwarp_fpdu*,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct qed_hwfn*,struct qed_iwarp_fpdu*) ; 

__attribute__((used)) static int
FUNC12(struct qed_hwfn *p_hwfn,
			  struct qed_iwarp_ll2_mpa_buf *mpa_buf)
{
	struct unaligned_opaque_data *curr_pkt = &mpa_buf->data;
	struct qed_iwarp_ll2_buff *buf = mpa_buf->ll2_buf;
	enum qed_iwarp_mpa_pkt_type pkt_type;
	struct qed_iwarp_fpdu *fpdu;
	int rc = -EINVAL;
	u8 *mpa_data;

	fpdu = FUNC5(p_hwfn, curr_pkt->cid & 0xffff);
	if (!fpdu) { /* something corrupt with cid, post rx back */
		FUNC0(p_hwfn, "Invalid cid, drop and post back to rx cid=%x\n",
		       curr_pkt->cid);
		goto err;
	}

	do {
		mpa_data = ((u8 *)(buf->data) + curr_pkt->first_mpa_offset);

		pkt_type = FUNC8(p_hwfn, fpdu,
						  mpa_buf->tcp_payload_len,
						  mpa_data);

		switch (pkt_type) {
		case QED_IWARP_MPA_PKT_PARTIAL:
			FUNC6(buf, fpdu,
					    curr_pkt,
					    mpa_buf->tcp_payload_len,
					    mpa_buf->placement_offset);

			if (!FUNC2(curr_pkt)) {
				mpa_buf->tcp_payload_len = 0;
				break;
			}

			rc = FUNC11(p_hwfn, fpdu);

			if (rc) {
				FUNC1(p_hwfn, QED_MSG_RDMA,
					   "Can't send FPDU:reset rc=%d\n", rc);
				FUNC3(fpdu, 0, sizeof(*fpdu));
				break;
			}

			mpa_buf->tcp_payload_len = 0;
			break;
		case QED_IWARP_MPA_PKT_PACKED:
			FUNC6(buf, fpdu,
					    curr_pkt,
					    mpa_buf->tcp_payload_len,
					    mpa_buf->placement_offset);

			rc = FUNC9(p_hwfn, fpdu, curr_pkt, buf,
						 mpa_buf->tcp_payload_len,
						 pkt_type);
			if (rc) {
				FUNC1(p_hwfn, QED_MSG_RDMA,
					   "Can't send FPDU:reset rc=%d\n", rc);
				FUNC3(fpdu, 0, sizeof(*fpdu));
				break;
			}

			mpa_buf->tcp_payload_len -= fpdu->fpdu_length;
			curr_pkt->first_mpa_offset += fpdu->fpdu_length;
			break;
		case QED_IWARP_MPA_PKT_UNALIGNED:
			FUNC10(p_hwfn, fpdu, mpa_data);
			if (mpa_buf->tcp_payload_len < fpdu->incomplete_bytes) {
				/* special handling of fpdu split over more
				 * than 2 segments
				 */
				if (FUNC2(curr_pkt)) {
					rc = FUNC11(p_hwfn,
								      fpdu);
					/* packet will be re-processed later */
					if (rc)
						return rc;
				}

				rc = FUNC4(p_hwfn, fpdu, curr_pkt,
						      buf,
						      mpa_buf->tcp_payload_len);
				if (rc) /* packet will be re-processed later */
					return rc;

				mpa_buf->tcp_payload_len = 0;
				break;
			}

			rc = FUNC9(p_hwfn, fpdu, curr_pkt, buf,
						 mpa_buf->tcp_payload_len,
						 pkt_type);
			if (rc) {
				FUNC1(p_hwfn, QED_MSG_RDMA,
					   "Can't send FPDU:delay rc=%d\n", rc);
				/* don't reset fpdu -> we need it for next
				 * classify
				 */
				break;
			}

			mpa_buf->tcp_payload_len -= fpdu->incomplete_bytes;
			curr_pkt->first_mpa_offset += fpdu->incomplete_bytes;
			/* The framed PDU was sent - no more incomplete bytes */
			fpdu->incomplete_bytes = 0;
			break;
		}
	} while (mpa_buf->tcp_payload_len && !rc);

	return rc;

err:
	FUNC7(p_hwfn,
			      buf,
			      p_hwfn->p_rdma_info->iwarp.ll2_mpa_handle);
	return rc;
}