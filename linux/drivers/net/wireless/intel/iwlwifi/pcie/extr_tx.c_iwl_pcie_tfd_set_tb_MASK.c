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
typedef  size_t u8 ;
typedef  int u16 ;
struct iwl_trans {int dummy; } ;
struct iwl_tfd_tb {int /*<<< orphan*/  hi_n_len; int /*<<< orphan*/  lo; } ;
struct iwl_tfd {size_t num_tbs; struct iwl_tfd_tb* tbs; } ;
typedef  int /*<<< orphan*/  dma_addr_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3(struct iwl_trans *trans, void *tfd,
				       u8 idx, dma_addr_t addr, u16 len)
{
	struct iwl_tfd *tfd_fh = (void *)tfd;
	struct iwl_tfd_tb *tb = &tfd_fh->tbs[idx];

	u16 hi_n_len = len << 4;

	FUNC2(addr, &tb->lo);
	hi_n_len |= FUNC1(addr);

	tb->hi_n_len = FUNC0(hi_n_len);

	tfd_fh->num_tbs = idx + 1;
}