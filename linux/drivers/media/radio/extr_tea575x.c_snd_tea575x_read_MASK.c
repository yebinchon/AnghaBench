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
typedef  int u32 ;
typedef  int u16 ;
struct snd_tea575x {int tuned; int stereo; TYPE_1__* ops; scalar_t__ mute; } ;
struct TYPE_2__ {int (* read_val ) (struct snd_tea575x*) ;int (* get_pins ) (struct snd_tea575x*) ;int /*<<< orphan*/  (* set_pins ) (struct snd_tea575x*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* set_direction ) (struct snd_tea575x*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TEA575X_CLK ; 
 int TEA575X_DATA ; 
 int TEA575X_MOST ; 
 int /*<<< orphan*/  TEA575X_WREN ; 
 int FUNC0 (struct snd_tea575x*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_tea575x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_tea575x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_tea575x*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct snd_tea575x*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_tea575x*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct snd_tea575x*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_tea575x*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static u32 FUNC9(struct snd_tea575x *tea)
{
	u16 l, rdata;
	u32 data = 0;

	if (tea->ops->read_val)
		return tea->ops->read_val(tea);

	tea->ops->set_direction(tea, 0);
	tea->ops->set_pins(tea, 0);
	FUNC8(16);

	for (l = 24; l--;) {
		tea->ops->set_pins(tea, TEA575X_CLK);
		FUNC8(2);
		if (!l)
			tea->tuned = tea->ops->get_pins(tea) & TEA575X_MOST ? 0 : 1;
		tea->ops->set_pins(tea, 0);
		FUNC8(2);
		data <<= 1;			/* shift data */
		rdata = tea->ops->get_pins(tea);
		if (!l)
			tea->stereo = (rdata & TEA575X_MOST) ?  0 : 1;
		if (rdata & TEA575X_DATA)
			data++;
		FUNC8(2);
	}

	if (tea->mute)
		tea->ops->set_pins(tea, TEA575X_WREN);

	return data;
}