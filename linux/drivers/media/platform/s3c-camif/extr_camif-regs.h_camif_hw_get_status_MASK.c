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
typedef  int /*<<< orphan*/  u32 ;
struct camif_vp {int /*<<< orphan*/  offset; int /*<<< orphan*/  id; TYPE_1__* camif; } ;
struct TYPE_2__ {scalar_t__ io_base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static inline u32 FUNC2(struct camif_vp *vp)
{
	return FUNC1(vp->camif->io_base + FUNC0(vp->id,
								vp->offset));
}