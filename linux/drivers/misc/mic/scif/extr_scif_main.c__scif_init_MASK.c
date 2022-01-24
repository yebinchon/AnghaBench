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
struct TYPE_2__ {int p2p_enable; int /*<<< orphan*/  conn_work; int /*<<< orphan*/  mmu_notif_work; int /*<<< orphan*/  misc_work; scalar_t__ en_msg_log; int /*<<< orphan*/  rma_tc_limit; int /*<<< orphan*/  exitwq; int /*<<< orphan*/  nb_connect_list; int /*<<< orphan*/  fence; int /*<<< orphan*/  mmu_notif_cleanup; int /*<<< orphan*/  rma_tc; int /*<<< orphan*/  rma; int /*<<< orphan*/  disconnected; int /*<<< orphan*/  connected; int /*<<< orphan*/  zombie; int /*<<< orphan*/  listen; int /*<<< orphan*/  uaccept; int /*<<< orphan*/  fencelock; int /*<<< orphan*/  connlock; int /*<<< orphan*/  conflock; int /*<<< orphan*/  port_lock; int /*<<< orphan*/  nb_connect_lock; int /*<<< orphan*/  rmalock; int /*<<< orphan*/  eplock; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCIF_KMEM_UNALIGNED_BUF_SIZE ; 
 int /*<<< orphan*/  SCIF_RMA_TEMP_CACHE_LIMIT ; 
 int /*<<< orphan*/  SLAB_HWCACHE_ALIGN ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  scif_conn_handler ; 
 int /*<<< orphan*/  FUNC6 () ; 
 TYPE_1__ scif_info ; 
 int /*<<< orphan*/  scif_misc_handler ; 
 int /*<<< orphan*/  scif_mmu_notif_handler ; 
 int /*<<< orphan*/  scif_ports ; 
 int FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  unaligned_cache ; 

__attribute__((used)) static int FUNC9(void)
{
	int rc;

	FUNC5(&scif_info.eplock);
	FUNC8(&scif_info.rmalock);
	FUNC8(&scif_info.nb_connect_lock);
	FUNC8(&scif_info.port_lock);
	FUNC5(&scif_info.conflock);
	FUNC5(&scif_info.connlock);
	FUNC5(&scif_info.fencelock);
	FUNC0(&scif_info.uaccept);
	FUNC0(&scif_info.listen);
	FUNC0(&scif_info.zombie);
	FUNC0(&scif_info.connected);
	FUNC0(&scif_info.disconnected);
	FUNC0(&scif_info.rma);
	FUNC0(&scif_info.rma_tc);
	FUNC0(&scif_info.mmu_notif_cleanup);
	FUNC0(&scif_info.fence);
	FUNC0(&scif_info.nb_connect_list);
	FUNC3(&scif_info.exitwq);
	scif_info.rma_tc_limit = SCIF_RMA_TEMP_CACHE_LIMIT;
	scif_info.en_msg_log = 0;
	scif_info.p2p_enable = 1;
	rc = FUNC7();
	if (rc)
		goto error;
	unaligned_cache = FUNC4("Unaligned_DMA",
					    SCIF_KMEM_UNALIGNED_BUF_SIZE,
					    0, SLAB_HWCACHE_ALIGN, NULL);
	if (!unaligned_cache) {
		rc = -ENOMEM;
		goto free_sdev;
	}
	FUNC1(&scif_info.misc_work, scif_misc_handler);
	FUNC1(&scif_info.mmu_notif_work, scif_mmu_notif_handler);
	FUNC1(&scif_info.conn_work, scif_conn_handler);
	FUNC2(&scif_ports);
	return 0;
free_sdev:
	FUNC6();
error:
	return rc;
}