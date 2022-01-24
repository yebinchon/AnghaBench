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
typedef  scalar_t__ u64 ;
struct rvu {int dummy; } ;
struct TYPE_2__ {int vtag_type; scalar_t__ strip_vtag; scalar_t__ capture_vtag; } ;
struct nix_vtag_config {scalar_t__ vtag_size; TYPE_1__ rx; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ VTAGSIZE_T8 ; 
 int /*<<< orphan*/  FUNC2 (struct rvu*,int,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct rvu *rvu, int nixlf, int blkaddr,
			   struct nix_vtag_config *req)
{
	u64 regval = req->vtag_size;

	if (req->rx.vtag_type > 7 || req->vtag_size > VTAGSIZE_T8)
		return -EINVAL;

	if (req->rx.capture_vtag)
		regval |= FUNC0(5);
	if (req->rx.strip_vtag)
		regval |= FUNC0(4);

	FUNC2(rvu, blkaddr,
		    FUNC1(nixlf, req->rx.vtag_type), regval);
	return 0;
}