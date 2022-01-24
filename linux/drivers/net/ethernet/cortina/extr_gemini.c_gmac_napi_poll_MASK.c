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
struct napi_struct {int /*<<< orphan*/  dev; } ;
struct gemini_ethernet_port {int freeq_refill; int /*<<< orphan*/  rx_stats_syncp; int /*<<< orphan*/  rx_napi_exits; struct gemini_ethernet* geth; } ;
struct gemini_ethernet {int freeq_order; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gemini_ethernet*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct napi_struct*,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct napi_struct*,int) ; 
 struct gemini_ethernet_port* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct napi_struct *napi, int budget)
{
	struct gemini_ethernet_port *port = FUNC5(napi->dev);
	struct gemini_ethernet *geth = port->geth;
	unsigned int freeq_threshold;
	unsigned int received;

	freeq_threshold = 1 << (geth->freeq_order - 1);
	FUNC6(&port->rx_stats_syncp);

	received = FUNC2(napi->dev, budget);
	if (received < budget) {
		FUNC4(napi, false);
		FUNC3(napi, received);
		FUNC1(napi->dev, 1);
		++port->rx_napi_exits;
	}

	port->freeq_refill += (budget - received);
	if (port->freeq_refill > freeq_threshold) {
		port->freeq_refill -= freeq_threshold;
		FUNC0(geth, true);
	}

	FUNC7(&port->rx_stats_syncp);
	return received;
}