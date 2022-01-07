
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtd_partition {unsigned long long size; unsigned long long offset; unsigned int mask_flags; unsigned char* name; } ;


 int EINVAL ;
 int ENOMEM ;
 struct mtd_partition* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct mtd_partition*) ;
 unsigned int MTD_POWERUP_LOCK ;
 unsigned int MTD_WRITEABLE ;
 unsigned long long OFFSET_CONTINUOUS ;
 unsigned long long SIZE_REMAINING ;
 int dbg (char*) ;
 struct mtd_partition* kzalloc (int,int ) ;
 unsigned long long memparse (char*,char**) ;
 int pr_err (char*,...) ;
 int sprintf (unsigned char*,char*,int) ;
 char* strchr (char*,char) ;
 int strlcpy (unsigned char*,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static struct mtd_partition * newpart(char *s,
          char **retptr,
          int *num_parts,
          int this_part,
          unsigned char **extra_mem_ptr,
          int extra_mem_size)
{
 struct mtd_partition *parts;
 unsigned long long size, offset = OFFSET_CONTINUOUS;
 char *name;
 int name_len;
 unsigned char *extra_mem;
 char delim;
 unsigned int mask_flags;


 if (*s == '-') {

  size = SIZE_REMAINING;
  s++;
 } else {
  size = memparse(s, &s);
  if (!size) {
   pr_err("partition has size 0\n");
   return ERR_PTR(-EINVAL);
  }
 }


 mask_flags = 0;
 delim = 0;


 if (*s == '@') {
  s++;
  offset = memparse(s, &s);
 }


 if (*s == '(')
  delim = ')';

 if (delim) {
  char *p;

  name = ++s;
  p = strchr(name, delim);
  if (!p) {
   pr_err("no closing %c found in partition name\n", delim);
   return ERR_PTR(-EINVAL);
  }
  name_len = p - name;
  s = p + 1;
 } else {
  name = ((void*)0);
  name_len = 13;
 }


 extra_mem_size += name_len + 1;


 if (strncmp(s, "ro", 2) == 0) {
  mask_flags |= MTD_WRITEABLE;
  s += 2;
 }


 if (strncmp(s, "lk", 2) == 0) {
  mask_flags |= MTD_POWERUP_LOCK;
  s += 2;
 }


 if (*s == ',') {
  if (size == SIZE_REMAINING) {
   pr_err("no partitions allowed after a fill-up partition\n");
   return ERR_PTR(-EINVAL);
  }

  parts = newpart(s + 1, &s, num_parts, this_part + 1,
    &extra_mem, extra_mem_size);
  if (IS_ERR(parts))
   return parts;
 } else {

  int alloc_size;

  *num_parts = this_part + 1;
  alloc_size = *num_parts * sizeof(struct mtd_partition) +
        extra_mem_size;

  parts = kzalloc(alloc_size, GFP_KERNEL);
  if (!parts)
   return ERR_PTR(-ENOMEM);
  extra_mem = (unsigned char *)(parts + *num_parts);
 }





 parts[this_part].size = size;
 parts[this_part].offset = offset;
 parts[this_part].mask_flags = mask_flags;
 if (name)
  strlcpy(extra_mem, name, name_len + 1);
 else
  sprintf(extra_mem, "Partition_%03d", this_part);
 parts[this_part].name = extra_mem;
 extra_mem += name_len + 1;

 dbg(("partition %d: name <%s>, offset %llx, size %llx, mask flags %x\n",
      this_part, parts[this_part].name, parts[this_part].offset,
      parts[this_part].size, parts[this_part].mask_flags));


 if (extra_mem_ptr)
  *extra_mem_ptr = extra_mem;


 *retptr = s;


 return parts;
}
