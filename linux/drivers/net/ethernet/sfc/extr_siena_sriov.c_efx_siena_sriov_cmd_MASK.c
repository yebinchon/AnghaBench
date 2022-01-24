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
struct efx_nic {int vf_count; } ;

/* Variables and functions */
 int EFX_VI_BASE ; 
 unsigned int EFX_VI_SCALE_MAX ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  MC_CMD_SRIOV ; 
 size_t MC_CMD_SRIOV_IN_LEN ; 
 size_t MC_CMD_SRIOV_OUT_LEN ; 
 int /*<<< orphan*/  SRIOV_IN_ENABLE ; 
 int /*<<< orphan*/  SRIOV_IN_VF_COUNT ; 
 int /*<<< orphan*/  SRIOV_IN_VI_BASE ; 
 int /*<<< orphan*/  SRIOV_OUT_VF_TOTAL ; 
 int /*<<< orphan*/  SRIOV_OUT_VI_SCALE ; 
 int FUNC3 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,size_t,size_t*) ; 
 int /*<<< orphan*/  inbuf ; 
 int /*<<< orphan*/  outbuf ; 

__attribute__((used)) static int FUNC4(struct efx_nic *efx, bool enable,
			       unsigned *vi_scale_out, unsigned *vf_total_out)
{
	FUNC0(inbuf, MC_CMD_SRIOV_IN_LEN);
	FUNC0(outbuf, MC_CMD_SRIOV_OUT_LEN);
	unsigned vi_scale, vf_total;
	size_t outlen;
	int rc;

	FUNC2(inbuf, SRIOV_IN_ENABLE, enable ? 1 : 0);
	FUNC2(inbuf, SRIOV_IN_VI_BASE, EFX_VI_BASE);
	FUNC2(inbuf, SRIOV_IN_VF_COUNT, efx->vf_count);

	rc = FUNC3(efx, MC_CMD_SRIOV, inbuf, MC_CMD_SRIOV_IN_LEN,
				outbuf, MC_CMD_SRIOV_OUT_LEN, &outlen);
	if (rc)
		return rc;
	if (outlen < MC_CMD_SRIOV_OUT_LEN)
		return -EIO;

	vf_total = FUNC1(outbuf, SRIOV_OUT_VF_TOTAL);
	vi_scale = FUNC1(outbuf, SRIOV_OUT_VI_SCALE);
	if (vi_scale > EFX_VI_SCALE_MAX)
		return -EOPNOTSUPP;

	if (vi_scale_out)
		*vi_scale_out = vi_scale;
	if (vf_total_out)
		*vf_total_out = vf_total;

	return 0;
}