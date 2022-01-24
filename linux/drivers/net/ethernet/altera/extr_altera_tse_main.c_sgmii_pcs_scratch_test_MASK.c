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
typedef  scalar_t__ u16 ;
struct altera_tse_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  SGMII_PCS_SCRATCH ; 
 scalar_t__ FUNC0 (struct altera_tse_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct altera_tse_private*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC2(struct altera_tse_private *priv, u16 value)
{
	FUNC1(priv, SGMII_PCS_SCRATCH, value);
	return (FUNC0(priv, SGMII_PCS_SCRATCH) == value);
}