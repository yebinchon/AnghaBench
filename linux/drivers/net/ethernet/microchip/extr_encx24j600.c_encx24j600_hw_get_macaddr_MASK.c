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
struct encx24j600_priv {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MAADR1 ; 
 int /*<<< orphan*/  MAADR2 ; 
 int /*<<< orphan*/  MAADR3 ; 
 unsigned short FUNC0 (struct encx24j600_priv*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct encx24j600_priv *priv,
				      unsigned char *ethaddr)
{
	unsigned short val;

	val = FUNC0(priv, MAADR1);

	ethaddr[0] = val & 0x00ff;
	ethaddr[1] = (val & 0xff00) >> 8;

	val = FUNC0(priv, MAADR2);

	ethaddr[2] = val & 0x00ffU;
	ethaddr[3] = (val & 0xff00U) >> 8;

	val = FUNC0(priv, MAADR3);

	ethaddr[4] = val & 0x00ffU;
	ethaddr[5] = (val & 0xff00U) >> 8;
}