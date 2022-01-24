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
struct napi_struct {int dummy; } ;
struct bnad_rx_ctrl {int /*<<< orphan*/  rx_schedule; struct napi_struct napi; } ;
struct bnad {int dummy; } ;
struct bna_ccb {scalar_t__ ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct napi_struct*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct napi_struct*) ; 

__attribute__((used)) static void
FUNC3(struct bnad *bnad, struct bna_ccb *ccb)
{
	struct bnad_rx_ctrl *rx_ctrl = (struct bnad_rx_ctrl *)(ccb->ctrl);
	struct napi_struct *napi = &rx_ctrl->napi;

	if (FUNC1(FUNC2(napi))) {
		FUNC0(napi);
		rx_ctrl->rx_schedule++;
	}
}