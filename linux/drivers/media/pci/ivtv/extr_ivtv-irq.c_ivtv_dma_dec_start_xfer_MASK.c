#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct ivtv_stream {size_t sg_processed; int /*<<< orphan*/  sg_handle; TYPE_2__* sg_processing; TYPE_1__* sg_dma; struct ivtv* itv; } ;
struct TYPE_6__ {scalar_t__ expires; } ;
struct ivtv {TYPE_3__ dma_timer; } ;
struct TYPE_5__ {int src; int dst; int size; } ;
struct TYPE_4__ {void* size; void* dst; void* src; } ;

/* Variables and functions */
 int /*<<< orphan*/  IVTV_REG_DECDMAADDR ; 
 int /*<<< orphan*/  IVTV_REG_DMAXFER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 void* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ivtv_stream*) ; 
 scalar_t__ jiffies ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct ivtv_stream *s)
{
	struct ivtv *itv = s->itv;

	s->sg_dma->src = FUNC1(s->sg_processing[s->sg_processed].src);
	s->sg_dma->dst = FUNC1(s->sg_processing[s->sg_processed].dst);
	s->sg_dma->size = FUNC1(s->sg_processing[s->sg_processed].size | 0x80000000);
	s->sg_processed++;
	/* Sync Hardware SG List of buffers */
	FUNC2(s);
	FUNC5(s->sg_handle, IVTV_REG_DECDMAADDR);
	FUNC6(FUNC4(IVTV_REG_DMAXFER) | 0x01, IVTV_REG_DMAXFER);
	itv->dma_timer.expires = jiffies + FUNC3(300);
	FUNC0(&itv->dma_timer);
}