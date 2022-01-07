
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbox_cmd_log {int dummy; } ;
struct mbox_cmd {int dummy; } ;



__attribute__((used)) static inline struct mbox_cmd *mbox_cmd_log_entry(struct mbox_cmd_log *log,
        unsigned int entry_idx)
{
 return &((struct mbox_cmd *)&(log)[1])[entry_idx];
}
