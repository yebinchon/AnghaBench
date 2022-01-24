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
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct xc4000_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  XREG_FREQ_ERROR ; 
 int FUNC0 (struct xc4000_priv*,int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC1(struct xc4000_priv *priv, u32 *freq_error_hz)
{
	int result;
	u16 regData;
	u32 tmp;

	result = FUNC0(priv, XREG_FREQ_ERROR, &regData);
	if (result != 0)
		return result;

	tmp = (u32)regData & 0xFFFFU;
	tmp = (tmp < 0x8000U ? tmp : 0x10000U - tmp);
	(*freq_error_hz) = tmp * 15625;
	return result;
}