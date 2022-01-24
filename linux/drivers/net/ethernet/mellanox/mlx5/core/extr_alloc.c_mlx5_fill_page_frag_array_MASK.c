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
struct mlx5_frag_buf {int npages; TYPE_1__* frags; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_2__ {int /*<<< orphan*/  map; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct mlx5_frag_buf *buf, __be64 *pas)
{
	int i;

	for (i = 0; i < buf->npages; i++)
		pas[i] = FUNC0(buf->frags[i].map);
}