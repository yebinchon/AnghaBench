; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/oki-semi/pch_gbe/extr_pch_gbe_main.c_pch_gbe_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pch_gbe_adapter = type { %struct.net_device*, %struct.pch_gbe_hw }
%struct.net_device = type { i32 }
%struct.pch_gbe_hw = type { i32 }

@PCH_GBE_MAR_ENTRIES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"pch_gbe_phy_get_id error\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pch_gbe_reset(%struct.pch_gbe_adapter* %0) #0 {
  %2 = alloca %struct.pch_gbe_adapter*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.pch_gbe_hw*, align 8
  %5 = alloca i64, align 8
  store %struct.pch_gbe_adapter* %0, %struct.pch_gbe_adapter** %2, align 8
  %6 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %6, i32 0, i32 0
  %8 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %8, %struct.net_device** %3, align 8
  %9 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %9, i32 0, i32 1
  store %struct.pch_gbe_hw* %10, %struct.pch_gbe_hw** %4, align 8
  %11 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %12 = call i32 @pch_gbe_mac_reset_hw(%struct.pch_gbe_hw* %11)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @pch_gbe_set_multi(%struct.net_device* %13)
  %15 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %16 = load i32, i32* @PCH_GBE_MAR_ENTRIES, align 4
  %17 = call i32 @pch_gbe_mac_init_rx_addrs(%struct.pch_gbe_hw* %15, i32 %16)
  %18 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %19 = call i64 @pch_gbe_phy_get_id(%struct.pch_gbe_hw* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.pch_gbe_adapter*, %struct.pch_gbe_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.pch_gbe_adapter, %struct.pch_gbe_adapter* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  %26 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %32

27:                                               ; preds = %1
  %28 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %29 = call i32 @pch_gbe_phy_init_setting(%struct.pch_gbe_hw* %28)
  %30 = load %struct.pch_gbe_hw*, %struct.pch_gbe_hw** %4, align 8
  %31 = call i32 @pch_gbe_phy_set_rgmii(%struct.pch_gbe_hw* %30)
  br label %32

32:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @pch_gbe_mac_reset_hw(%struct.pch_gbe_hw*) #1

declare dso_local i32 @pch_gbe_set_multi(%struct.net_device*) #1

declare dso_local i32 @pch_gbe_mac_init_rx_addrs(%struct.pch_gbe_hw*, i32) #1

declare dso_local i64 @pch_gbe_phy_get_id(%struct.pch_gbe_hw*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @pch_gbe_phy_init_setting(%struct.pch_gbe_hw*) #1

declare dso_local i32 @pch_gbe_phy_set_rgmii(%struct.pch_gbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
