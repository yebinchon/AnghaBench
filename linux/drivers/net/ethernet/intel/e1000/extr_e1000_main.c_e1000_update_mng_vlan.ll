; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_update_mng_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_main.c_e1000_update_mng_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i64, i32, %struct.net_device*, %struct.e1000_hw }
%struct.net_device = type { i32 }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@E1000_MNG_VLAN_NONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_update_mng_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_update_mng_vlan(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 3
  store %struct.e1000_hw* %8, %struct.e1000_hw** %3, align 8
  %9 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %9, i32 0, i32 2
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %13 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %17 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %6, align 8
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %20 = call i32 @e1000_vlan_used(%struct.e1000_adapter* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %1
  br label %77

23:                                               ; preds = %1
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @test_bit(i64 %24, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %73, label %30

30:                                               ; preds = %23
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @E1000_MNG_DHCP_COOKIE_STATUS_VLAN_SUPPORT, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load i32, i32* @ETH_P_8021Q, align 4
  %41 = call i32 @htons(i32 %40)
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @e1000_vlan_rx_add_vid(%struct.net_device* %39, i32 %41, i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %46 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %45, i32 0, i32 0
  store i64 %44, i64* %46, align 8
  br label %51

47:                                               ; preds = %30
  %48 = load i64, i64* @E1000_MNG_VLAN_NONE, align 8
  %49 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %50 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  br label %51

51:                                               ; preds = %47, %38
  %52 = load i64, i64* %6, align 8
  %53 = load i64, i64* @E1000_MNG_VLAN_NONE, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %72

55:                                               ; preds = %51
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %55
  %60 = load i64, i64* %6, align 8
  %61 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %62 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @test_bit(i64 %60, i32 %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %59
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = load i32, i32* @ETH_P_8021Q, align 4
  %69 = call i32 @htons(i32 %68)
  %70 = load i64, i64* %6, align 8
  %71 = call i32 @e1000_vlan_rx_kill_vid(%struct.net_device* %67, i32 %69, i64 %70)
  br label %72

72:                                               ; preds = %66, %59, %55, %51
  br label %77

73:                                               ; preds = %23
  %74 = load i64, i64* %5, align 8
  %75 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %76 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %75, i32 0, i32 0
  store i64 %74, i64* %76, align 8
  br label %77

77:                                               ; preds = %22, %73, %72
  ret void
}

declare dso_local i32 @e1000_vlan_used(%struct.e1000_adapter*) #1

declare dso_local i32 @test_bit(i64, i32) #1

declare dso_local i32 @e1000_vlan_rx_add_vid(%struct.net_device*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @e1000_vlan_rx_kill_vid(%struct.net_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
