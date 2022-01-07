; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbevf/extr_ixgbevf_main.c_ixgbevf_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ixgbevf_adapter = type { i32, %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, %struct.net_device*)*, i32 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IFF_PROMISC = common dso_local global i32 0, align 4
@IXGBEVF_XCAST_MODE_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@IXGBEVF_XCAST_MODE_ALLMULTI = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@IXGBEVF_XCAST_MODE_MULTI = common dso_local global i32 0, align 4
@IXGBEVF_XCAST_MODE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ixgbevf_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbevf_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ixgbevf_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ixgbevf_adapter* %8, %struct.ixgbevf_adapter** %3, align 8
  %9 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %9, i32 0, i32 1
  store %struct.ixgbe_hw* %10, %struct.ixgbe_hw** %4, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @IXGBEVF_XCAST_MODE_PROMISC, align 4
  store i32 %19, i32* %6, align 4
  br label %40

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @IFF_ALLMULTI, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @IXGBEVF_XCAST_MODE_ALLMULTI, align 4
  store i32 %26, i32* %6, align 4
  br label %39

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @IFF_BROADCAST, align 4
  %30 = load i32, i32* @IFF_MULTICAST, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @IXGBEVF_XCAST_MODE_MULTI, align 4
  store i32 %35, i32* %6, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @IXGBEVF_XCAST_MODE_NONE, align 4
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %36, %34
  br label %39

39:                                               ; preds = %38, %25
  br label %40

40:                                               ; preds = %39, %18
  %41 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %41, i32 0, i32 0
  %43 = call i32 @spin_lock_bh(i32* %42)
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %45 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32 (%struct.ixgbe_hw.1*, i32)*, i32 (%struct.ixgbe_hw.1*, i32)** %47, align 8
  %49 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %50 = bitcast %struct.ixgbe_hw* %49 to %struct.ixgbe_hw.1*
  %51 = load i32, i32* %6, align 4
  %52 = call i32 %48(%struct.ixgbe_hw.1* %50, i32 %51)
  %53 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %54 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32 (%struct.ixgbe_hw.0*, %struct.net_device*)*, i32 (%struct.ixgbe_hw.0*, %struct.net_device*)** %56, align 8
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = bitcast %struct.ixgbe_hw* %58 to %struct.ixgbe_hw.0*
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i32 %57(%struct.ixgbe_hw.0* %59, %struct.net_device* %60)
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 @ixgbevf_write_uc_addr_list(%struct.net_device* %62)
  %64 = load %struct.ixgbevf_adapter*, %struct.ixgbevf_adapter** %3, align 8
  %65 = getelementptr inbounds %struct.ixgbevf_adapter, %struct.ixgbevf_adapter* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock_bh(i32* %65)
  ret void
}

declare dso_local %struct.ixgbevf_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @ixgbevf_write_uc_addr_list(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
