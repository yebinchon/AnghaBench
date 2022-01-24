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
struct brcmf_pciedev_info {scalar_t__ state; int /*<<< orphan*/  (* write_ptr ) (struct brcmf_pciedev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct brcmf_commonring {int /*<<< orphan*/  r_ptr; int /*<<< orphan*/  w_ptr; } ;
struct brcmf_pcie_ringbuf {int /*<<< orphan*/  r_idx_addr; int /*<<< orphan*/  id; struct brcmf_commonring commonring; struct brcmf_pciedev_info* devinfo; } ;

/* Variables and functions */
 scalar_t__ BRCMFMAC_PCIE_STATE_UP ; 
 int EIO ; 
 int /*<<< orphan*/  PCIE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct brcmf_pciedev_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(void *ctx)
{
	struct brcmf_pcie_ringbuf *ring = (struct brcmf_pcie_ringbuf *)ctx;
	struct brcmf_pciedev_info *devinfo = ring->devinfo;
	struct brcmf_commonring *commonring = &ring->commonring;

	if (devinfo->state != BRCMFMAC_PCIE_STATE_UP)
		return -EIO;

	FUNC0(PCIE, "W r_ptr %d (%d), ring %d\n", commonring->r_ptr,
		  commonring->w_ptr, ring->id);

	devinfo->write_ptr(devinfo, ring->r_idx_addr, commonring->r_ptr);

	return 0;
}