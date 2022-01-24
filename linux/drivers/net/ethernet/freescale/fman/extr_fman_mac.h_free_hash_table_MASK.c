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
struct eth_hash_t {int size; struct eth_hash_t* lsts; } ;
struct eth_hash_entry {int size; struct eth_hash_entry* lsts; } ;

/* Variables and functions */
 struct eth_hash_t* FUNC0 (struct eth_hash_t*) ; 
 int /*<<< orphan*/  FUNC1 (struct eth_hash_t*) ; 

__attribute__((used)) static inline void FUNC2(struct eth_hash_t *hash)
{
	struct eth_hash_entry *hash_entry;
	int i = 0;

	if (hash) {
		if (hash->lsts) {
			for (i = 0; i < hash->size; i++) {
				hash_entry =
				FUNC0(&hash->lsts[i]);
				while (hash_entry) {
					FUNC1(hash_entry);
					hash_entry =
					FUNC0(&hash->
								     lsts[i]);
				}
			}

			FUNC1(hash->lsts);
		}

		FUNC1(hash);
	}
}