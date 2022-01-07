
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int private_data; } ;
struct cx18_open_id {int dummy; } ;


 struct cx18_open_id* fh2id (int ) ;

__attribute__((used)) static inline struct cx18_open_id *file2id(struct file *file)
{
 return fh2id(file->private_data);
}
