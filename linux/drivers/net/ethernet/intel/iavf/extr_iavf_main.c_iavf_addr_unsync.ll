; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_addr_unsync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/iavf/extr_iavf_main.c_iavf_addr_unsync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iavf_adapter = type { i32 }
%struct.iavf_mac_filter = type { i32 }

@IAVF_FLAG_AQ_DEL_MAC_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @iavf_addr_unsync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iavf_addr_unsync(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.iavf_adapter*, align 8
  %7 = alloca %struct.iavf_mac_filter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.iavf_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.iavf_adapter* %9, %struct.iavf_adapter** %6, align 8
  %10 = load i32*, i32** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @ether_addr_equal(i32* %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %32

17:                                               ; preds = %2
  %18 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %19 = load i32*, i32** %5, align 8
  %20 = call %struct.iavf_mac_filter* @iavf_find_filter(%struct.iavf_adapter* %18, i32* %19)
  store %struct.iavf_mac_filter* %20, %struct.iavf_mac_filter** %7, align 8
  %21 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %7, align 8
  %22 = icmp ne %struct.iavf_mac_filter* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.iavf_mac_filter*, %struct.iavf_mac_filter** %7, align 8
  %25 = getelementptr inbounds %struct.iavf_mac_filter, %struct.iavf_mac_filter* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load i32, i32* @IAVF_FLAG_AQ_DEL_MAC_FILTER, align 4
  %27 = load %struct.iavf_adapter*, %struct.iavf_adapter** %6, align 8
  %28 = getelementptr inbounds %struct.iavf_adapter, %struct.iavf_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %23, %17
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %16
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.iavf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32) #1

declare dso_local %struct.iavf_mac_filter* @iavf_find_filter(%struct.iavf_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
