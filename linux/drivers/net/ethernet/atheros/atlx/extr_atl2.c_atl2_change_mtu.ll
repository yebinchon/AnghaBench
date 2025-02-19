; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl2.c_atl2_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl2_adapter = type { %struct.atl2_hw }
%struct.atl2_hw = type { i32 }

@REG_MTU = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@VLAN_HLEN = common dso_local global i64 0, align 8
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @atl2_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl2_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl2_adapter*, align 8
  %6 = alloca %struct.atl2_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl2_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl2_adapter* %8, %struct.atl2_adapter** %5, align 8
  %9 = load %struct.atl2_adapter*, %struct.atl2_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.atl2_adapter, %struct.atl2_adapter* %9, i32 0, i32 0
  store %struct.atl2_hw* %10, %struct.atl2_hw** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.atl2_hw*, %struct.atl2_hw** %6, align 8
  %16 = getelementptr inbounds %struct.atl2_hw, %struct.atl2_hw* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.atl2_hw*, %struct.atl2_hw** %6, align 8
  %18 = load i32, i32* @REG_MTU, align 4
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = load i64, i64* @ETH_HLEN, align 8
  %22 = add nsw i64 %20, %21
  %23 = load i64, i64* @VLAN_HLEN, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* @ETH_FCS_LEN, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @ATL2_WRITE_REG(%struct.atl2_hw* %17, i32 %18, i64 %26)
  ret i32 0
}

declare dso_local %struct.atl2_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ATL2_WRITE_REG(%struct.atl2_hw*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
