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

/* Variables and functions */
 unsigned char EOC ; 
 unsigned char HNib ; 
 scalar_t__ PAR_DATA ; 
 unsigned char WrAddr ; 
 int /*<<< orphan*/  FUNC0 (unsigned char,scalar_t__) ; 

__attribute__((used)) static inline void
FUNC1(short port, unsigned char reg, unsigned char value)
{
	unsigned char outval = EOC | HNib | reg;

	FUNC0(outval, port + PAR_DATA);
	outval &= WrAddr | HNib | 0x0f;
	FUNC0(outval, port + PAR_DATA);
	FUNC0(outval, port + PAR_DATA);	/* Double write for PS/2. */

	outval = WrAddr | HNib | value;
	FUNC0(outval, port + PAR_DATA);
	outval &= HNib | 0x0f;		/* HNib | value */
	FUNC0(outval, port + PAR_DATA);
	FUNC0(outval, port + PAR_DATA);

	FUNC0(EOC | HNib | outval, port + PAR_DATA);
}