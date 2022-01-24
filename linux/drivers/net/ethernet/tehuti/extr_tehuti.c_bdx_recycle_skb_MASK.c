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
struct TYPE_2__ {int va; int wptr; int pktsz; int memsz; } ;
struct rxf_fifo {TYPE_1__ m; } ;
struct rxf_desc {void* len; void* pa_hi; void* pa_lo; int /*<<< orphan*/  va_lo; void* info; } ;
struct rxdb {int dummy; } ;
struct rxd_desc {int /*<<< orphan*/  va_lo; } ;
struct rx_map {int /*<<< orphan*/  dma; } ;
struct bdx_priv {struct rxdb* rxdb; struct rxf_fifo rxf_fifo0; } ;

/* Variables and functions */
 void* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  ENTER ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 struct rx_map* FUNC5 (struct rxdb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct rxf_desc*) ; 
 scalar_t__ FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct bdx_priv *priv, struct rxd_desc *rxdd)
{
	struct rxf_desc *rxfd;
	struct rx_map *dm;
	struct rxf_fifo *f;
	struct rxdb *db;
	int delta;

	ENTER;
	FUNC1("priv=%p rxdd=%p\n", priv, rxdd);
	f = &priv->rxf_fifo0;
	db = priv->rxdb;
	FUNC1("db=%p f=%p\n", db, f);
	dm = FUNC5(db, rxdd->va_lo);
	FUNC1("dm=%p\n", dm);
	rxfd = (struct rxf_desc *)(f->m.va + f->m.wptr);
	rxfd->info = FUNC0(0x10003);	/* INFO=1 BC=3 */
	rxfd->va_lo = rxdd->va_lo;
	rxfd->pa_lo = FUNC0(FUNC3(dm->dma));
	rxfd->pa_hi = FUNC0(FUNC2(dm->dma));
	rxfd->len = FUNC0(f->m.pktsz);
	FUNC7(rxfd);

	f->m.wptr += sizeof(struct rxf_desc);
	delta = f->m.wptr - f->m.memsz;
	if (FUNC8(delta >= 0)) {
		f->m.wptr = delta;
		if (delta > 0) {
			FUNC6(f->m.va, f->m.va + f->m.memsz, delta);
			FUNC1("wrapped descriptor\n");
		}
	}
	FUNC4();
}