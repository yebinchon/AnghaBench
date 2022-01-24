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
typedef  scalar_t__ u32 ;
struct efx_nic {int /*<<< orphan*/  net_dev; } ;
struct efx_mcdi_iface {int /*<<< orphan*/  state; } ;
typedef  int /*<<< orphan*/  const efx_dword_t ;

/* Variables and functions */
 int EINTR ; 
 int EINVAL ; 
 int EIO ; 
 int EPERM ; 
 int /*<<< orphan*/  MCDI_STATE_RUNNING_SYNC ; 
 int /*<<< orphan*/  RESET_TYPE_MC_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct efx_nic*,unsigned int,size_t,int /*<<< orphan*/  const*,size_t,size_t*,int,scalar_t__*,int*) ; 
 struct efx_mcdi_iface* FUNC2 (struct efx_nic*) ; 
 int FUNC3 (struct efx_nic*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (struct efx_mcdi_iface*) ; 
 int FUNC5 (struct efx_nic*,unsigned int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct efx_nic*,unsigned int,int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct efx_nic*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  err ; 
 int /*<<< orphan*/  hw ; 
 int /*<<< orphan*/  FUNC8 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct efx_nic*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct efx_nic *efx, unsigned int cmd,
			 const efx_dword_t *inbuf, size_t inlen,
			 efx_dword_t *outbuf, size_t outlen,
			 size_t *outlen_actual, bool quiet, int *raw_rc)
{
	u32 proxy_handle = 0; /* Zero is an invalid proxy handle. */
	int rc;

	if (inbuf && inlen && (inbuf == outbuf)) {
		/* The input buffer can't be aliased with the output. */
		FUNC0(1);
		return -EINVAL;
	}

	rc = FUNC5(efx, cmd, inbuf, inlen);
	if (rc)
		return rc;

	rc = FUNC1(efx, cmd, inlen, outbuf, outlen,
				  outlen_actual, quiet, &proxy_handle, raw_rc);

	if (proxy_handle) {
		/* Handle proxy authorisation. This allows approval of MCDI
		 * operations to be delegated to the admin function, allowing
		 * fine control over (eg) multicast subscriptions.
		 */
		struct efx_mcdi_iface *mcdi = FUNC2(efx);

		FUNC9(efx, hw, efx->net_dev,
			  "MCDI waiting for proxy auth %d\n",
			  proxy_handle);
		rc = FUNC3(efx, proxy_handle, quiet);

		if (rc == 0) {
			FUNC9(efx, hw, efx->net_dev,
				  "MCDI proxy retry %d\n", proxy_handle);

			/* We now retry the original request. */
			mcdi->state = MCDI_STATE_RUNNING_SYNC;
			FUNC6(efx, cmd, inbuf, inlen);

			rc = FUNC1(efx, cmd, inlen,
						  outbuf, outlen, outlen_actual,
						  quiet, NULL, raw_rc);
		} else {
			FUNC8(efx, hw, efx->net_dev, rc == -EPERM, err,
				       "MC command 0x%x failed after proxy auth rc=%d\n",
				       cmd, rc);

			if (rc == -EINTR || rc == -EIO)
				FUNC7(efx, RESET_TYPE_MC_FAILURE);
			FUNC4(mcdi);
		}
	}

	return rc;
}