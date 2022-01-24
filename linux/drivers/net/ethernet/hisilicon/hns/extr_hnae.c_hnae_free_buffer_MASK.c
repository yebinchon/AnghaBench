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
struct sk_buff {int dummy; } ;
struct page {int dummy; } ;
struct hnae_ring {int dummy; } ;
struct hnae_desc_cb {scalar_t__ type; int /*<<< orphan*/ * priv; } ;

/* Variables and functions */
 scalar_t__ DESC_TYPE_SKB ; 
 int /*<<< orphan*/  FUNC0 (struct sk_buff*) ; 
 int FUNC1 (struct hnae_ring*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct hnae_ring *ring, struct hnae_desc_cb *cb)
{
	if (FUNC3(!cb->priv))
		return;

	if (cb->type == DESC_TYPE_SKB)
		FUNC0((struct sk_buff *)cb->priv);
	else if (FUNC3(FUNC1(ring)))
		FUNC2((struct page *)cb->priv);

	cb->priv = NULL;
}