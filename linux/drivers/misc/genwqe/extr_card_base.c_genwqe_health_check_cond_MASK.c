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
typedef  int u64 ;
struct genwqe_dev {int dummy; } ;

/* Variables and functions */
 int GFIR_ERR_TRIGGER ; 
 int /*<<< orphan*/  IO_SLC_CFGREG_GFIR ; 
 int FUNC0 (struct genwqe_dev*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct genwqe_dev*) ; 

__attribute__((used)) static int FUNC2(struct genwqe_dev *cd, u64 *gfir)
{
	*gfir = FUNC0(cd, IO_SLC_CFGREG_GFIR);
	return (*gfir & GFIR_ERR_TRIGGER) &&
		FUNC1(cd);
}