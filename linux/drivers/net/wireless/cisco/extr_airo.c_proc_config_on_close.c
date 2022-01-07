
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct proc_data {char* wbuffer; int writelen; } ;
struct net_device {struct airo_info* ml_priv; } ;
struct inode {int dummy; } ;
struct file {struct proc_data* private_data; } ;
struct TYPE_3__ {int rmode; char* nodeName; int txDiversity; int rxDiversity; int preamble; int modulation; void* fragThresh; void* rxLifetime; void* txLifetime; void* rtsThres; void* shortRetryLimit; void* longRetryLimit; void* txPower; void* channelSet; scalar_t__* rates; int powerSaveMode; void* scanMode; int opmode; } ;
struct airo_info {TYPE_2__* dev; int flags; TYPE_1__ config; } ;
struct TYPE_4__ {int name; } ;


 int AIRO_DEF_MTU ;
 int AUTH_ENCRYPT ;
 int AUTH_OPEN ;
 int AUTH_SHAREDKEY ;
 int FLAG_802_11 ;
 int FLAG_COMMIT ;
 int FLAG_RADIO_OFF ;
 int FLAG_RESET ;
 int MODE_CFG_MASK ;
 int MODE_STA_ESS ;
 int MODE_STA_IBSS ;
 int MOD_CCK ;
 int MOD_DEFAULT ;
 int MOD_MOK ;
 struct net_device* PDE_DATA (struct inode*) ;
 int POWERSAVE_CAM ;
 int POWERSAVE_PSP ;
 int POWERSAVE_PSPCAM ;
 int PREAMBLE_AUTO ;
 int PREAMBLE_LONG ;
 int PREAMBLE_SHORT ;
 int RXMODE_DISABLE_802_3_HEADER ;
 int RXMODE_FULL_MASK ;
 int RXMODE_LANMON ;
 int RXMODE_RFMON ;
 int RXMODE_RFMON_ANYBSS ;
 void* SCANMODE_ACTIVE ;
 void* SCANMODE_PASSIVE ;
 int airo_config_commit (struct net_device*,int *,int *,int *) ;
 int airo_print_warn (int ,char*,...) ;
 int clear_bit (int ,int *) ;
 void* cpu_to_le16 (int) ;
 int get_dec_u16 (char*,int*,int) ;
 int memset (char*,int ,int) ;
 int readConfigRid (struct airo_info*,int) ;
 int set_auth_type (struct airo_info*,int ) ;
 int set_bit (int ,int *) ;
 scalar_t__ sniffing_mode (struct airo_info*) ;
 int strncmp (char*,char*,int) ;

__attribute__((used)) static void proc_config_on_close(struct inode *inode, struct file *file)
{
 struct proc_data *data = file->private_data;
 struct net_device *dev = PDE_DATA(inode);
 struct airo_info *ai = dev->ml_priv;
 char *line;

 if ( !data->writelen ) return;

 readConfigRid(ai, 1);
 set_bit (FLAG_COMMIT, &ai->flags);

 line = data->wbuffer;
 while( line[0] ) {

  if ( !strncmp( line, "Mode: ", 6 ) ) {
   line += 6;
   if (sniffing_mode(ai))
    set_bit (FLAG_RESET, &ai->flags);
   ai->config.rmode &= ~RXMODE_FULL_MASK;
   clear_bit (FLAG_802_11, &ai->flags);
   ai->config.opmode &= ~MODE_CFG_MASK;
   ai->config.scanMode = SCANMODE_ACTIVE;
   if ( line[0] == 'a' ) {
    ai->config.opmode |= MODE_STA_IBSS;
   } else {
    ai->config.opmode |= MODE_STA_ESS;
    if ( line[0] == 'r' ) {
     ai->config.rmode |= RXMODE_RFMON | RXMODE_DISABLE_802_3_HEADER;
     ai->config.scanMode = SCANMODE_PASSIVE;
     set_bit (FLAG_802_11, &ai->flags);
    } else if ( line[0] == 'y' ) {
     ai->config.rmode |= RXMODE_RFMON_ANYBSS | RXMODE_DISABLE_802_3_HEADER;
     ai->config.scanMode = SCANMODE_PASSIVE;
     set_bit (FLAG_802_11, &ai->flags);
    } else if ( line[0] == 'l' )
     ai->config.rmode |= RXMODE_LANMON;
   }
   set_bit (FLAG_COMMIT, &ai->flags);
  }


  else if (!strncmp(line,"Radio: ", 7)) {
   line += 7;
   if (!strncmp(line,"off",3)) {
    set_bit (FLAG_RADIO_OFF, &ai->flags);
   } else {
    clear_bit (FLAG_RADIO_OFF, &ai->flags);
   }
  }

  else if ( !strncmp( line, "NodeName: ", 10 ) ) {
   int j;

   line += 10;
   memset( ai->config.nodeName, 0, 16 );

   for( j = 0; j < 16 && line[j] != '\n'; j++ ) {
    ai->config.nodeName[j] = line[j];
   }
   set_bit (FLAG_COMMIT, &ai->flags);
  }


  else if ( !strncmp( line, "PowerMode: ", 11 ) ) {
   line += 11;
   if ( !strncmp( line, "PSPCAM", 6 ) ) {
    ai->config.powerSaveMode = POWERSAVE_PSPCAM;
    set_bit (FLAG_COMMIT, &ai->flags);
   } else if ( !strncmp( line, "PSP", 3 ) ) {
    ai->config.powerSaveMode = POWERSAVE_PSP;
    set_bit (FLAG_COMMIT, &ai->flags);
   } else {
    ai->config.powerSaveMode = POWERSAVE_CAM;
    set_bit (FLAG_COMMIT, &ai->flags);
   }
  } else if ( !strncmp( line, "DataRates: ", 11 ) ) {
   int v, i = 0, k = 0;


   line += 11;
   while((v = get_dec_u16(line, &i, 3))!=-1) {
    ai->config.rates[k++] = (u8)v;
    line += i + 1;
    i = 0;
   }
   set_bit (FLAG_COMMIT, &ai->flags);
  } else if ( !strncmp( line, "Channel: ", 9 ) ) {
   int v, i = 0;
   line += 9;
   v = get_dec_u16(line, &i, i+3);
   if ( v != -1 ) {
    ai->config.channelSet = cpu_to_le16(v);
    set_bit (FLAG_COMMIT, &ai->flags);
   }
  } else if ( !strncmp( line, "XmitPower: ", 11 ) ) {
   int v, i = 0;
   line += 11;
   v = get_dec_u16(line, &i, i+3);
   if ( v != -1 ) {
    ai->config.txPower = cpu_to_le16(v);
    set_bit (FLAG_COMMIT, &ai->flags);
   }
  } else if ( !strncmp( line, "WEP: ", 5 ) ) {
   line += 5;
   switch( line[0] ) {
   case 's':
    set_auth_type(ai, AUTH_SHAREDKEY);
    break;
   case 'e':
    set_auth_type(ai, AUTH_ENCRYPT);
    break;
   default:
    set_auth_type(ai, AUTH_OPEN);
    break;
   }
   set_bit (FLAG_COMMIT, &ai->flags);
  } else if ( !strncmp( line, "LongRetryLimit: ", 16 ) ) {
   int v, i = 0;

   line += 16;
   v = get_dec_u16(line, &i, 3);
   v = (v<0) ? 0 : ((v>255) ? 255 : v);
   ai->config.longRetryLimit = cpu_to_le16(v);
   set_bit (FLAG_COMMIT, &ai->flags);
  } else if ( !strncmp( line, "ShortRetryLimit: ", 17 ) ) {
   int v, i = 0;

   line += 17;
   v = get_dec_u16(line, &i, 3);
   v = (v<0) ? 0 : ((v>255) ? 255 : v);
   ai->config.shortRetryLimit = cpu_to_le16(v);
   set_bit (FLAG_COMMIT, &ai->flags);
  } else if ( !strncmp( line, "RTSThreshold: ", 14 ) ) {
   int v, i = 0;

   line += 14;
   v = get_dec_u16(line, &i, 4);
   v = (v<0) ? 0 : ((v>AIRO_DEF_MTU) ? AIRO_DEF_MTU : v);
   ai->config.rtsThres = cpu_to_le16(v);
   set_bit (FLAG_COMMIT, &ai->flags);
  } else if ( !strncmp( line, "TXMSDULifetime: ", 16 ) ) {
   int v, i = 0;

   line += 16;
   v = get_dec_u16(line, &i, 5);
   v = (v<0) ? 0 : v;
   ai->config.txLifetime = cpu_to_le16(v);
   set_bit (FLAG_COMMIT, &ai->flags);
  } else if ( !strncmp( line, "RXMSDULifetime: ", 16 ) ) {
   int v, i = 0;

   line += 16;
   v = get_dec_u16(line, &i, 5);
   v = (v<0) ? 0 : v;
   ai->config.rxLifetime = cpu_to_le16(v);
   set_bit (FLAG_COMMIT, &ai->flags);
  } else if ( !strncmp( line, "TXDiversity: ", 13 ) ) {
   ai->config.txDiversity =
    (line[13]=='l') ? 1 :
    ((line[13]=='r')? 2: 3);
   set_bit (FLAG_COMMIT, &ai->flags);
  } else if ( !strncmp( line, "RXDiversity: ", 13 ) ) {
   ai->config.rxDiversity =
    (line[13]=='l') ? 1 :
    ((line[13]=='r')? 2: 3);
   set_bit (FLAG_COMMIT, &ai->flags);
  } else if ( !strncmp( line, "FragThreshold: ", 15 ) ) {
   int v, i = 0;

   line += 15;
   v = get_dec_u16(line, &i, 4);
   v = (v<256) ? 256 : ((v>AIRO_DEF_MTU) ? AIRO_DEF_MTU : v);
   v = v & 0xfffe;
   ai->config.fragThresh = cpu_to_le16(v);
   set_bit (FLAG_COMMIT, &ai->flags);
  } else if (!strncmp(line, "Modulation: ", 12)) {
   line += 12;
   switch(*line) {
   case 'd': ai->config.modulation=MOD_DEFAULT; set_bit(FLAG_COMMIT, &ai->flags); break;
   case 'c': ai->config.modulation=MOD_CCK; set_bit(FLAG_COMMIT, &ai->flags); break;
   case 'm': ai->config.modulation=MOD_MOK; set_bit(FLAG_COMMIT, &ai->flags); break;
   default: airo_print_warn(ai->dev->name, "Unknown modulation");
   }
  } else if (!strncmp(line, "Preamble: ", 10)) {
   line += 10;
   switch(*line) {
   case 'a': ai->config.preamble=PREAMBLE_AUTO; set_bit(FLAG_COMMIT, &ai->flags); break;
   case 'l': ai->config.preamble=PREAMBLE_LONG; set_bit(FLAG_COMMIT, &ai->flags); break;
   case 's': ai->config.preamble=PREAMBLE_SHORT; set_bit(FLAG_COMMIT, &ai->flags); break;
   default: airo_print_warn(ai->dev->name, "Unknown preamble");
   }
  } else {
   airo_print_warn(ai->dev->name, "Couldn't figure out %s", line);
  }
  while( line[0] && line[0] != '\n' ) line++;
  if ( line[0] ) line++;
 }
 airo_config_commit(dev, ((void*)0), ((void*)0), ((void*)0));
}
