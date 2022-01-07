
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char suffix; unsigned int prefix; } ;
struct TYPE_4__ {unsigned long fcode; TYPE_1__ hs; } ;
struct bsd_dict {int cptr; unsigned int codem1; TYPE_2__ f; } ;
struct bsd_db {unsigned int max_ent; unsigned int n_bits; int seqno; int bytes_out; int in_count; unsigned int maxmaxcode; int hsize; int uncomp_bytes; int unit; scalar_t__ debug; int comp_bytes; int uncomp_count; int comp_count; int hshift; } ;


 unsigned int BADCODEM1 ;
 int BSD_HASH (unsigned int,unsigned int,int ) ;
 unsigned long BSD_KEY (unsigned int,unsigned int) ;
 int BSD_OVHD ;
 unsigned int CLEAR ;
 int DECOMP_ERROR ;
 int DECOMP_FATALERROR ;
 unsigned int LAST ;
 unsigned int MAXCODE (unsigned int) ;
 int PPP_ADDRESS (unsigned char*) ;
 int PPP_CONTROL (unsigned char*) ;
 int PPP_HDRLEN ;
 scalar_t__ bsd_check (struct bsd_db*) ;
 int bsd_clear (struct bsd_db*) ;
 struct bsd_dict* dict_ptr (struct bsd_db*,int) ;
 int* lens_ptr (struct bsd_db*,unsigned int) ;
 int printk (char*,unsigned int,...) ;

__attribute__((used)) static int bsd_decompress (void *state, unsigned char *ibuf, int isize,
      unsigned char *obuf, int osize)
  {
    struct bsd_db *db;
    unsigned int max_ent;
    unsigned long accm;
    unsigned int bitno;
    unsigned int n_bits;
    unsigned int tgtbitno;
    struct bsd_dict *dictp;
    int explen;
    int seq;
    unsigned int incode;
    unsigned int oldcode;
    unsigned int finchar;
    unsigned char *p;
    unsigned char *wptr;
    int adrs;
    int ctrl;
    int ilen;
    int codelen;
    int extra;

    db = (struct bsd_db *) state;
    max_ent = db->max_ent;
    accm = 0;
    bitno = 32;
    n_bits = db->n_bits;
    tgtbitno = 32 - n_bits;






    adrs = PPP_ADDRESS (ibuf);
    ctrl = PPP_CONTROL (ibuf);

    seq = (ibuf[4] << 8) + ibuf[5];

    ibuf += (PPP_HDRLEN + 2);
    ilen = isize - (PPP_HDRLEN + 2);






    if (seq != db->seqno)
      {
 if (db->debug)
   {
     printk("bsd_decomp%d: bad sequence # %d, expected %d\n",
     db->unit, seq, db->seqno - 1);
   }
 return DECOMP_ERROR;
      }

    ++db->seqno;
    db->bytes_out += ilen;






    wptr = obuf;
    *wptr++ = adrs;
    *wptr++ = ctrl;
    *wptr++ = 0;

    oldcode = CLEAR;
    explen = 3;






    for (;;)
      {
 if (ilen-- <= 0)
   {
     db->in_count += (explen - 3);
     break;
   }







 bitno -= 8;
 accm |= *ibuf++ << bitno;
 if (tgtbitno < bitno)
   {
     continue;
   }

 incode = accm >> tgtbitno;
 accm <<= n_bits;
 bitno += n_bits;





 if (incode == CLEAR)
   {
     if (ilen > 0)
       {
  if (db->debug)
    {
      printk("bsd_decomp%d: bad CLEAR\n", db->unit);
    }
  return DECOMP_FATALERROR;
       }

     bsd_clear(db);
     break;
   }

 if ((incode > max_ent + 2) || (incode > db->maxmaxcode)
     || (incode > max_ent && oldcode == CLEAR))
   {
     if (db->debug)
       {
  printk("bsd_decomp%d: bad code 0x%x oldcode=0x%x ",
         db->unit, incode, oldcode);
  printk("max_ent=0x%x explen=%d seqno=%d\n",
         max_ent, explen, db->seqno);
       }
     return DECOMP_FATALERROR;
   }


 if (incode > max_ent)
   {
     finchar = oldcode;
     extra = 1;
   }
 else
   {
     finchar = incode;
     extra = 0;
   }

 codelen = *(lens_ptr (db, finchar));
 explen += codelen + extra;
 if (explen > osize)
   {
     if (db->debug)
       {
  printk("bsd_decomp%d: ran out of mru\n", db->unit);




       }
     return DECOMP_FATALERROR;
   }





 wptr += codelen;
 p = wptr;
 while (finchar > LAST)
   {
     struct bsd_dict *dictp2 = dict_ptr (db, finchar);

     dictp = dict_ptr (db, dictp2->cptr);
     *--p = dictp->f.hs.suffix;
     finchar = dictp->f.hs.prefix;
   }
 *--p = finchar;
 if (extra)
   {
     *wptr++ = finchar;
   }
 if (oldcode != CLEAR && max_ent < db->maxmaxcode)
   {
     struct bsd_dict *dictp2, *dictp3;
     unsigned short *lens1, *lens2;
     unsigned long fcode;
     int hval, disp, indx;

     fcode = BSD_KEY(oldcode,finchar);
     hval = BSD_HASH(oldcode,finchar,db->hshift);
     dictp = dict_ptr (db, hval);


     if (dictp->codem1 < max_ent)
       {
  disp = (hval == 0) ? 1 : hval;
  do
    {
      hval += disp;
      if (hval >= db->hsize)
        {
   hval -= db->hsize;
        }
      dictp = dict_ptr (db, hval);
    }
  while (dictp->codem1 < max_ent);
       }






     dictp2 = dict_ptr (db, max_ent + 1);
     indx = dictp2->cptr;
     dictp3 = dict_ptr (db, indx);

     if (dictp3->codem1 == max_ent)
       {
  dictp3->codem1 = BADCODEM1;
       }

     dictp2->cptr = hval;
     dictp->codem1 = max_ent;
     dictp->f.fcode = fcode;
     db->max_ent = ++max_ent;


     lens1 = lens_ptr (db, max_ent);
     lens2 = lens_ptr (db, oldcode);
     *lens1 = *lens2 + 1;


     if (max_ent >= MAXCODE(n_bits) && max_ent < db->maxmaxcode)
       {
  db->n_bits = ++n_bits;
  tgtbitno = 32-n_bits;
       }
   }
 oldcode = incode;
      }

    ++db->comp_count;
    ++db->uncomp_count;
    db->comp_bytes += isize - BSD_OVHD - PPP_HDRLEN;
    db->uncomp_bytes += explen;

    if (bsd_check(db))
      {
 if (db->debug)
   {
     printk("bsd_decomp%d: peer should have cleared dictionary on %d\n",
     db->unit, db->seqno - 1);
   }
      }
    return explen;
  }
