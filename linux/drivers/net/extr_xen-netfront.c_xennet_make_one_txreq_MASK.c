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
struct xennet_gnttab_make_txreq {int /*<<< orphan*/  skb; TYPE_1__* tx; } ;
struct TYPE_2__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  XEN_NETTXF_more_data ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned int,unsigned int,void*) ; 

__attribute__((used)) static void FUNC2(unsigned long gfn, unsigned int offset,
				  unsigned int len, void *data)
{
	struct xennet_gnttab_make_txreq *info = data;

	info->tx->flags |= XEN_NETTXF_more_data;
	FUNC0(info->skb);
	FUNC1(gfn, offset, len, data);
}