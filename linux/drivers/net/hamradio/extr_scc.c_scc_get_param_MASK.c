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
struct TYPE_4__ {int txdelay; int persist; int slottime; int tailtime; int fulldup; int softdcd; int group; int idletime; int mintime; int maxkeyup; int waittime; int maxdefer; int tx_inhibit; } ;
struct TYPE_3__ {int speed; } ;
struct scc_channel {int* wreg; TYPE_2__ kiss; TYPE_1__ modem; } ;

/* Variables and functions */
 unsigned long FUNC0 (int) ; 
 int DTR ; 
 unsigned long NO_SUCH_PARAM ; 
#define  PARAM_DTR 143 
#define  PARAM_FULLDUP 142 
#define  PARAM_GROUP 141 
#define  PARAM_IDLE 140 
#define  PARAM_MAXDEFER 139 
#define  PARAM_MAXKEY 138 
#define  PARAM_MIN 137 
#define  PARAM_PERSIST 136 
#define  PARAM_RTS 135 
#define  PARAM_SLOTTIME 134 
#define  PARAM_SOFTDCD 133 
#define  PARAM_SPEED 132 
#define  PARAM_TX 131 
#define  PARAM_TXDELAY 130 
#define  PARAM_TXTAIL 129 
#define  PARAM_WAIT 128 
 size_t R5 ; 
 int RTS ; 

__attribute__((used)) static unsigned long FUNC1(struct scc_channel *scc, unsigned int cmd)
{
	switch (cmd)
	{
		case PARAM_TXDELAY:	return FUNC0(scc->kiss.txdelay);
		case PARAM_PERSIST:	return FUNC0(scc->kiss.persist);
		case PARAM_SLOTTIME:	return FUNC0(scc->kiss.slottime);
		case PARAM_TXTAIL:	return FUNC0(scc->kiss.tailtime);
		case PARAM_FULLDUP:	return FUNC0(scc->kiss.fulldup);
		case PARAM_SOFTDCD:	return FUNC0(scc->kiss.softdcd);
		case PARAM_DTR:		return FUNC0((scc->wreg[R5] & DTR)? 1:0);
		case PARAM_RTS:		return FUNC0((scc->wreg[R5] & RTS)? 1:0);
		case PARAM_SPEED:	return FUNC0(scc->modem.speed);
		case PARAM_GROUP:	return FUNC0(scc->kiss.group);
		case PARAM_IDLE:	return FUNC0(scc->kiss.idletime);
		case PARAM_MIN:		return FUNC0(scc->kiss.mintime);
		case PARAM_MAXKEY:	return FUNC0(scc->kiss.maxkeyup);
		case PARAM_WAIT:	return FUNC0(scc->kiss.waittime);
		case PARAM_MAXDEFER:	return FUNC0(scc->kiss.maxdefer);
		case PARAM_TX:		return FUNC0(scc->kiss.tx_inhibit);
		default:		return NO_SUCH_PARAM;
	}

}