; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_rxfh.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_get_rxfh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32 }

@ETH_RSS_HASH_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*, i32*, i32*)* @ixgbe_get_rxfh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_rxfh(%struct.net_device* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %10)
  store %struct.ixgbe_adapter* %11, %struct.ixgbe_adapter** %9, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @ETH_RSS_HASH_TOP, align 4
  %16 = load i32*, i32** %8, align 8
  store i32 %15, i32* %16, align 4
  br label %17

17:                                               ; preds = %14, %4
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = call i32 @ixgbe_get_reta(%struct.ixgbe_adapter* %21, i32* %22)
  br label %24

24:                                               ; preds = %20, %17
  %25 = load i32*, i32** %7, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %24
  %28 = load i32*, i32** %7, align 8
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %9, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = call i32 @ixgbe_get_rxfh_key_size(%struct.net_device* %32)
  %34 = call i32 @memcpy(i32* %28, i32 %31, i32 %33)
  br label %35

35:                                               ; preds = %27, %24
  ret i32 0
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ixgbe_get_reta(%struct.ixgbe_adapter*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ixgbe_get_rxfh_key_size(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
