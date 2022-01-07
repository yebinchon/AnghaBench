
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pci_dev {int dummy; } ;
struct ocxl_link {int ref; } ;


 int kref_put (int *,int ) ;
 int links_list_lock ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int release_xsl ;

void ocxl_link_release(struct pci_dev *dev, void *link_handle)
{
 struct ocxl_link *link = (struct ocxl_link *) link_handle;

 mutex_lock(&links_list_lock);
 kref_put(&link->ref, release_xsl);
 mutex_unlock(&links_list_lock);
}
