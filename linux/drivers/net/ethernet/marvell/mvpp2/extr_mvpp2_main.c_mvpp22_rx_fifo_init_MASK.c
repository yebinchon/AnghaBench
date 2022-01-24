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
struct mvpp2 {int dummy; } ;

/* Variables and functions */
 int MVPP2_MAX_PORTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  MVPP2_RX_FIFO_INIT_REG ; 
 int MVPP2_RX_FIFO_PORT_ATTR_SIZE_32KB ; 
 int MVPP2_RX_FIFO_PORT_ATTR_SIZE_4KB ; 
 int MVPP2_RX_FIFO_PORT_ATTR_SIZE_8KB ; 
 int MVPP2_RX_FIFO_PORT_DATA_SIZE_32KB ; 
 int MVPP2_RX_FIFO_PORT_DATA_SIZE_4KB ; 
 int MVPP2_RX_FIFO_PORT_DATA_SIZE_8KB ; 
 int MVPP2_RX_FIFO_PORT_MIN_PKT ; 
 int /*<<< orphan*/  MVPP2_RX_MIN_PKT_SIZE_REG ; 
 int /*<<< orphan*/  FUNC2 (struct mvpp2*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(struct mvpp2 *priv)
{
	int port;

	/* The FIFO size parameters are set depending on the maximum speed a
	 * given port can handle:
	 * - Port 0: 10Gbps
	 * - Port 1: 2.5Gbps
	 * - Ports 2 and 3: 1Gbps
	 */

	FUNC2(priv, FUNC1(0),
		    MVPP2_RX_FIFO_PORT_DATA_SIZE_32KB);
	FUNC2(priv, FUNC0(0),
		    MVPP2_RX_FIFO_PORT_ATTR_SIZE_32KB);

	FUNC2(priv, FUNC1(1),
		    MVPP2_RX_FIFO_PORT_DATA_SIZE_8KB);
	FUNC2(priv, FUNC0(1),
		    MVPP2_RX_FIFO_PORT_ATTR_SIZE_8KB);

	for (port = 2; port < MVPP2_MAX_PORTS; port++) {
		FUNC2(priv, FUNC1(port),
			    MVPP2_RX_FIFO_PORT_DATA_SIZE_4KB);
		FUNC2(priv, FUNC0(port),
			    MVPP2_RX_FIFO_PORT_ATTR_SIZE_4KB);
	}

	FUNC2(priv, MVPP2_RX_MIN_PKT_SIZE_REG,
		    MVPP2_RX_FIFO_PORT_MIN_PKT);
	FUNC2(priv, MVPP2_RX_FIFO_INIT_REG, 0x1);
}