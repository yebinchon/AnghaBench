
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct brcmf_pub {int dummy; } ;



__attribute__((used)) static inline
int brcmf_debugfs_add_entry(struct brcmf_pub *drvr, const char *fn,
       int (*read_fn)(struct seq_file *seq, void *data))
{
 return 0;
}
