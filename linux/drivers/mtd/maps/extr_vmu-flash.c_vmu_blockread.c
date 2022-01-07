
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct memcard {int blocklen; int readcnt; int blockread; } ;
struct mapleq {TYPE_1__* recvbuf; struct maple_device* dev; } ;
struct maple_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ buf; } ;


 struct memcard* maple_get_drvdata (struct maple_device*) ;
 int memcpy (int ,scalar_t__,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static void vmu_blockread(struct mapleq *mq)
{
 struct maple_device *mdev;
 struct memcard *card;

 mdev = mq->dev;
 card = maple_get_drvdata(mdev);


 if (unlikely(!card->blockread))
  return;

 memcpy(card->blockread, mq->recvbuf->buf + 12,
  card->blocklen/card->readcnt);

}
