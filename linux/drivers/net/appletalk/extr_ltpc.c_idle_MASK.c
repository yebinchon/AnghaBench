#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct xmitQel {int* cbuf; int cbuflen; int mailbox; int* dbuf; int dbuflen; int /*<<< orphan*/  QWrite; } ;
struct net_device {int base_addr; scalar_t__ irq; } ;
struct TYPE_3__ {int cbuflen; int dbuflen; int /*<<< orphan*/  mailbox; int /*<<< orphan*/  QWrite; void* dbuf; void* cbuf; } ;

/* Variables and functions */
 int DEBUG_LOWER ; 
 int QInIdle ; 
 struct xmitQel* FUNC0 () ; 
 int debug ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int FUNC7 (int) ; 
 int* ltdmabuf ; 
 int* ltdmacbuf ; 
 int* mailbox ; 
 int* mboxinuse ; 
 int /*<<< orphan*/  FUNC8 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 TYPE_1__* qels ; 
 void* rescbuf ; 
 void* resdbuf ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  txqueue_lock ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int) ; 
 int /*<<< orphan*/  xmQhd ; 

__attribute__((used)) static void FUNC13(struct net_device *dev)
{
	unsigned long flags;
	int state;
	/* FIXME This is initialized to shut the warning up, but I need to
	 * think this through again.
	 */
	struct xmitQel *q = NULL;
	int oops;
	int i;
	int base = dev->base_addr;

	FUNC10(&txqueue_lock, flags);
	if(QInIdle) {
		FUNC11(&txqueue_lock, flags);
		return;
	}
	QInIdle = 1;
	FUNC11(&txqueue_lock, flags);

	/* this tri-states the IRQ line */
	(void) FUNC7(base+6);

	oops = 100;

loop:
	if (0>oops--) { 
		FUNC9("idle: looped too many times\n");
		goto done;
	}

	state = FUNC7(base+6);
	if (state != FUNC7(base+6)) goto loop;

	switch(state) {
		case 0xfc:
			/* incoming command */
			if (debug & DEBUG_LOWER) FUNC9("idle: fc\n");
			FUNC3(dev); 
			break;
		case 0xfd:
			/* incoming data */
			if(debug & DEBUG_LOWER) FUNC9("idle: fd\n");
			FUNC4(dev); 
			break;
		case 0xf9:
			/* result ready */
			if (debug & DEBUG_LOWER) FUNC9("idle: f9\n");
			if(!mboxinuse[0]) {
				mboxinuse[0] = 1;
				qels[0].cbuf = rescbuf;
				qels[0].cbuflen = 2;
				qels[0].dbuf = resdbuf;
				qels[0].dbuflen = 2;
				qels[0].QWrite = 0;
				qels[0].mailbox = 0;
				FUNC1(&qels[0]);
			}
			FUNC7(dev->base_addr+1);
			FUNC7(dev->base_addr+0);
			if( FUNC12(dev,0xf9) )
				FUNC9("timed out idle f9\n");
			break;
		case 0xf8:
			/* ?? */
			if (xmQhd) {
				FUNC7(dev->base_addr+1);
				FUNC7(dev->base_addr+0);
				if(FUNC12(dev,0xf8) )
					FUNC9("timed out idle f8\n");
			} else {
				goto done;
			}
			break;
		case 0xfa:
			/* waiting for command */
			if(debug & DEBUG_LOWER) FUNC9("idle: fa\n");
			if (xmQhd) {
				q=FUNC0();
				FUNC8(ltdmacbuf,q->cbuf,q->cbuflen);
				ltdmacbuf[1] = q->mailbox;
				if (debug>1) { 
					int n;
					FUNC9("ltpc: sent command     ");
					n = q->cbuflen;
					if (n>100) n=100;
					for(i=0;i<n;i++)
						FUNC9("%02x ",ltdmacbuf[i]);
					FUNC9("\n");
				}
				FUNC2(dev);
					if(0xfa==FUNC7(base+6)) {
						/* we timed out, so return */
						goto done;
					} 
			} else {
				/* we don't seem to have a command */
				if (!mboxinuse[0]) {
					mboxinuse[0] = 1;
					qels[0].cbuf = rescbuf;
					qels[0].cbuflen = 2;
					qels[0].dbuf = resdbuf;
					qels[0].dbuflen = 2;
					qels[0].QWrite = 0;
					qels[0].mailbox = 0;
					FUNC1(&qels[0]);
				} else {
					FUNC9("trouble: response command already queued\n");
					goto done;
				}
			} 
			break;
		case 0Xfb:
			/* data transfer ready */
			if(debug & DEBUG_LOWER) FUNC9("idle: fb\n");
			if(q->QWrite) {
				FUNC8(ltdmabuf,q->dbuf,q->dbuflen);
				FUNC6(dev);
			} else {
				FUNC5(dev);
				/* non-zero mailbox numbers are for
				   commmands, 0 is for GETRESULT
				   requests */
				if(q->mailbox) {
					FUNC8(q->dbuf,ltdmabuf,q->dbuflen);
				} else { 
					/* this was a result */
					mailbox[ 0x0f & ltdmabuf[0] ] = ltdmabuf[1];
					mboxinuse[0]=0;
				}
			}
			break;
	}
	goto loop;

done:
	QInIdle=0;

	/* now set the interrupts back as appropriate */
	/* the first read takes it out of tri-state (but still high) */
	/* the second resets it */
	/* note that after this point, any read of base+6 will
	   trigger an interrupt */

	if (dev->irq) {
		FUNC7(base+7);
		FUNC7(base+7);
	}
}