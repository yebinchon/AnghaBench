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
typedef  int u32 ;
struct radio_isa_card {int /*<<< orphan*/  io; } ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int CLK_ON ; 
 int DATA ; 
 int WRT_EN ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct radio_isa_card *isa, u32 freq)
{
	int i;
	int p;
	int temp;
	long rest;
	unsigned char buffer[25];		/* we have to bit shift 25 registers */

	freq = freq / 160;			/* convert the freq. to a nice to handle value */
	FUNC0(buffer, 0, sizeof(buffer));

	rest = freq * 10 + 10700;	/* I once had understood what is going on here */
					/* maybe some wise guy (friedhelm?) can comment this stuff */
	i = 13;
	p = 10;
	temp = 102400;
	while (rest != 0) {
		if (rest % temp  == rest)
			buffer[i] = 0;
		else {
			buffer[i] = 1;
			rest = rest - temp;
		}
		i--;
		p--;
		temp = temp / 2;
	}

	for (i = 24; i > -1; i--) {	/* bit shift the values to the radiocard */
		if (buffer[i] == 1) {
			FUNC1(WRT_EN | DATA, isa->io);
			FUNC1(WRT_EN | DATA | CLK_ON, isa->io);
			FUNC1(WRT_EN | DATA, isa->io);
		} else {
			FUNC1(WRT_EN | 0x00, isa->io);
			FUNC1(WRT_EN | 0x00 | CLK_ON, isa->io);
		}
	}
	FUNC1(0x00, isa->io);
	return 0;
}