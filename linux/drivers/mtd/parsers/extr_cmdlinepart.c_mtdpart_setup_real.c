
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partition {int dummy; } ;
struct cmdline_mtd_partition {int num_parts; char* mtd_id; struct cmdline_mtd_partition* next; struct mtd_partition* parts; } ;


 scalar_t__ ALIGN (unsigned long,int) ;
 int EINVAL ;
 scalar_t__ IS_ERR (struct mtd_partition*) ;
 int PTR_ERR (struct mtd_partition*) ;
 int cmdline_parsed ;
 int dbg (char*) ;
 struct mtd_partition* newpart (char*,char**,int*,int ,unsigned char**,int) ;
 struct cmdline_mtd_partition* partitions ;
 int pr_err (char*,...) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char*,int) ;

__attribute__((used)) static int mtdpart_setup_real(char *s)
{
 cmdline_parsed = 1;

 for( ; s != ((void*)0); )
 {
  struct cmdline_mtd_partition *this_mtd;
  struct mtd_partition *parts;
  int mtd_id_len, num_parts;
  char *p, *mtd_id;

  mtd_id = s;


  p = strchr(s, ':');
  if (!p) {
   pr_err("no mtd-id\n");
   return -EINVAL;
  }
  mtd_id_len = p - mtd_id;

  dbg(("parsing <%s>\n", p+1));





  parts = newpart(p + 1,
    &s,
    &num_parts,
    0,
    (unsigned char**)&this_mtd,
    mtd_id_len + 1 + sizeof(*this_mtd) +
    sizeof(void*)-1 );
  if (IS_ERR(parts)) {







    return PTR_ERR(parts);
   }


  this_mtd = (struct cmdline_mtd_partition *)
    ALIGN((unsigned long)this_mtd, sizeof(void *));

  this_mtd->parts = parts;
  this_mtd->num_parts = num_parts;
  this_mtd->mtd_id = (char*)(this_mtd + 1);
  strlcpy(this_mtd->mtd_id, mtd_id, mtd_id_len + 1);


  this_mtd->next = partitions;
  partitions = this_mtd;

  dbg(("mtdid=<%s> num_parts=<%d>\n",
       this_mtd->mtd_id, this_mtd->num_parts));



  if (*s == 0)
   break;


  if (*s != ';') {
   pr_err("bad character after partition (%c)\n", *s);
   return -EINVAL;
  }
  s++;
 }

 return 0;
}
