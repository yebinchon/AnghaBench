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
typedef  int u8 ;
typedef  int u32 ;
struct fc0013_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct fc0013_priv*,int,int*) ; 
 int FUNC1 (struct fc0013_priv*,int,int) ; 

__attribute__((used)) static int FUNC2(struct fc0013_priv *priv, u32 freq)
{
	int ret;
	u8 tmp;

	ret = FUNC0(priv, 0x1d, &tmp);
	if (ret)
		goto error_out;
	tmp &= 0xe3;
	if (freq <= 177500) {		/* VHF Track: 7 */
		ret = FUNC1(priv, 0x1d, tmp | 0x1c);
	} else if (freq <= 184500) {	/* VHF Track: 6 */
		ret = FUNC1(priv, 0x1d, tmp | 0x18);
	} else if (freq <= 191500) {	/* VHF Track: 5 */
		ret = FUNC1(priv, 0x1d, tmp | 0x14);
	} else if (freq <= 198500) {	/* VHF Track: 4 */
		ret = FUNC1(priv, 0x1d, tmp | 0x10);
	} else if (freq <= 205500) {	/* VHF Track: 3 */
		ret = FUNC1(priv, 0x1d, tmp | 0x0c);
	} else if (freq <= 219500) {	/* VHF Track: 2 */
		ret = FUNC1(priv, 0x1d, tmp | 0x08);
	} else if (freq < 300000) {	/* VHF Track: 1 */
		ret = FUNC1(priv, 0x1d, tmp | 0x04);
	} else {			/* UHF and GPS */
		ret = FUNC1(priv, 0x1d, tmp | 0x1c);
	}
error_out:
	return ret;
}