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
typedef  int /*<<< orphan*/  u8 ;
struct pctv452e_state {int /*<<< orphan*/  ca_mutex; } ;
struct dvb_usb_device {scalar_t__ priv; } ;
struct dvb_ca_en50221 {scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,unsigned int,unsigned int) ; 

__attribute__((used)) static int FUNC3(struct dvb_ca_en50221 *ca,
				u8 cmd, u8 *data, unsigned int write_len,
				unsigned int read_len)
{
	struct dvb_usb_device *d = (struct dvb_usb_device *)ca->data;
	struct pctv452e_state *state = (struct pctv452e_state *)d->priv;
	int ret;

	FUNC0(&state->ca_mutex);
	ret = FUNC2(d, cmd, data, write_len, read_len);
	FUNC1(&state->ca_mutex);

	return ret;
}