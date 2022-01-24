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
struct efx_nic {int dummy; } ;
typedef  int /*<<< orphan*/  efx_dword_t ;

/* Variables and functions */
 unsigned int FUNC0 (size_t,int) ; 
 unsigned int FR_CZ_MC_TREG_SMEM ; 
 unsigned int FUNC1 (struct efx_nic*) ; 
 int /*<<< orphan*/  FUNC2 (struct efx_nic*,int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct efx_nic *efx, efx_dword_t *outbuf,
				     size_t offset, size_t outlen)
{
	unsigned int pdu = FR_CZ_MC_TREG_SMEM + FUNC1(efx);
	unsigned int outlen_dw = FUNC0(outlen, 4);
	int i;

	for (i = 0; i < outlen_dw; i++)
		FUNC2(efx, &outbuf[i], pdu + offset + 4 * i);
}