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
struct proc_data {int maxwritelen; struct proc_data* rbuffer; int /*<<< orphan*/  readlen; int /*<<< orphan*/  on_close; int /*<<< orphan*/ * wbuffer; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {struct proc_data* private_data; } ;
struct TYPE_2__ {int opmode; char* nodeName; scalar_t__ powerSaveMode; int txDiversity; int rxDiversity; scalar_t__ authType; scalar_t__ modulation; scalar_t__ preamble; int /*<<< orphan*/  fragThresh; int /*<<< orphan*/  rxLifetime; int /*<<< orphan*/  txLifetime; int /*<<< orphan*/  rtsThres; int /*<<< orphan*/  shortRetryLimit; int /*<<< orphan*/  longRetryLimit; int /*<<< orphan*/  txPower; int /*<<< orphan*/  channelSet; scalar_t__* rates; int /*<<< orphan*/  rmode; } ;
struct airo_info {TYPE_1__ config; int /*<<< orphan*/  flags; } ;
typedef  int __le16 ;

/* Variables and functions */
 scalar_t__ AUTH_ENCRYPT ; 
 scalar_t__ AUTH_SHAREDKEY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FLAG_RADIO_OFF ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int MODE_AP ; 
 int MODE_AP_RPTR ; 
 int MODE_CFG_MASK ; 
 int MODE_STA_ESS ; 
 int MODE_STA_IBSS ; 
 scalar_t__ MOD_CCK ; 
 scalar_t__ MOD_DEFAULT ; 
 scalar_t__ MOD_MOK ; 
 struct net_device* FUNC0 (struct inode*) ; 
 scalar_t__ POWERSAVE_CAM ; 
 scalar_t__ POWERSAVE_PSP ; 
 scalar_t__ POWERSAVE_PSPCAM ; 
 scalar_t__ PREAMBLE_AUTO ; 
 scalar_t__ PREAMBLE_LONG ; 
 scalar_t__ PREAMBLE_SHORT ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct proc_data*) ; 
 struct proc_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  proc_config_on_close ; 
 int /*<<< orphan*/  FUNC6 (struct airo_info*,int) ; 
 int FUNC7 (struct proc_data*,char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct proc_data*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct inode *inode, struct file *file)
{
	struct proc_data *data;
	struct net_device *dev = FUNC0(inode);
	struct airo_info *ai = dev->ml_priv;
	int i;
	__le16 mode;

	if ((file->private_data = FUNC4(sizeof(struct proc_data ), GFP_KERNEL)) == NULL)
		return -ENOMEM;
	data = file->private_data;
	if ((data->rbuffer = FUNC3( 2048, GFP_KERNEL )) == NULL) {
		FUNC2 (file->private_data);
		return -ENOMEM;
	}
	if ((data->wbuffer = FUNC4( 2048, GFP_KERNEL )) == NULL) {
		FUNC2 (data->rbuffer);
		FUNC2 (file->private_data);
		return -ENOMEM;
	}
	data->maxwritelen = 2048;
	data->on_close = proc_config_on_close;

	FUNC6(ai, 1);

	mode = ai->config.opmode & MODE_CFG_MASK;
	i = FUNC7( data->rbuffer,
		     "Mode: %s\n"
		     "Radio: %s\n"
		     "NodeName: %-16s\n"
		     "PowerMode: %s\n"
		     "DataRates: %d %d %d %d %d %d %d %d\n"
		     "Channel: %d\n"
		     "XmitPower: %d\n",
		     mode == MODE_STA_IBSS ? "adhoc" :
		     mode == MODE_STA_ESS ? FUNC1(ai->config.rmode):
		     mode == MODE_AP ? "AP" :
		     mode == MODE_AP_RPTR ? "AP RPTR" : "Error",
		     FUNC9(FLAG_RADIO_OFF, &ai->flags) ? "off" : "on",
		     ai->config.nodeName,
		     ai->config.powerSaveMode == POWERSAVE_CAM ? "CAM" :
		     ai->config.powerSaveMode == POWERSAVE_PSP ? "PSP" :
		     ai->config.powerSaveMode == POWERSAVE_PSPCAM ? "PSPCAM" :
		     "Error",
		     (int)ai->config.rates[0],
		     (int)ai->config.rates[1],
		     (int)ai->config.rates[2],
		     (int)ai->config.rates[3],
		     (int)ai->config.rates[4],
		     (int)ai->config.rates[5],
		     (int)ai->config.rates[6],
		     (int)ai->config.rates[7],
		     FUNC5(ai->config.channelSet),
		     FUNC5(ai->config.txPower)
		);
	FUNC7( data->rbuffer + i,
		 "LongRetryLimit: %d\n"
		 "ShortRetryLimit: %d\n"
		 "RTSThreshold: %d\n"
		 "TXMSDULifetime: %d\n"
		 "RXMSDULifetime: %d\n"
		 "TXDiversity: %s\n"
		 "RXDiversity: %s\n"
		 "FragThreshold: %d\n"
		 "WEP: %s\n"
		 "Modulation: %s\n"
		 "Preamble: %s\n",
		 FUNC5(ai->config.longRetryLimit),
		 FUNC5(ai->config.shortRetryLimit),
		 FUNC5(ai->config.rtsThres),
		 FUNC5(ai->config.txLifetime),
		 FUNC5(ai->config.rxLifetime),
		 ai->config.txDiversity == 1 ? "left" :
		 ai->config.txDiversity == 2 ? "right" : "both",
		 ai->config.rxDiversity == 1 ? "left" :
		 ai->config.rxDiversity == 2 ? "right" : "both",
		 FUNC5(ai->config.fragThresh),
		 ai->config.authType == AUTH_ENCRYPT ? "encrypt" :
		 ai->config.authType == AUTH_SHAREDKEY ? "shared" : "open",
		 ai->config.modulation == MOD_DEFAULT ? "default" :
		 ai->config.modulation == MOD_CCK ? "cck" :
		 ai->config.modulation == MOD_MOK ? "mok" : "error",
		 ai->config.preamble == PREAMBLE_AUTO ? "auto" :
		 ai->config.preamble == PREAMBLE_LONG ? "long" :
		 ai->config.preamble == PREAMBLE_SHORT ? "short" : "error"
		);
	data->readlen = FUNC8( data->rbuffer );
	return 0;
}