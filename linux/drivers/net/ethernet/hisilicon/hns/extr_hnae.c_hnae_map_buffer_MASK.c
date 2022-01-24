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
struct hnae_ring {int dummy; } ;
struct hnae_desc_cb {int /*<<< orphan*/  dma; int /*<<< orphan*/  length; int /*<<< orphan*/  priv; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hnae_ring*) ; 
 int /*<<< orphan*/  FUNC3 (struct hnae_ring*) ; 

__attribute__((used)) static int FUNC4(struct hnae_ring *ring, struct hnae_desc_cb *cb)
{
	cb->dma = FUNC0(FUNC2(ring), cb->priv, 0,
			       cb->length, FUNC3(ring));

	if (FUNC1(FUNC2(ring), cb->dma))
		return -EIO;

	return 0;
}