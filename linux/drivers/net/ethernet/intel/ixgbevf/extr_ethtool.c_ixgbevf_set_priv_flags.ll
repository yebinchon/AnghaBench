; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_set_priv_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ethtool.c_ixgbevf_set_priv_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { i32 }

@IXGBEVF_FLAGS_LEGACY_RX = common dso_local global i32 0, align 4
@IXGBEVF_PRIV_FLAGS_LEGACY_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ixgbevf_set_priv_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbevf_set_priv_flags(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbevf_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbevf_adapter* %8, %struct.ixgbevf_adapter** %5, align 8
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @IXGBEVF_FLAGS_LEGACY_RX, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %6, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IXGBEVF_PRIV_FLAGS_LEGACY_RX, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @IXGBEVF_FLAGS_LEGACY_RX, align 4
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %6, align 4
  br label %24

24:                                               ; preds = %20, %2
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %25, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.net_device*, %struct.net_device** %3, align 8
  %35 = call i64 @netif_running(%struct.net_device* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %5, align 8
  %39 = call i32 @ixgbevf_reinit_locked(%struct.ixgbevf_adapter* %38)
  br label %40

40:                                               ; preds = %37, %30
  br label %41

41:                                               ; preds = %40, %24
  ret i32 0
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @ixgbevf_reinit_locked(%struct.ixgbevf_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
