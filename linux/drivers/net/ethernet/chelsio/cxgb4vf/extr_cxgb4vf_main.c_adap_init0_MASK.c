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
typedef  int u32 ;
struct sge_params {int /*<<< orphan*/  sge_ingress_rx_threshold; int /*<<< orphan*/  sge_timer_value_4_and_5; int /*<<< orphan*/  sge_timer_value_2_and_3; int /*<<< orphan*/  sge_timer_value_0_and_1; } ;
struct sge {int /*<<< orphan*/ * counter_val; void** timer_val; } ;
struct TYPE_5__ {scalar_t__ pmask; scalar_t__ nvi; } ;
struct TYPE_4__ {int /*<<< orphan*/  mode; } ;
struct TYPE_6__ {TYPE_2__ vfres; TYPE_1__ rss; struct sge_params sge; } ;
struct adapter {int /*<<< orphan*/  flags; int /*<<< orphan*/  pdev_dev; TYPE_3__ params; struct sge sge; } ;

/* Variables and functions */
 int /*<<< orphan*/  CXGB4VF_FW_OK ; 
 int EINVAL ; 
 int /*<<< orphan*/  FW_PARAMS_MNEM_PFVF ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_PARAMS_PARAM_PFVF_CPLFW4MSG_ENCAP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 void* FUNC8 (struct adapter*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*) ; 
 int FUNC11 (struct adapter*) ; 
 int FUNC12 (struct adapter*) ; 
 int FUNC13 (struct adapter*) ; 
 int FUNC14 (struct adapter*) ; 
 int FUNC15 (struct adapter*) ; 
 int FUNC16 (struct adapter*) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*,int,int*,int*) ; 
 int FUNC18 (struct adapter*) ; 

__attribute__((used)) static int FUNC19(struct adapter *adapter)
{
	struct sge_params *sge_params = &adapter->params.sge;
	struct sge *s = &adapter->sge;
	int err;
	u32 param, val = 0;

	/*
	 * Some environments do not properly handle PCIE FLRs -- e.g. in Linux
	 * 2.6.31 and later we can't call pci_reset_function() in order to
	 * issue an FLR because of a self- deadlock on the device semaphore.
	 * Meanwhile, the OS infrastructure doesn't issue FLRs in all the
	 * cases where they're needed -- for instance, some versions of KVM
	 * fail to reset "Assigned Devices" when the VM reboots.  Therefore we
	 * use the firmware based reset in order to reset any per function
	 * state.
	 */
	err = FUNC11(adapter);
	if (err < 0) {
		FUNC9(adapter->pdev_dev, "FW reset failed: err=%d\n", err);
		return err;
	}

	/*
	 * Grab basic operational parameters.  These will predominantly have
	 * been set up by the Physical Function Driver or will be hard coded
	 * into the adapter.  We just have to live with them ...  Note that
	 * we _must_ get our VPD parameters before our SGE parameters because
	 * we need to know the adapter's core clock from the VPD in order to
	 * properly decode the SGE Timer Values.
	 */
	err = FUNC12(adapter);
	if (err) {
		FUNC9(adapter->pdev_dev, "unable to retrieve adapter"
			" device parameters: err=%d\n", err);
		return err;
	}
	err = FUNC16(adapter);
	if (err) {
		FUNC9(adapter->pdev_dev, "unable to retrieve adapter"
			" VPD parameters: err=%d\n", err);
		return err;
	}
	err = FUNC14(adapter);
	if (err) {
		FUNC9(adapter->pdev_dev, "unable to retrieve adapter"
			" SGE parameters: err=%d\n", err);
		return err;
	}
	err = FUNC13(adapter);
	if (err) {
		FUNC9(adapter->pdev_dev, "unable to retrieve adapter"
			" RSS parameters: err=%d\n", err);
		return err;
	}
	if (adapter->params.rss.mode !=
	    FW_RSS_GLB_CONFIG_CMD_MODE_BASICVIRTUAL) {
		FUNC9(adapter->pdev_dev, "unable to operate with global RSS"
			" mode %d\n", adapter->params.rss.mode);
		return -EINVAL;
	}
	err = FUNC18(adapter);
	if (err) {
		FUNC9(adapter->pdev_dev, "unable to use adapter parameters:"
			" err=%d\n", err);
		return err;
	}

	/* If we're running on newer firmware, let it know that we're
	 * prepared to deal with encapsulated CPL messages.  Older
	 * firmware won't understand this and we'll just get
	 * unencapsulated messages ...
	 */
	param = FUNC0(FW_PARAMS_MNEM_PFVF) |
		FUNC1(FW_PARAMS_PARAM_PFVF_CPLFW4MSG_ENCAP);
	val = 1;
	(void) FUNC17(adapter, 1, &param, &val);

	/*
	 * Retrieve our RX interrupt holdoff timer values and counter
	 * threshold values from the SGE parameters.
	 */
	s->timer_val[0] = FUNC8(adapter,
		FUNC6(sge_params->sge_timer_value_0_and_1));
	s->timer_val[1] = FUNC8(adapter,
		FUNC7(sge_params->sge_timer_value_0_and_1));
	s->timer_val[2] = FUNC8(adapter,
		FUNC6(sge_params->sge_timer_value_2_and_3));
	s->timer_val[3] = FUNC8(adapter,
		FUNC7(sge_params->sge_timer_value_2_and_3));
	s->timer_val[4] = FUNC8(adapter,
		FUNC6(sge_params->sge_timer_value_4_and_5));
	s->timer_val[5] = FUNC8(adapter,
		FUNC7(sge_params->sge_timer_value_4_and_5));

	s->counter_val[0] = FUNC2(sge_params->sge_ingress_rx_threshold);
	s->counter_val[1] = FUNC3(sge_params->sge_ingress_rx_threshold);
	s->counter_val[2] = FUNC4(sge_params->sge_ingress_rx_threshold);
	s->counter_val[3] = FUNC5(sge_params->sge_ingress_rx_threshold);

	/*
	 * Grab our Virtual Interface resource allocation, extract the
	 * features that we're interested in and do a bit of sanity testing on
	 * what we discover.
	 */
	err = FUNC15(adapter);
	if (err) {
		FUNC9(adapter->pdev_dev, "unable to get virtual interface"
			" resources: err=%d\n", err);
		return err;
	}

	/* Check for various parameter sanity issues */
	if (adapter->params.vfres.pmask == 0) {
		FUNC9(adapter->pdev_dev, "no port access configured\n"
			"usable!\n");
		return -EINVAL;
	}
	if (adapter->params.vfres.nvi == 0) {
		FUNC9(adapter->pdev_dev, "no virtual interfaces configured/"
			"usable!\n");
		return -EINVAL;
	}

	/* Initialize nports and max_ethqsets now that we have our Virtual
	 * Function Resources.
	 */
	FUNC10(adapter);

	adapter->flags |= CXGB4VF_FW_OK;
	return 0;
}