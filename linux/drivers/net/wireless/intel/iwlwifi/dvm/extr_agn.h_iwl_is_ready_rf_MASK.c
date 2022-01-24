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
struct iwl_priv {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct iwl_priv*) ; 
 scalar_t__ FUNC1 (struct iwl_priv*) ; 

__attribute__((used)) static inline int FUNC2(struct iwl_priv *priv)
{
	if (FUNC1(priv))
		return 0;

	return FUNC0(priv);
}