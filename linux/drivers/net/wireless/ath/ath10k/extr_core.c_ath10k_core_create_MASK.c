#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct device {int dummy; } ;
struct ath10k_hif_ops {int dummy; } ;
struct TYPE_14__ {int /*<<< orphan*/  tx_credits_wq; } ;
struct TYPE_13__ {int /*<<< orphan*/  empty_tx_wq; } ;
struct TYPE_12__ {int /*<<< orphan*/  timeout; int /*<<< orphan*/  on_channel; int /*<<< orphan*/  completed; int /*<<< orphan*/  started; } ;
struct TYPE_11__ {int /*<<< orphan*/  wmi_sync; } ;
struct TYPE_10__ {int /*<<< orphan*/  wakeup_completed; } ;
struct TYPE_9__ {int bus; struct ath10k_hif_ops const* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  hw; struct ath10k* priv; } ;
struct ath10k {int hw_rev; void* workqueue; void* workqueue_aux; int /*<<< orphan*/  napi_dev; int /*<<< orphan*/  set_coverage_class_work; int /*<<< orphan*/  restart_work; int /*<<< orphan*/  register_work; int /*<<< orphan*/  wmi_mgmt_tx_queue; int /*<<< orphan*/  wmi_mgmt_tx_work; int /*<<< orphan*/  offchan_tx_queue; int /*<<< orphan*/  offchan_tx_work; int /*<<< orphan*/  offchan_tx_completed; TYPE_7__ wmi; TYPE_6__ htt; int /*<<< orphan*/  peer_mapping_wq; int /*<<< orphan*/  peers; int /*<<< orphan*/  data_lock; int /*<<< orphan*/  dump_mutex; int /*<<< orphan*/  conf_mutex; TYPE_5__ scan; int /*<<< orphan*/  peer_delete_done; int /*<<< orphan*/  bss_survey_done; TYPE_4__ thermal; int /*<<< orphan*/  vdev_delete_done; int /*<<< orphan*/  vdev_setup_done; int /*<<< orphan*/  install_key_done; TYPE_3__ wow; int /*<<< orphan*/  driver_recovery; int /*<<< orphan*/  target_suspend; int /*<<< orphan*/ * hw_values; int /*<<< orphan*/ * hw_ce_regs; int /*<<< orphan*/ * regs; TYPE_2__ hif; struct device* dev; int /*<<< orphan*/  hw; TYPE_1__ ath_common; } ;
typedef  enum ath10k_hw_rev { ____Placeholder_ath10k_hw_rev } ath10k_hw_rev ;
typedef  enum ath10k_bus { ____Placeholder_ath10k_bus } ath10k_bus ;

/* Variables and functions */
#define  ATH10K_HW_QCA4019 136 
#define  ATH10K_HW_QCA6174 135 
#define  ATH10K_HW_QCA9377 134 
#define  ATH10K_HW_QCA9887 133 
#define  ATH10K_HW_QCA9888 132 
#define  ATH10K_HW_QCA988X 131 
#define  ATH10K_HW_QCA9984 130 
#define  ATH10K_HW_QCA99X0 129 
#define  ATH10K_HW_WCN3990 128 
 int ENOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ath10k_core_register_work ; 
 int /*<<< orphan*/  ath10k_core_restart ; 
 int /*<<< orphan*/  ath10k_core_set_coverage_class_work ; 
 int FUNC3 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC4 (struct ath10k*) ; 
 int FUNC5 (struct ath10k*) ; 
 int /*<<< orphan*/  FUNC6 (struct ath10k*,char*,int) ; 
 struct ath10k* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct ath10k*) ; 
 int /*<<< orphan*/  ath10k_mgmt_over_wmi_tx_work ; 
 int /*<<< orphan*/  ath10k_offchan_tx_work ; 
 int /*<<< orphan*/  ath10k_scan_timeout_work ; 
 void* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  qca4019_regs ; 
 int /*<<< orphan*/  qca4019_values ; 
 int /*<<< orphan*/  qca6174_regs ; 
 int /*<<< orphan*/  qca6174_values ; 
 int /*<<< orphan*/  qca9888_values ; 
 int /*<<< orphan*/  qca988x_regs ; 
 int /*<<< orphan*/  qca988x_values ; 
 int /*<<< orphan*/  qca99x0_regs ; 
 int /*<<< orphan*/  qca99x0_values ; 
 int /*<<< orphan*/  qcax_ce_regs ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wcn3990_ce_regs ; 
 int /*<<< orphan*/  wcn3990_regs ; 
 int /*<<< orphan*/  wcn3990_values ; 

struct ath10k *FUNC17(size_t priv_size, struct device *dev,
				  enum ath10k_bus bus,
				  enum ath10k_hw_rev hw_rev,
				  const struct ath10k_hif_ops *hif_ops)
{
	struct ath10k *ar;
	int ret;

	ar = FUNC7(priv_size);
	if (!ar)
		return NULL;

	ar->ath_common.priv = ar;
	ar->ath_common.hw = ar->hw;
	ar->dev = dev;
	ar->hw_rev = hw_rev;
	ar->hif.ops = hif_ops;
	ar->hif.bus = bus;

	switch (hw_rev) {
	case ATH10K_HW_QCA988X:
	case ATH10K_HW_QCA9887:
		ar->regs = &qca988x_regs;
		ar->hw_ce_regs = &qcax_ce_regs;
		ar->hw_values = &qca988x_values;
		break;
	case ATH10K_HW_QCA6174:
	case ATH10K_HW_QCA9377:
		ar->regs = &qca6174_regs;
		ar->hw_ce_regs = &qcax_ce_regs;
		ar->hw_values = &qca6174_values;
		break;
	case ATH10K_HW_QCA99X0:
	case ATH10K_HW_QCA9984:
		ar->regs = &qca99x0_regs;
		ar->hw_ce_regs = &qcax_ce_regs;
		ar->hw_values = &qca99x0_values;
		break;
	case ATH10K_HW_QCA9888:
		ar->regs = &qca99x0_regs;
		ar->hw_ce_regs = &qcax_ce_regs;
		ar->hw_values = &qca9888_values;
		break;
	case ATH10K_HW_QCA4019:
		ar->regs = &qca4019_regs;
		ar->hw_ce_regs = &qcax_ce_regs;
		ar->hw_values = &qca4019_values;
		break;
	case ATH10K_HW_WCN3990:
		ar->regs = &wcn3990_regs;
		ar->hw_ce_regs = &wcn3990_ce_regs;
		ar->hw_values = &wcn3990_values;
		break;
	default:
		FUNC6(ar, "unsupported core hardware revision %d\n",
			   hw_rev);
		ret = -ENOTSUPP;
		goto err_free_mac;
	}

	FUNC11(&ar->scan.started);
	FUNC11(&ar->scan.completed);
	FUNC11(&ar->scan.on_channel);
	FUNC11(&ar->target_suspend);
	FUNC11(&ar->driver_recovery);
	FUNC11(&ar->wow.wakeup_completed);

	FUNC11(&ar->install_key_done);
	FUNC11(&ar->vdev_setup_done);
	FUNC11(&ar->vdev_delete_done);
	FUNC11(&ar->thermal.wmi_sync);
	FUNC11(&ar->bss_survey_done);
	FUNC11(&ar->peer_delete_done);

	FUNC0(&ar->scan.timeout, ath10k_scan_timeout_work);

	ar->workqueue = FUNC9("ath10k_wq");
	if (!ar->workqueue)
		goto err_free_mac;

	ar->workqueue_aux = FUNC9("ath10k_aux_wq");
	if (!ar->workqueue_aux)
		goto err_free_wq;

	FUNC14(&ar->conf_mutex);
	FUNC14(&ar->dump_mutex);
	FUNC16(&ar->data_lock);

	FUNC1(&ar->peers);
	FUNC13(&ar->peer_mapping_wq);
	FUNC13(&ar->htt.empty_tx_wq);
	FUNC13(&ar->wmi.tx_credits_wq);

	FUNC11(&ar->offchan_tx_completed);
	FUNC2(&ar->offchan_tx_work, ath10k_offchan_tx_work);
	FUNC15(&ar->offchan_tx_queue);

	FUNC2(&ar->wmi_mgmt_tx_work, ath10k_mgmt_over_wmi_tx_work);
	FUNC15(&ar->wmi_mgmt_tx_queue);

	FUNC2(&ar->register_work, ath10k_core_register_work);
	FUNC2(&ar->restart_work, ath10k_core_restart);
	FUNC2(&ar->set_coverage_class_work,
		  ath10k_core_set_coverage_class_work);

	FUNC12(&ar->napi_dev);

	ret = FUNC3(ar);
	if (ret)
		goto err_free_aux_wq;

	ret = FUNC5(ar);
	if (ret)
		goto err_free_coredump;

	return ar;

err_free_coredump:
	FUNC4(ar);

err_free_aux_wq:
	FUNC10(ar->workqueue_aux);
err_free_wq:
	FUNC10(ar->workqueue);

err_free_mac:
	FUNC8(ar);

	return NULL;
}