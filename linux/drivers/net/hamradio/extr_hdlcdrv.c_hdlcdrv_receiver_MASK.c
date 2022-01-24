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
struct net_device {int dummy; } ;
struct TYPE_2__ {int bitstream; int bitbuf; int numbits; int rx_state; int /*<<< orphan*/  in_hdlc_rx; int /*<<< orphan*/  buffer; int /*<<< orphan*/  bp; scalar_t__ len; int /*<<< orphan*/  hbuf; } ;
struct hdlcdrv_state {scalar_t__ magic; TYPE_1__ hdlcrx; int /*<<< orphan*/  bitbuf_hdlc; } ;

/* Variables and functions */
 scalar_t__ HDLCDRV_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (struct hdlcdrv_state*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,struct hdlcdrv_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC7(struct net_device *dev, struct hdlcdrv_state *s)
{
	int i;
	unsigned int mask1, mask2, mask3, mask4, mask5, mask6, word;
	
	if (!s || s->magic != HDLCDRV_MAGIC) 
		return;
	if (FUNC6(0, &s->hdlcrx.in_hdlc_rx))
		return;

	while (!FUNC4(&s->hdlcrx.hbuf)) {
		word = FUNC5(&s->hdlcrx.hbuf);	

#ifdef HDLCDRV_DEBUG
		hdlcdrv_add_bitbuffer_word(&s->bitbuf_hdlc, word);
#endif /* HDLCDRV_DEBUG */
	       	s->hdlcrx.bitstream >>= 16;
		s->hdlcrx.bitstream |= word << 16;
		s->hdlcrx.bitbuf >>= 16;
		s->hdlcrx.bitbuf |= word << 16;
		s->hdlcrx.numbits += 16;
		for(i = 15, mask1 = 0x1fc00, mask2 = 0x1fe00, mask3 = 0x0fc00,
		    mask4 = 0x1f800, mask5 = 0xf800, mask6 = 0xffff; 
		    i >= 0; 
		    i--, mask1 <<= 1, mask2 <<= 1, mask3 <<= 1, mask4 <<= 1, 
		    mask5 <<= 1, mask6 = (mask6 << 1) | 1) {
			if ((s->hdlcrx.bitstream & mask1) == mask1)
				s->hdlcrx.rx_state = 0; /* abort received */
			else if ((s->hdlcrx.bitstream & mask2) == mask3) {
				/* flag received */
				if (s->hdlcrx.rx_state) {
					FUNC1(s, s->hdlcrx.bitbuf 
							  << (8+i),
							  s->hdlcrx.numbits
							  -8-i);
					FUNC2(dev, s);
				}
				s->hdlcrx.len = 0;
				s->hdlcrx.bp = s->hdlcrx.buffer;
				s->hdlcrx.rx_state = 1;
				s->hdlcrx.numbits = i;
			} else if ((s->hdlcrx.bitstream & mask4) == mask5) {
				/* stuffed bit */
				s->hdlcrx.numbits--;
				s->hdlcrx.bitbuf = (s->hdlcrx.bitbuf & (~mask6)) |
					((s->hdlcrx.bitbuf & mask6) << 1);
			}
		}
		s->hdlcrx.numbits -= FUNC1(s, s->hdlcrx.bitbuf,
						       s->hdlcrx.numbits);
	}
	FUNC0(0, &s->hdlcrx.in_hdlc_rx);
}