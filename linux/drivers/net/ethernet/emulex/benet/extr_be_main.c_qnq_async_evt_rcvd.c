
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct be_adapter {int flags; } ;


 int BE_FLAGS_QNQ_ASYNC_EVT_RCVD ;

__attribute__((used)) static inline int qnq_async_evt_rcvd(struct be_adapter *adapter)
{
 return adapter->flags & BE_FLAGS_QNQ_ASYNC_EVT_RCVD;
}
