#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct pt3_board {struct pt3_adapter** adaps; TYPE_2__* pdev; } ;
struct TYPE_7__ {int capabilities; } ;
struct TYPE_10__ {int feednum; int filternum; TYPE_1__ dmx; int /*<<< orphan*/  stop_feed; int /*<<< orphan*/  start_feed; struct pt3_adapter* priv; } ;
struct TYPE_9__ {int filternum; TYPE_1__* demux; } ;
struct dvb_adapter {struct pt3_board* priv; } ;
struct pt3_adapter {int adap_idx; TYPE_5__ demux; TYPE_3__ dmxdev; struct dvb_adapter dvb_adap; } ;
struct TYPE_8__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int DMX_SECTION_FILTERING ; 
 int DMX_TS_FILTERING ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  adapter_nr ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int FUNC1 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int FUNC3 (TYPE_3__*,struct dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int FUNC5 (struct dvb_adapter*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dvb_adapter*) ; 
 int /*<<< orphan*/  FUNC7 (struct pt3_adapter*) ; 
 struct pt3_adapter* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  one_adapter ; 
 int FUNC9 (struct pt3_adapter*) ; 
 int /*<<< orphan*/  FUNC10 (struct pt3_adapter*) ; 
 int /*<<< orphan*/  pt3_start_feed ; 
 int /*<<< orphan*/  pt3_stop_feed ; 

__attribute__((used)) static int FUNC11(struct pt3_board *pt3, int index)
{
	int ret;
	struct pt3_adapter *adap;
	struct dvb_adapter *da;

	adap = FUNC8(sizeof(*adap), GFP_KERNEL);
	if (!adap)
		return -ENOMEM;

	pt3->adaps[index] = adap;
	adap->adap_idx = index;

	if (index == 0 || !one_adapter) {
		ret = FUNC5(&adap->dvb_adap, "PT3 DVB",
				THIS_MODULE, &pt3->pdev->dev, adapter_nr);
		if (ret < 0) {
			FUNC0(&pt3->pdev->dev,
				"failed to register adapter dev\n");
			goto err_mem;
		}
		da = &adap->dvb_adap;
	} else
		da = &pt3->adaps[0]->dvb_adap;

	adap->dvb_adap.priv = pt3;
	adap->demux.dmx.capabilities = DMX_TS_FILTERING | DMX_SECTION_FILTERING;
	adap->demux.priv = adap;
	adap->demux.feednum = 256;
	adap->demux.filternum = 256;
	adap->demux.start_feed = pt3_start_feed;
	adap->demux.stop_feed = pt3_stop_feed;
	ret = FUNC1(&adap->demux);
	if (ret < 0) {
		FUNC0(&pt3->pdev->dev, "failed to init dmx dev\n");
		goto err_adap;
	}

	adap->dmxdev.filternum = 256;
	adap->dmxdev.demux = &adap->demux.dmx;
	ret = FUNC3(&adap->dmxdev, da);
	if (ret < 0) {
		FUNC0(&pt3->pdev->dev, "failed to init dmxdev\n");
		goto err_demux;
	}

	ret = FUNC9(adap);
	if (ret) {
		FUNC0(&pt3->pdev->dev, "failed to alloc DMA buffers\n");
		goto err_dmabuf;
	}

	return 0;

err_dmabuf:
	FUNC10(adap);
	FUNC4(&adap->dmxdev);
err_demux:
	FUNC2(&adap->demux);
err_adap:
	if (index == 0 || !one_adapter)
		FUNC6(da);
err_mem:
	FUNC7(adap);
	pt3->adaps[index] = NULL;
	return ret;
}