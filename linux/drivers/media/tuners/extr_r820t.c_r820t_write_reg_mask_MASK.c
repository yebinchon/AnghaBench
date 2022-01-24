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
struct r820t_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct r820t_priv*,int) ; 
 int FUNC1 (struct r820t_priv*,int,int*,int) ; 

__attribute__((used)) static inline int FUNC2(struct r820t_priv *priv, u8 reg, u8 val,
				u8 bit_mask)
{
	u8 tmp = val;
	int rc = FUNC0(priv, reg);

	if (rc < 0)
		return rc;

	tmp = (rc & ~bit_mask) | (tmp & bit_mask);

	return FUNC1(priv, reg, &tmp, 1);
}