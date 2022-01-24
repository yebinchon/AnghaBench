#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
struct proc_data {char* wbuffer; int /*<<< orphan*/  writelen; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {struct proc_data* private_data; } ;
struct TYPE_3__ {int rmode; char* nodeName; int txDiversity; int rxDiversity; int /*<<< orphan*/  preamble; int /*<<< orphan*/  modulation; void* fragThresh; void* rxLifetime; void* txLifetime; void* rtsThres; void* shortRetryLimit; void* longRetryLimit; void* txPower; void* channelSet; scalar_t__* rates; int /*<<< orphan*/  powerSaveMode; void* scanMode; int /*<<< orphan*/  opmode; } ;
struct airo_info {TYPE_2__* dev; int /*<<< orphan*/  flags; TYPE_1__ config; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int AIRO_DEF_MTU ; 
 int /*<<< orphan*/  AUTH_ENCRYPT ; 
 int /*<<< orphan*/  AUTH_OPEN ; 
 int /*<<< orphan*/  AUTH_SHAREDKEY ; 
 int /*<<< orphan*/  FLAG_802_11 ; 
 int /*<<< orphan*/  FLAG_COMMIT ; 
 int /*<<< orphan*/  FLAG_RADIO_OFF ; 
 int /*<<< orphan*/  FLAG_RESET ; 
 int /*<<< orphan*/  MODE_CFG_MASK ; 
 int /*<<< orphan*/  MODE_STA_ESS ; 
 int /*<<< orphan*/  MODE_STA_IBSS ; 
 int /*<<< orphan*/  MOD_CCK ; 
 int /*<<< orphan*/  MOD_DEFAULT ; 
 int /*<<< orphan*/  MOD_MOK ; 
 struct net_device* FUNC0 (struct inode*) ; 
 int /*<<< orphan*/  POWERSAVE_CAM ; 
 int /*<<< orphan*/  POWERSAVE_PSP ; 
 int /*<<< orphan*/  POWERSAVE_PSPCAM ; 
 int /*<<< orphan*/  PREAMBLE_AUTO ; 
 int /*<<< orphan*/  PREAMBLE_LONG ; 
 int /*<<< orphan*/  PREAMBLE_SHORT ; 
 int RXMODE_DISABLE_802_3_HEADER ; 
 int RXMODE_FULL_MASK ; 
 int RXMODE_LANMON ; 
 int RXMODE_RFMON ; 
 int RXMODE_RFMON_ANYBSS ; 
 void* SCANMODE_ACTIVE ; 
 void* SCANMODE_PASSIVE ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int) ; 
 int FUNC5 (char*,int*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct airo_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

__attribute__((used)) static void FUNC12(struct inode *inode, struct file *file)
{
	struct proc_data *data = file->private_data;
	struct net_device *dev = FUNC0(inode);
	struct airo_info *ai = dev->ml_priv;
	char *line;

	if ( !data->writelen ) return;

	FUNC7(ai, 1);
	FUNC9 (FLAG_COMMIT, &ai->flags);

	line = data->wbuffer;
	while( line[0] ) {
/*** Mode processing */
		if ( !FUNC11( line, "Mode: ", 6 ) ) {
			line += 6;
			if (FUNC10(ai))
				FUNC9 (FLAG_RESET, &ai->flags);
			ai->config.rmode &= ~RXMODE_FULL_MASK;
			FUNC3 (FLAG_802_11, &ai->flags);
			ai->config.opmode &= ~MODE_CFG_MASK;
			ai->config.scanMode = SCANMODE_ACTIVE;
			if ( line[0] == 'a' ) {
				ai->config.opmode |= MODE_STA_IBSS;
			} else {
				ai->config.opmode |= MODE_STA_ESS;
				if ( line[0] == 'r' ) {
					ai->config.rmode |= RXMODE_RFMON | RXMODE_DISABLE_802_3_HEADER;
					ai->config.scanMode = SCANMODE_PASSIVE;
					FUNC9 (FLAG_802_11, &ai->flags);
				} else if ( line[0] == 'y' ) {
					ai->config.rmode |= RXMODE_RFMON_ANYBSS | RXMODE_DISABLE_802_3_HEADER;
					ai->config.scanMode = SCANMODE_PASSIVE;
					FUNC9 (FLAG_802_11, &ai->flags);
				} else if ( line[0] == 'l' )
					ai->config.rmode |= RXMODE_LANMON;
			}
			FUNC9 (FLAG_COMMIT, &ai->flags);
		}

/*** Radio status */
		else if (!FUNC11(line,"Radio: ", 7)) {
			line += 7;
			if (!FUNC11(line,"off",3)) {
				FUNC9 (FLAG_RADIO_OFF, &ai->flags);
			} else {
				FUNC3 (FLAG_RADIO_OFF, &ai->flags);
			}
		}
/*** NodeName processing */
		else if ( !FUNC11( line, "NodeName: ", 10 ) ) {
			int j;

			line += 10;
			FUNC6( ai->config.nodeName, 0, 16 );
/* Do the name, assume a space between the mode and node name */
			for( j = 0; j < 16 && line[j] != '\n'; j++ ) {
				ai->config.nodeName[j] = line[j];
			}
			FUNC9 (FLAG_COMMIT, &ai->flags);
		}

/*** PowerMode processing */
		else if ( !FUNC11( line, "PowerMode: ", 11 ) ) {
			line += 11;
			if ( !FUNC11( line, "PSPCAM", 6 ) ) {
				ai->config.powerSaveMode = POWERSAVE_PSPCAM;
				FUNC9 (FLAG_COMMIT, &ai->flags);
			} else if ( !FUNC11( line, "PSP", 3 ) ) {
				ai->config.powerSaveMode = POWERSAVE_PSP;
				FUNC9 (FLAG_COMMIT, &ai->flags);
			} else {
				ai->config.powerSaveMode = POWERSAVE_CAM;
				FUNC9 (FLAG_COMMIT, &ai->flags);
			}
		} else if ( !FUNC11( line, "DataRates: ", 11 ) ) {
			int v, i = 0, k = 0; /* i is index into line,
						k is index to rates */

			line += 11;
			while((v = FUNC5(line, &i, 3))!=-1) {
				ai->config.rates[k++] = (u8)v;
				line += i + 1;
				i = 0;
			}
			FUNC9 (FLAG_COMMIT, &ai->flags);
		} else if ( !FUNC11( line, "Channel: ", 9 ) ) {
			int v, i = 0;
			line += 9;
			v = FUNC5(line, &i, i+3);
			if ( v != -1 ) {
				ai->config.channelSet = FUNC4(v);
				FUNC9 (FLAG_COMMIT, &ai->flags);
			}
		} else if ( !FUNC11( line, "XmitPower: ", 11 ) ) {
			int v, i = 0;
			line += 11;
			v = FUNC5(line, &i, i+3);
			if ( v != -1 ) {
				ai->config.txPower = FUNC4(v);
				FUNC9 (FLAG_COMMIT, &ai->flags);
			}
		} else if ( !FUNC11( line, "WEP: ", 5 ) ) {
			line += 5;
			switch( line[0] ) {
			case 's':
				FUNC8(ai, AUTH_SHAREDKEY);
				break;
			case 'e':
				FUNC8(ai, AUTH_ENCRYPT);
				break;
			default:
				FUNC8(ai, AUTH_OPEN);
				break;
			}
			FUNC9 (FLAG_COMMIT, &ai->flags);
		} else if ( !FUNC11( line, "LongRetryLimit: ", 16 ) ) {
			int v, i = 0;

			line += 16;
			v = FUNC5(line, &i, 3);
			v = (v<0) ? 0 : ((v>255) ? 255 : v);
			ai->config.longRetryLimit = FUNC4(v);
			FUNC9 (FLAG_COMMIT, &ai->flags);
		} else if ( !FUNC11( line, "ShortRetryLimit: ", 17 ) ) {
			int v, i = 0;

			line += 17;
			v = FUNC5(line, &i, 3);
			v = (v<0) ? 0 : ((v>255) ? 255 : v);
			ai->config.shortRetryLimit = FUNC4(v);
			FUNC9 (FLAG_COMMIT, &ai->flags);
		} else if ( !FUNC11( line, "RTSThreshold: ", 14 ) ) {
			int v, i = 0;

			line += 14;
			v = FUNC5(line, &i, 4);
			v = (v<0) ? 0 : ((v>AIRO_DEF_MTU) ? AIRO_DEF_MTU : v);
			ai->config.rtsThres = FUNC4(v);
			FUNC9 (FLAG_COMMIT, &ai->flags);
		} else if ( !FUNC11( line, "TXMSDULifetime: ", 16 ) ) {
			int v, i = 0;

			line += 16;
			v = FUNC5(line, &i, 5);
			v = (v<0) ? 0 : v;
			ai->config.txLifetime = FUNC4(v);
			FUNC9 (FLAG_COMMIT, &ai->flags);
		} else if ( !FUNC11( line, "RXMSDULifetime: ", 16 ) ) {
			int v, i = 0;

			line += 16;
			v = FUNC5(line, &i, 5);
			v = (v<0) ? 0 : v;
			ai->config.rxLifetime = FUNC4(v);
			FUNC9 (FLAG_COMMIT, &ai->flags);
		} else if ( !FUNC11( line, "TXDiversity: ", 13 ) ) {
			ai->config.txDiversity =
				(line[13]=='l') ? 1 :
				((line[13]=='r')? 2: 3);
			FUNC9 (FLAG_COMMIT, &ai->flags);
		} else if ( !FUNC11( line, "RXDiversity: ", 13 ) ) {
			ai->config.rxDiversity =
				(line[13]=='l') ? 1 :
				((line[13]=='r')? 2: 3);
			FUNC9 (FLAG_COMMIT, &ai->flags);
		} else if ( !FUNC11( line, "FragThreshold: ", 15 ) ) {
			int v, i = 0;

			line += 15;
			v = FUNC5(line, &i, 4);
			v = (v<256) ? 256 : ((v>AIRO_DEF_MTU) ? AIRO_DEF_MTU : v);
			v = v & 0xfffe; /* Make sure its even */
			ai->config.fragThresh = FUNC4(v);
			FUNC9 (FLAG_COMMIT, &ai->flags);
		} else if (!FUNC11(line, "Modulation: ", 12)) {
			line += 12;
			switch(*line) {
			case 'd':  ai->config.modulation=MOD_DEFAULT; FUNC9(FLAG_COMMIT, &ai->flags); break;
			case 'c':  ai->config.modulation=MOD_CCK; FUNC9(FLAG_COMMIT, &ai->flags); break;
			case 'm':  ai->config.modulation=MOD_MOK; FUNC9(FLAG_COMMIT, &ai->flags); break;
			default: FUNC2(ai->dev->name, "Unknown modulation");
			}
		} else if (!FUNC11(line, "Preamble: ", 10)) {
			line += 10;
			switch(*line) {
			case 'a': ai->config.preamble=PREAMBLE_AUTO; FUNC9(FLAG_COMMIT, &ai->flags); break;
			case 'l': ai->config.preamble=PREAMBLE_LONG; FUNC9(FLAG_COMMIT, &ai->flags); break;
			case 's': ai->config.preamble=PREAMBLE_SHORT; FUNC9(FLAG_COMMIT, &ai->flags); break;
			default: FUNC2(ai->dev->name, "Unknown preamble");
			}
		} else {
			FUNC2(ai->dev->name, "Couldn't figure out %s", line);
		}
		while( line[0] && line[0] != '\n' ) line++;
		if ( line[0] ) line++;
	}
	FUNC1(dev, NULL, NULL, NULL);
}