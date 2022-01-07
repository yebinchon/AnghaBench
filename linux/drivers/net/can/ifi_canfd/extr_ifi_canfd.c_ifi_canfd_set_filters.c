
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;


 int IFI_CANFD_FILTER_IDENT_CANFD ;
 int IFI_CANFD_FILTER_IDENT_IDE ;
 int IFI_CANFD_FILTER_IDENT_VALID ;
 int IFI_CANFD_FILTER_MASK_EDL ;
 int IFI_CANFD_FILTER_MASK_EXT ;
 int IFI_CANFD_FILTER_MASK_VALID ;
 int ifi_canfd_set_filter (struct net_device*,int,int,int) ;

__attribute__((used)) static void ifi_canfd_set_filters(struct net_device *ndev)
{

 ifi_canfd_set_filter(ndev, 0,
        IFI_CANFD_FILTER_MASK_VALID |
        IFI_CANFD_FILTER_MASK_EXT,
        IFI_CANFD_FILTER_IDENT_VALID);


 ifi_canfd_set_filter(ndev, 1,
        IFI_CANFD_FILTER_MASK_VALID |
        IFI_CANFD_FILTER_MASK_EXT,
        IFI_CANFD_FILTER_IDENT_VALID |
        IFI_CANFD_FILTER_IDENT_IDE);


 ifi_canfd_set_filter(ndev, 2,
        IFI_CANFD_FILTER_MASK_VALID |
        IFI_CANFD_FILTER_MASK_EDL |
        IFI_CANFD_FILTER_MASK_EXT,
        IFI_CANFD_FILTER_IDENT_VALID |
        IFI_CANFD_FILTER_IDENT_CANFD |
        IFI_CANFD_FILTER_IDENT_IDE);
}
