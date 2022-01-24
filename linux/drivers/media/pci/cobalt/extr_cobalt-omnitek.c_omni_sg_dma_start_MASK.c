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
typedef  int u32 ;
struct sg_dma_desc_info {scalar_t__ bus; } ;
struct cobalt_stream {int /*<<< orphan*/  dma_channel; struct cobalt* cobalt; } ;
struct cobalt {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int ENABLE ; 
 int NEXT_ADRS_MSK ; 
 int SCATTER_GATHER_MODE ; 
 int START ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

void FUNC3(struct cobalt_stream *s, struct sg_dma_desc_info *desc)
{
	struct cobalt *cobalt = s->cobalt;

	FUNC2((u32)((u64)desc->bus >> 32), FUNC1(s->dma_channel) + 4);
	FUNC2((u32)desc->bus & NEXT_ADRS_MSK, FUNC1(s->dma_channel));
	FUNC2(ENABLE | SCATTER_GATHER_MODE | START, FUNC0(s->dma_channel));
}