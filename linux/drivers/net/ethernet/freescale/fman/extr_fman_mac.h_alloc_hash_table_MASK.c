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
typedef  size_t u32 ;
typedef  size_t u16 ;
struct list_head {int dummy; } ;
struct eth_hash_t {size_t size; int /*<<< orphan*/ * lsts; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct eth_hash_t*) ; 
 void* FUNC2 (size_t,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct eth_hash_t *FUNC3(u16 size)
{
	u32 i;
	struct eth_hash_t *hash;

	/* Allocate address hash table */
	hash = FUNC2(size, sizeof(struct eth_hash_t *), GFP_KERNEL);
	if (!hash)
		return NULL;

	hash->size = size;

	hash->lsts = FUNC2(hash->size, sizeof(struct list_head),
				   GFP_KERNEL);
	if (!hash->lsts) {
		FUNC1(hash);
		return NULL;
	}

	for (i = 0; i < hash->size; i++)
		FUNC0(&hash->lsts[i]);

	return hash;
}