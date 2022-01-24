#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ addr; } ;
struct TYPE_4__ {TYPE_1__ buf; } ;
struct efx_tx_queue {TYPE_2__ txd; scalar_t__ buffer; } ;
typedef  int /*<<< orphan*/  efx_qword_t ;

/* Variables and functions */
 unsigned int FUNC0 (struct efx_tx_queue*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static inline void FUNC2(struct efx_tx_queue *tx_queue)
{
	unsigned int insert_ptr = FUNC0(tx_queue);
	char *ptr;

	ptr = (char *) (tx_queue->buffer + insert_ptr);
	FUNC1(ptr);
	FUNC1(ptr + 0x80);

	ptr = (char *) (((efx_qword_t *)tx_queue->txd.buf.addr) + insert_ptr);
	FUNC1(ptr);
	FUNC1(ptr + 0x80);
}