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
struct flow_dissector_key_ports {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct flow_dissector_key_ipv4_addrs {int /*<<< orphan*/  src; int /*<<< orphan*/  dst; } ;
struct bcm_sf2_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (unsigned int) ; 
 int SLICE_VALID ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct bcm_sf2_priv*,int,int) ; 

__attribute__((used)) static void FUNC6(struct bcm_sf2_priv *priv,
				   struct flow_dissector_key_ipv4_addrs *addrs,
				   struct flow_dissector_key_ports *ports,
				   unsigned int slice_num,
				   bool mask)
{
	u32 reg, offset;

	/* C-Tag		[31:24]
	 * UDF_n_A8		[23:8]
	 * UDF_n_A7		[7:0]
	 */
	reg = 0;
	if (mask)
		offset = FUNC1(4);
	else
		offset = FUNC0(4);
	FUNC5(priv, reg, offset);

	/* UDF_n_A7		[31:24]
	 * UDF_n_A6		[23:8]
	 * UDF_n_A5		[7:0]
	 */
	reg = FUNC3(ports->dst) >> 8;
	if (mask)
		offset = FUNC1(3);
	else
		offset = FUNC0(3);
	FUNC5(priv, reg, offset);

	/* UDF_n_A5		[31:24]
	 * UDF_n_A4		[23:8]
	 * UDF_n_A3		[7:0]
	 */
	reg = (FUNC3(ports->dst) & 0xff) << 24 |
	      (u32)FUNC3(ports->src) << 8 |
	      (FUNC4(addrs->dst) & 0x0000ff00) >> 8;
	if (mask)
		offset = FUNC1(2);
	else
		offset = FUNC0(2);
	FUNC5(priv, reg, offset);

	/* UDF_n_A3		[31:24]
	 * UDF_n_A2		[23:8]
	 * UDF_n_A1		[7:0]
	 */
	reg = (u32)(FUNC4(addrs->dst) & 0xff) << 24 |
	      (u32)(FUNC4(addrs->dst) >> 16) << 8 |
	      (FUNC4(addrs->src) & 0x0000ff00) >> 8;
	if (mask)
		offset = FUNC1(1);
	else
		offset = FUNC0(1);
	FUNC5(priv, reg, offset);

	/* UDF_n_A1		[31:24]
	 * UDF_n_A0		[23:8]
	 * Reserved		[7:4]
	 * Slice ID		[3:2]
	 * Slice valid		[1:0]
	 */
	reg = (u32)(FUNC4(addrs->src) & 0xff) << 24 |
	      (u32)(FUNC4(addrs->src) >> 16) << 8 |
	      FUNC2(slice_num) | SLICE_VALID;
	if (mask)
		offset = FUNC1(0);
	else
		offset = FUNC0(0);
	FUNC5(priv, reg, offset);
}