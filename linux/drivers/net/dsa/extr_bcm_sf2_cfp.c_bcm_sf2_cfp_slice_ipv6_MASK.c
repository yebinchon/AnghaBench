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
struct bcm_sf2_priv {int dummy; } ;
typedef  int /*<<< orphan*/  __be32 ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 int SLICE_VALID ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/  const) ; 
 int FUNC4 (int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_sf2_priv*,int,int) ; 

__attribute__((used)) static void FUNC6(struct bcm_sf2_priv *priv,
				   const __be32 *ip6_addr, const __be16 port,
				   unsigned int slice_num,
				   bool mask)
{
	u32 reg, tmp, val, offset;

	/* C-Tag		[31:24]
	 * UDF_n_B8		[23:8]	(port)
	 * UDF_n_B7 (upper)	[7:0]	(addr[15:8])
	 */
	reg = FUNC4(ip6_addr[3]);
	val = (u32)FUNC3(port) << 8 | ((reg >> 8) & 0xff);
	if (mask)
		offset = FUNC1(4);
	else
		offset = FUNC0(4);
	FUNC5(priv, val, offset);

	/* UDF_n_B7 (lower)	[31:24]	(addr[7:0])
	 * UDF_n_B6		[23:8] (addr[31:16])
	 * UDF_n_B5 (upper)	[7:0] (addr[47:40])
	 */
	tmp = FUNC4(ip6_addr[2]);
	val = (u32)(reg & 0xff) << 24 | (u32)(reg >> 16) << 8 |
	      ((tmp >> 8) & 0xff);
	if (mask)
		offset = FUNC1(3);
	else
		offset = FUNC0(3);
	FUNC5(priv, val, offset);

	/* UDF_n_B5 (lower)	[31:24] (addr[39:32])
	 * UDF_n_B4		[23:8] (addr[63:48])
	 * UDF_n_B3 (upper)	[7:0] (addr[79:72])
	 */
	reg = FUNC4(ip6_addr[1]);
	val = (u32)(tmp & 0xff) << 24 | (u32)(tmp >> 16) << 8 |
	      ((reg >> 8) & 0xff);
	if (mask)
		offset = FUNC1(2);
	else
		offset = FUNC0(2);
	FUNC5(priv, val, offset);

	/* UDF_n_B3 (lower)	[31:24] (addr[71:64])
	 * UDF_n_B2		[23:8] (addr[95:80])
	 * UDF_n_B1 (upper)	[7:0] (addr[111:104])
	 */
	tmp = FUNC4(ip6_addr[0]);
	val = (u32)(reg & 0xff) << 24 | (u32)(reg >> 16) << 8 |
	      ((tmp >> 8) & 0xff);
	if (mask)
		offset = FUNC1(1);
	else
		offset = FUNC0(1);
	FUNC5(priv, val, offset);

	/* UDF_n_B1 (lower)	[31:24] (addr[103:96])
	 * UDF_n_B0		[23:8] (addr[127:112])
	 * Reserved		[7:4]
	 * Slice ID		[3:2]
	 * Slice valid		[1:0]
	 */
	reg = (u32)(tmp & 0xff) << 24 | (u32)(tmp >> 16) << 8 |
	       FUNC2(slice_num) | SLICE_VALID;
	if (mask)
		offset = FUNC1(0);
	else
		offset = FUNC0(0);
	FUNC5(priv, reg, offset);
}