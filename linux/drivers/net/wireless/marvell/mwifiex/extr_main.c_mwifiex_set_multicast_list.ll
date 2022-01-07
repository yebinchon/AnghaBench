; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i32 }
%struct.mwifiex_multicast_list = type { i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@MWIFIEX_PROMISC_MODE = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@MWIFIEX_MAX_MULTICAST_LIST_SIZE = common dso_local global i64 0, align 8
@MWIFIEX_ALL_MULTI_MODE = common dso_local global i32 0, align 4
@MWIFIEX_MULTICAST_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @mwifiex_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_multicast_list, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %5)
  store %struct.mwifiex_private* %6, %struct.mwifiex_private** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @IFF_PROMISC, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @MWIFIEX_PROMISC_MODE, align 4
  %15 = getelementptr inbounds %struct.mwifiex_multicast_list, %struct.mwifiex_multicast_list* %4, i32 0, i32 1
  store i32 %14, i32* %15, align 4
  br label %38

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IFF_ALLMULTI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %16
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i64 @netdev_mc_count(%struct.net_device* %24)
  %26 = load i64, i64* @MWIFIEX_MAX_MULTICAST_LIST_SIZE, align 8
  %27 = icmp sgt i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %16
  %29 = load i32, i32* @MWIFIEX_ALL_MULTI_MODE, align 4
  %30 = getelementptr inbounds %struct.mwifiex_multicast_list, %struct.mwifiex_multicast_list* %4, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  br label %37

31:                                               ; preds = %23
  %32 = load i32, i32* @MWIFIEX_MULTICAST_MODE, align 4
  %33 = getelementptr inbounds %struct.mwifiex_multicast_list, %struct.mwifiex_multicast_list* %4, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @mwifiex_copy_mcast_addr(%struct.mwifiex_multicast_list* %4, %struct.net_device* %34)
  %36 = getelementptr inbounds %struct.mwifiex_multicast_list, %struct.mwifiex_multicast_list* %4, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  br label %37

37:                                               ; preds = %31, %28
  br label %38

38:                                               ; preds = %37, %13
  %39 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %40 = call i32 @mwifiex_request_set_multicast_list(%struct.mwifiex_private* %39, %struct.mwifiex_multicast_list* %4)
  ret void
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @mwifiex_copy_mcast_addr(%struct.mwifiex_multicast_list*, %struct.net_device*) #1

declare dso_local i32 @mwifiex_request_set_multicast_list(%struct.mwifiex_private*, %struct.mwifiex_multicast_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
