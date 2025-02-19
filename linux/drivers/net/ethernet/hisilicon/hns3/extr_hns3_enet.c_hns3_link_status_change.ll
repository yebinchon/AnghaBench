; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_link_status_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_link_status_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.net_device* }
%struct.net_device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"link up\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hnae3_handle*, i32)* @hns3_link_status_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_link_status_change(%struct.hnae3_handle* %0, i32 %1) #0 {
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %7 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %40

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %13
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call i32 @netif_carrier_on(%struct.net_device* %17)
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @netif_tx_wake_all_queues(%struct.net_device* %19)
  %21 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %22 = call i64 @netif_msg_link(%struct.hnae3_handle* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %16
  %25 = load %struct.net_device*, %struct.net_device** %5, align 8
  %26 = call i32 @netdev_info(%struct.net_device* %25, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %16
  br label %40

28:                                               ; preds = %13
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = call i32 @netif_carrier_off(%struct.net_device* %29)
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %31)
  %33 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %34 = call i64 @netif_msg_link(%struct.hnae3_handle* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = call i32 @netdev_info(%struct.net_device* %37, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %39

39:                                               ; preds = %36, %28
  br label %40

40:                                               ; preds = %12, %39, %27
  ret void
}

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_tx_wake_all_queues(%struct.net_device*) #1

declare dso_local i64 @netif_msg_link(%struct.hnae3_handle*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
