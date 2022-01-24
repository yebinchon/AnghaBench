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
struct TYPE_6__ {int /*<<< orphan*/  cmd; int /*<<< orphan*/  group_id; } ;
struct iwl_rx_packet {scalar_t__ data; TYPE_3__ hdr; } ;
struct iwl_rx_mpdu_desc {int /*<<< orphan*/  mpdu_len; } ;
struct iwl_rx_cmd_buffer {int /*<<< orphan*/  _page; int /*<<< orphan*/  _offset; int /*<<< orphan*/  truesize; int /*<<< orphan*/  _rx_page_order; } ;
struct iwl_mvm {TYPE_2__* trans; } ;
typedef  size_t ssize_t ;
typedef  int /*<<< orphan*/  loff_t ;
struct TYPE_5__ {TYPE_1__* trans_cfg; } ;
struct TYPE_4__ {scalar_t__ device_family; int /*<<< orphan*/  mq_rx_supported; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t EIO ; 
 size_t ENOMEM ; 
 size_t ENOTSUPP ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 scalar_t__ IWL_DEVICE_FAMILY_22560 ; 
 int IWL_RX_DESC_SIZE_V1 ; 
 int /*<<< orphan*/  LEGACY_GROUP ; 
 int /*<<< orphan*/  REPLY_RX_MPDU_CMD ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct iwl_rx_cmd_buffer*) ; 
 int /*<<< orphan*/  FUNC4 (struct iwl_mvm*) ; 
 int /*<<< orphan*/  FUNC5 (struct iwl_mvm*,int /*<<< orphan*/ *,struct iwl_rx_cmd_buffer*,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 struct iwl_rx_packet* FUNC10 (struct iwl_rx_cmd_buffer*) ; 

__attribute__((used)) static ssize_t FUNC11(struct iwl_mvm *mvm,
					     char *buf, size_t count,
					     loff_t *ppos)
{
	struct iwl_rx_cmd_buffer rxb = {
		._rx_page_order = 0,
		.truesize = 0, /* not used */
		._offset = 0,
	};
	struct iwl_rx_packet *pkt;
	struct iwl_rx_mpdu_desc *desc;
	int bin_len = count / 2;
	int ret = -EINVAL;
	size_t mpdu_cmd_hdr_size = (mvm->trans->trans_cfg->device_family >=
				    IWL_DEVICE_FAMILY_22560) ?
		sizeof(struct iwl_rx_mpdu_desc) :
		IWL_RX_DESC_SIZE_V1;

	if (!FUNC4(mvm))
		return -EIO;

	/* supporting only 9000 descriptor */
	if (!mvm->trans->trans_cfg->mq_rx_supported)
		return -ENOTSUPP;

	rxb._page = FUNC1(GFP_ATOMIC, 0);
	if (!rxb._page)
		return -ENOMEM;
	pkt = FUNC10(&rxb);

	ret = FUNC2(FUNC9(rxb._page), buf, bin_len);
	if (ret)
		goto out;

	/* avoid invalid memory access */
	if (bin_len < sizeof(*pkt) + mpdu_cmd_hdr_size)
		goto out;

	/* check this is RX packet */
	if (FUNC0(pkt->hdr.group_id, pkt->hdr.cmd) !=
	    FUNC0(LEGACY_GROUP, REPLY_RX_MPDU_CMD))
		goto out;

	/* check the length in metadata matches actual received length */
	desc = (void *)pkt->data;
	if (FUNC6(desc->mpdu_len) !=
	    (bin_len - mpdu_cmd_hdr_size - sizeof(*pkt)))
		goto out;

	FUNC7();
	FUNC5(mvm, NULL, &rxb, 0);
	FUNC8();
	ret = 0;

out:
	FUNC3(&rxb);

	return ret ?: count;
}