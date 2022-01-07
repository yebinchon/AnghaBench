
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int mcs_statistics_show ;
 int single_open (struct file*,int ,int *) ;

__attribute__((used)) static int mcs_statistics_open(struct inode *inode, struct file *file)
{
 return single_open(file, mcs_statistics_show, ((void*)0));
}
