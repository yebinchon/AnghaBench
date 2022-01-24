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
typedef  int /*<<< orphan*/  u32 ;
struct smi_port {int users; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  DMA_MANAGEMENT; struct smi_dev* dev; } ;
struct smi_dev {int dummy; } ;
struct dvb_demux_feed {struct dvb_demux* demux; } ;
struct dvb_demux {struct smi_port* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct smi_port*) ; 
 int /*<<< orphan*/  FUNC1 (struct smi_port*) ; 
 int /*<<< orphan*/  FUNC2 (struct smi_port*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dvb_demux_feed *dvbdmxfeed)
{
	struct dvb_demux *dvbdmx = dvbdmxfeed->demux;
	struct smi_port *port = dvbdmx->priv;
	struct smi_dev *dev = port->dev;
	u32 dmaManagement;

	if (port->users++ == 0) {
		dmaManagement = FUNC0(port);
		FUNC1(port);
		FUNC2(port);
		FUNC3(port->DMA_MANAGEMENT, dmaManagement);
		FUNC4(&port->tasklet);
	}
	return port->users;
}