; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_ndo_bridge_getlink.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_main.c_ixgbe_ndo_bridge_getlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.ixgbe_adapter = type { i32, i32 }

@IXGBE_FLAG_SRIOV_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32)* @ixgbe_ndo_bridge_getlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_ndo_bridge_getlink(%struct.sk_buff* %0, i32 %1, i32 %2, %struct.net_device* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.net_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.net_device* %3, %struct.net_device** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %15 = load %struct.net_device*, %struct.net_device** %11, align 8
  %16 = call %struct.ixgbe_adapter* @netdev_priv(%struct.net_device* %15)
  store %struct.ixgbe_adapter* %16, %struct.ixgbe_adapter** %14, align 8
  %17 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %14, align 8
  %18 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IXGBE_FLAG_SRIOV_ENABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %35

24:                                               ; preds = %6
  %25 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.net_device*, %struct.net_device** %11, align 8
  %29 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %14, align 8
  %30 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %12, align 4
  %34 = call i32 @ndo_dflt_bridge_getlink(%struct.sk_buff* %25, i32 %26, i32 %27, %struct.net_device* %28, i32 %31, i32 0, i32 0, i32 %32, i32 %33, i32* null)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %24, %23
  %36 = load i32, i32* %7, align 4
  ret i32 %36
}

declare dso_local %struct.ixgbe_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ndo_dflt_bridge_getlink(%struct.sk_buff*, i32, i32, %struct.net_device*, i32, i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
