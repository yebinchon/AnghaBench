#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  void* u32 ;
struct tls_record_info {int /*<<< orphan*/ * frags; } ;
struct sync_info {int nr_frags; int /*<<< orphan*/ * frags; void* sync_len; int /*<<< orphan*/  rcd_sn; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; } ;
struct mlx5e_tls_offload_context_tx {TYPE_1__ base; } ;
typedef  void* s32 ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct tls_record_info* FUNC5 (TYPE_1__*,void*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct tls_record_info*) ; 
 void* FUNC7 (struct tls_record_info*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct mlx5e_tls_offload_context_tx *context,
				   u32 tcp_seq, struct sync_info *info)
{
	int remaining, i = 0, ret = -EINVAL;
	struct tls_record_info *record;
	unsigned long flags;
	s32 sync_size;

	FUNC3(&context->base.lock, flags);
	record = FUNC5(&context->base, tcp_seq, &info->rcd_sn);

	if (FUNC8(!record))
		goto out;

	sync_size = tcp_seq - FUNC7(record);
	info->sync_len = sync_size;
	if (FUNC8(sync_size < 0)) {
		if (FUNC6(record))
			goto done;

		goto out;
	}

	remaining = sync_size;
	while (remaining > 0) {
		info->frags[i] = record->frags[i];
		FUNC0(&info->frags[i]);
		remaining -= FUNC1(&info->frags[i]);

		if (remaining < 0)
			FUNC2(&info->frags[i], remaining);

		i++;
	}
	info->nr_frags = i;
done:
	ret = 0;
out:
	FUNC4(&context->base.lock, flags);
	return ret;
}