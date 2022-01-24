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
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ath10k_vif {int /*<<< orphan*/  vdev_id; struct ath10k* ar; } ;
struct ath10k_peer {int /*<<< orphan*/ ** keys; } ;
struct ath10k {int /*<<< orphan*/  data_lock; int /*<<< orphan*/  conf_mutex; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  DISABLE_KEY ; 
 int ENOENT ; 
 int FUNC1 (struct ath10k_vif*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 struct ath10k_peer* FUNC2 (struct ath10k*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (struct ath10k*,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct ath10k_vif *arvif,
				  const u8 *addr)
{
	struct ath10k *ar = arvif->ar;
	struct ath10k_peer *peer;
	int first_errno = 0;
	int ret;
	int i;
	u32 flags = 0;

	FUNC4(&ar->conf_mutex);

	FUNC5(&ar->data_lock);
	peer = FUNC2(ar, arvif->vdev_id, addr);
	FUNC6(&ar->data_lock);

	if (!peer)
		return -ENOENT;

	for (i = 0; i < FUNC0(peer->keys); i++) {
		if (peer->keys[i] == NULL)
			continue;

		/* key flags are not required to delete the key */
		ret = FUNC1(arvif, peer->keys[i],
					 DISABLE_KEY, addr, flags);
		if (ret < 0 && first_errno == 0)
			first_errno = ret;

		if (ret < 0)
			FUNC3(ar, "failed to remove peer wep key %d: %d\n",
				    i, ret);

		FUNC5(&ar->data_lock);
		peer->keys[i] = NULL;
		FUNC6(&ar->data_lock);
	}

	return first_errno;
}