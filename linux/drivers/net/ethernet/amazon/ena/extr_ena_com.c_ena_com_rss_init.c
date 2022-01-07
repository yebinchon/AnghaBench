
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ena_com_dev {int rss; } ;


 int ena_com_hash_ctrl_init (struct ena_com_dev*) ;
 int ena_com_hash_key_allocate (struct ena_com_dev*) ;
 int ena_com_hash_key_destroy (struct ena_com_dev*) ;
 int ena_com_indirect_table_allocate (struct ena_com_dev*,int ) ;
 int ena_com_indirect_table_destroy (struct ena_com_dev*) ;
 int memset (int *,int,int) ;
 scalar_t__ unlikely (int) ;

int ena_com_rss_init(struct ena_com_dev *ena_dev, u16 indr_tbl_log_size)
{
 int rc;

 memset(&ena_dev->rss, 0x0, sizeof(ena_dev->rss));

 rc = ena_com_indirect_table_allocate(ena_dev, indr_tbl_log_size);
 if (unlikely(rc))
  goto err_indr_tbl;

 rc = ena_com_hash_key_allocate(ena_dev);
 if (unlikely(rc))
  goto err_hash_key;

 rc = ena_com_hash_ctrl_init(ena_dev);
 if (unlikely(rc))
  goto err_hash_ctrl;

 return 0;

err_hash_ctrl:
 ena_com_hash_key_destroy(ena_dev);
err_hash_key:
 ena_com_indirect_table_destroy(ena_dev);
err_indr_tbl:

 return rc;
}
