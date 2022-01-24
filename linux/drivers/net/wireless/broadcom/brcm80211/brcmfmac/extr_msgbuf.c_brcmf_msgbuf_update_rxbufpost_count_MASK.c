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
typedef  scalar_t__ u16 ;
struct brcmf_msgbuf {scalar_t__ rxbufpost; scalar_t__ max_rxbufpost; } ;

/* Variables and functions */
 scalar_t__ BRCMF_MSGBUF_RXBUFPOST_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (struct brcmf_msgbuf*) ; 

__attribute__((used)) static void
FUNC1(struct brcmf_msgbuf *msgbuf, u16 rxcnt)
{
	msgbuf->rxbufpost -= rxcnt;
	if (msgbuf->rxbufpost <= (msgbuf->max_rxbufpost -
				  BRCMF_MSGBUF_RXBUFPOST_THRESHOLD))
		FUNC0(msgbuf);
}