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
struct net_device {int dummy; } ;
struct enic {unsigned int rq_count; unsigned int wq_count; int /*<<< orphan*/ * napi; int /*<<< orphan*/  vdev; struct net_device* netdev; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int NAPI_POLL_WEIGHT ; 
#define  VNIC_DEV_INTR_MODE_MSIX 128 
 int /*<<< orphan*/  FUNC0 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct device*,char*) ; 
 int FUNC2 (struct enic*) ; 
 int /*<<< orphan*/  FUNC3 (struct enic*) ; 
 size_t FUNC4 (struct enic*,unsigned int) ; 
 int FUNC5 (struct enic*) ; 
 int /*<<< orphan*/  FUNC6 (struct enic*) ; 
 int /*<<< orphan*/  FUNC7 (struct enic*) ; 
 struct device* FUNC8 (struct enic*) ; 
 int /*<<< orphan*/  FUNC9 (struct enic*) ; 
 int FUNC10 (struct enic*) ; 
 int /*<<< orphan*/  FUNC11 (struct enic*) ; 
 int /*<<< orphan*/  FUNC12 (struct enic*) ; 
 int /*<<< orphan*/  enic_poll ; 
 int /*<<< orphan*/  enic_poll_msix_rq ; 
 int /*<<< orphan*/  enic_poll_msix_wq ; 
 int FUNC13 (struct enic*) ; 
 int FUNC14 (struct enic*) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC18(struct enic *enic)
{
	struct device *dev = FUNC8(enic);
	struct net_device *netdev = enic->netdev;
	unsigned int i;
	int err;

	/* Get interrupt coalesce timer info */
	err = FUNC5(enic);
	if (err) {
		FUNC1(dev, "Using default conversion factor for "
			"interrupt coalesce timer\n");
		FUNC17(enic->vdev);
	}

	/* Get vNIC configuration
	 */

	err = FUNC10(enic);
	if (err) {
		FUNC0(dev, "Get vNIC configuration failed, aborting\n");
		return err;
	}

	/* Get available resource counts
	 */

	FUNC9(enic);

	/* modify resource count if we are in kdump_kernel
	 */
	FUNC12(enic);

	/* Set interrupt mode based on resource counts and system
	 * capabilities
	 */

	err = FUNC13(enic);
	if (err) {
		FUNC0(dev, "Failed to set intr mode based on resource "
			"counts and system capabilities, aborting\n");
		return err;
	}

	/* Allocate and configure vNIC resources
	 */

	err = FUNC2(enic);
	if (err) {
		FUNC0(dev, "Failed to alloc vNIC resources, aborting\n");
		goto err_out_free_vnic_resources;
	}

	FUNC11(enic);

	err = FUNC14(enic);
	if (err) {
		FUNC0(dev, "Failed to config nic, aborting\n");
		goto err_out_free_vnic_resources;
	}

	switch (FUNC16(enic->vdev)) {
	default:
		FUNC15(netdev, &enic->napi[0], enic_poll, 64);
		break;
	case VNIC_DEV_INTR_MODE_MSIX:
		for (i = 0; i < enic->rq_count; i++) {
			FUNC15(netdev, &enic->napi[i],
				enic_poll_msix_rq, NAPI_POLL_WEIGHT);
		}
		for (i = 0; i < enic->wq_count; i++)
			FUNC15(netdev, &enic->napi[FUNC4(enic, i)],
				       enic_poll_msix_wq, NAPI_POLL_WEIGHT);
		break;
	}

	return 0;

err_out_free_vnic_resources:
	FUNC6(enic);
	FUNC3(enic);
	FUNC7(enic);

	return err;
}