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
struct il_priv {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  S_EXIT_PENDING ; 
 int /*<<< orphan*/  S_GEO_CONFIGURED ; 
 int /*<<< orphan*/  S_READY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int
FUNC1(struct il_priv *il)
{
	/* The adapter is 'ready' if READY and GEO_CONFIGURED bits are
	 * set but EXIT_PENDING is not */
	return FUNC0(S_READY, &il->status) &&
	    FUNC0(S_GEO_CONFIGURED, &il->status) &&
	    !FUNC0(S_EXIT_PENDING, &il->status);
}