
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct slcan {unsigned char* xbuff; int xleft; unsigned char* xhead; TYPE_3__* dev; TYPE_4__* tty; } ;
struct can_frame {int can_id; int can_dlc; int * data; } ;
typedef int canid_t ;
struct TYPE_8__ {TYPE_1__* ops; int flags; } ;
struct TYPE_6__ {int tx_bytes; } ;
struct TYPE_7__ {TYPE_2__ stats; } ;
struct TYPE_5__ {int (* write ) (TYPE_4__*,unsigned char*,int) ;} ;


 int CAN_EFF_FLAG ;
 int CAN_EFF_MASK ;
 int CAN_RTR_FLAG ;
 int CAN_SFF_MASK ;
 int SLC_EFF_ID_LEN ;
 int SLC_SFF_ID_LEN ;
 int TTY_DO_WRITE_WAKEUP ;
 int * hex_asc_upper ;
 unsigned char* hex_byte_pack_upper (unsigned char*,int ) ;
 int set_bit (int ,int *) ;
 int stub1 (TYPE_4__*,unsigned char*,int) ;

__attribute__((used)) static void slc_encaps(struct slcan *sl, struct can_frame *cf)
{
 int actual, i;
 unsigned char *pos;
 unsigned char *endpos;
 canid_t id = cf->can_id;

 pos = sl->xbuff;

 if (cf->can_id & CAN_RTR_FLAG)
  *pos = 'R';
 else
  *pos = 'T';


 if (cf->can_id & CAN_EFF_FLAG) {
  id &= CAN_EFF_MASK;
  endpos = pos + SLC_EFF_ID_LEN;
 } else {
  *pos |= 0x20;
  id &= CAN_SFF_MASK;
  endpos = pos + SLC_SFF_ID_LEN;
 }


 pos++;
 while (endpos >= pos) {
  *endpos-- = hex_asc_upper[id & 0xf];
  id >>= 4;
 }

 pos += (cf->can_id & CAN_EFF_FLAG) ? SLC_EFF_ID_LEN : SLC_SFF_ID_LEN;

 *pos++ = cf->can_dlc + '0';


 if (!(cf->can_id & CAN_RTR_FLAG)) {
  for (i = 0; i < cf->can_dlc; i++)
   pos = hex_byte_pack_upper(pos, cf->data[i]);
 }

 *pos++ = '\r';
 set_bit(TTY_DO_WRITE_WAKEUP, &sl->tty->flags);
 actual = sl->tty->ops->write(sl->tty, sl->xbuff, pos - sl->xbuff);
 sl->xleft = (pos - sl->xbuff) - actual;
 sl->xhead = sl->xbuff + actual;
 sl->dev->stats.tx_bytes += cf->can_dlc;
}
