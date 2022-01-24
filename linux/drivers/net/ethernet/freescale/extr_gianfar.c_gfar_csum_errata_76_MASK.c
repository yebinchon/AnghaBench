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
struct gfar_private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFAR_ERRATA_76 ; 
 scalar_t__ FUNC0 (struct gfar_private*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline bool FUNC1(struct gfar_private *priv,
				       unsigned int len)
{
	return (FUNC0(priv, GFAR_ERRATA_76) &&
	       (len > 2500));
}