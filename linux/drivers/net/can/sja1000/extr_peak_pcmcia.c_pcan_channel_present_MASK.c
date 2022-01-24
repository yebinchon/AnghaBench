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
struct sja1000_priv {int dummy; } ;

/* Variables and functions */
 int CDR_PELICAN ; 
 int /*<<< orphan*/  SJA1000_CDR ; 
 int /*<<< orphan*/  SJA1000_MOD ; 
 int FUNC0 (struct sja1000_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sja1000_priv*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline int FUNC2(struct sja1000_priv *priv)
{
	/* make sure SJA1000 is in reset mode */
	FUNC1(priv, SJA1000_MOD, 1);
	FUNC1(priv, SJA1000_CDR, CDR_PELICAN);

	/* read reset-values */
	if (FUNC0(priv, SJA1000_CDR) == CDR_PELICAN)
		return 1;

	return 0;
}