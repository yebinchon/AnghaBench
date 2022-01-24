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
struct hnae_ring {size_t next_to_clean; struct hnae_desc_cb* desc_cb; } ;
struct hnae_desc_cb {scalar_t__ type; scalar_t__ length; } ;

/* Variables and functions */
 scalar_t__ DESC_TYPE_SKB ; 
 int /*<<< orphan*/  FUNC0 (struct hnae_ring*,size_t) ; 
 int /*<<< orphan*/  next_to_clean ; 
 int /*<<< orphan*/  FUNC1 (struct hnae_ring*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct hnae_ring *ring,
					    int *bytes, int *pkts)
{
	struct hnae_desc_cb *desc_cb = &ring->desc_cb[ring->next_to_clean];

	(*pkts) += (desc_cb->type == DESC_TYPE_SKB);
	(*bytes) += desc_cb->length;
	/* desc_cb will be cleaned, after hnae_free_buffer_detach*/
	FUNC0(ring, ring->next_to_clean);

	FUNC1(ring, next_to_clean);
}