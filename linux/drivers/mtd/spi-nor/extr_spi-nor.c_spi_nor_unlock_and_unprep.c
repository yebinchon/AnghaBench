
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct spi_nor {int lock; int (* unprepare ) (struct spi_nor*,int) ;} ;
typedef enum spi_nor_ops { ____Placeholder_spi_nor_ops } spi_nor_ops ;


 int mutex_unlock (int *) ;
 int stub1 (struct spi_nor*,int) ;

__attribute__((used)) static void spi_nor_unlock_and_unprep(struct spi_nor *nor, enum spi_nor_ops ops)
{
 if (nor->unprepare)
  nor->unprepare(nor, ops);
 mutex_unlock(&nor->lock);
}
