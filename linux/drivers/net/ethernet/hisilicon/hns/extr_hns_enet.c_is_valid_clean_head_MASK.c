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
struct hnae_ring {int next_to_use; int next_to_clean; int desc_num; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 

__attribute__((used)) static int FUNC2(struct hnae_ring *ring, int h)
{
	int u = ring->next_to_use;
	int c = ring->next_to_clean;

	if (FUNC1(h > ring->desc_num))
		return 0;

	FUNC0(u > 0 && u < ring->desc_num);
	FUNC0(c > 0 && c < ring->desc_num);
	FUNC0(u != c && h != c); /* must be checked before call this func */

	return u > c ? (h > c && h <= u) : (h > c || h <= u);
}