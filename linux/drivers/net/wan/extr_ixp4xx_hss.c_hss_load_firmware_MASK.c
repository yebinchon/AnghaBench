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
struct port {int initialized; int /*<<< orphan*/  id; int /*<<< orphan*/  dev; int /*<<< orphan*/  npe; } ;
struct msg {int data32; int /*<<< orphan*/  cmd; int /*<<< orphan*/  data16a; int /*<<< orphan*/  data8a; int /*<<< orphan*/  hss_port; } ;
typedef  int /*<<< orphan*/  msg ;

/* Variables and functions */
 int /*<<< orphan*/  HDLC_MAX_MRU ; 
 int /*<<< orphan*/  NPE_PKT_MODE_HDLC ; 
 int /*<<< orphan*/  PKT_NUM_PIPES ; 
 int /*<<< orphan*/  PKT_NUM_PIPES_WRITE ; 
 int /*<<< orphan*/  PKT_PIPE_FIFO_SIZEW ; 
 int /*<<< orphan*/  PKT_PIPE_FIFO_SIZEW_WRITE ; 
 int /*<<< orphan*/  PKT_PIPE_IDLE_PATTERN_WRITE ; 
 int /*<<< orphan*/  PKT_PIPE_MODE_WRITE ; 
 int /*<<< orphan*/  PKT_PIPE_RX_SIZE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct port*,struct msg*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct msg*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct port *port)
{
	struct msg msg;
	int err;

	if (port->initialized)
		return 0;

	if (!FUNC4(port->npe) &&
	    (err = FUNC2(port->npe, FUNC3(port->npe),
				     port->dev)))
		return err;

	/* HDLC mode configuration */
	FUNC1(&msg, 0, sizeof(msg));
	msg.cmd = PKT_NUM_PIPES_WRITE;
	msg.hss_port = port->id;
	msg.data8a = PKT_NUM_PIPES;
	FUNC0(port, &msg, "HSS_SET_PKT_PIPES");

	msg.cmd = PKT_PIPE_FIFO_SIZEW_WRITE;
	msg.data8a = PKT_PIPE_FIFO_SIZEW;
	FUNC0(port, &msg, "HSS_SET_PKT_FIFO");

	msg.cmd = PKT_PIPE_MODE_WRITE;
	msg.data8a = NPE_PKT_MODE_HDLC;
	/* msg.data8b = inv_mask */
	/* msg.data8c = or_mask */
	FUNC0(port, &msg, "HSS_SET_PKT_MODE");

	msg.cmd = PKT_PIPE_RX_SIZE_WRITE;
	msg.data16a = HDLC_MAX_MRU; /* including CRC */
	FUNC0(port, &msg, "HSS_SET_PKT_RX_SIZE");

	msg.cmd = PKT_PIPE_IDLE_PATTERN_WRITE;
	msg.data32 = 0x7F7F7F7F; /* ??? FIXME */
	FUNC0(port, &msg, "HSS_SET_PKT_IDLE");

	port->initialized = 1;
	return 0;
}