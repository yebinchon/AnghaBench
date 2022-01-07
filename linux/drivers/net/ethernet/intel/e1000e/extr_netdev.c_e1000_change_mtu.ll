; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.e1000_adapter = type { i32, i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@VLAN_ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@FLAG_HAS_JUMBO_FRAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Jumbo Frames not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@e1000_pch2lan = common dso_local global i64 0, align 8
@FLAG2_CRC_STRIPPING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [75 x i8] c"Jumbo Frames not supported on this device when CRC stripping is disabled.\0A\00", align 1
@__E1000_RESETTING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"changing MTU from %d to %d\0A\00", align 1
@VLAN_ETH_FRAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @e1000_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @VLAN_ETH_HLEN, align 4
  %12 = add nsw i32 %10, %11
  %13 = load i32, i32* @ETH_FCS_LEN, align 4
  %14 = add nsw i32 %12, %13
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @ETH_DATA_LEN, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %2
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @FLAG_HAS_JUMBO_FRAMES, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = call i32 @e_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %125

29:                                               ; preds = %18, %2
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @e1000_pch2lan, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %39 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @FLAG2_CRC_STRIPPING, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %37
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @ETH_DATA_LEN, align 4
  %47 = icmp sgt i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = call i32 @e_err(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.1, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %125

52:                                               ; preds = %44, %37, %29
  br label %53

53:                                               ; preds = %59, %52
  %54 = load i32, i32* @__E1000_RESETTING, align 4
  %55 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %56 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %55, i32 0, i32 4
  %57 = call i64 @test_and_set_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %53
  %60 = call i32 @usleep_range(i32 1000, i32 1100)
  br label %53

61:                                               ; preds = %53
  %62 = load i32, i32* %7, align 4
  %63 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %64 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.net_device*, %struct.net_device** %4, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @e_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %68)
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = getelementptr inbounds %struct.net_device, %struct.net_device* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @pm_runtime_get_sync(i32 %76)
  %78 = load %struct.net_device*, %struct.net_device** %4, align 8
  %79 = call i64 @netif_running(%struct.net_device* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %61
  %82 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %83 = call i32 @e1000e_down(%struct.e1000_adapter* %82, i32 1)
  br label %84

84:                                               ; preds = %81, %61
  %85 = load i32, i32* %7, align 4
  %86 = icmp sle i32 %85, 2048
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %89 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %88, i32 0, i32 3
  store i32 2048, i32* %89, align 4
  br label %93

90:                                               ; preds = %84
  %91 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %92 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %91, i32 0, i32 3
  store i32 4096, i32* %92, align 4
  br label %93

93:                                               ; preds = %90, %87
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* @VLAN_ETH_FRAME_LEN, align 4
  %96 = load i32, i32* @ETH_FCS_LEN, align 4
  %97 = add nsw i32 %95, %96
  %98 = icmp sle i32 %94, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %93
  %100 = load i32, i32* @VLAN_ETH_FRAME_LEN, align 4
  %101 = load i32, i32* @ETH_FCS_LEN, align 4
  %102 = add nsw i32 %100, %101
  %103 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %104 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 4
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.net_device*, %struct.net_device** %4, align 8
  %107 = call i64 @netif_running(%struct.net_device* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %112

109:                                              ; preds = %105
  %110 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %111 = call i32 @e1000e_up(%struct.e1000_adapter* %110)
  br label %115

112:                                              ; preds = %105
  %113 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %114 = call i32 @e1000e_reset(%struct.e1000_adapter* %113)
  br label %115

115:                                              ; preds = %112, %109
  %116 = load %struct.net_device*, %struct.net_device** %4, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @pm_runtime_put_sync(i32 %119)
  %121 = load i32, i32* @__E1000_RESETTING, align 4
  %122 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %123 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %122, i32 0, i32 4
  %124 = call i32 @clear_bit(i32 %121, i32* %123)
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %115, %48, %25
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @e_err(i8*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @e_info(i8*, i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @e1000e_down(%struct.e1000_adapter*, i32) #1

declare dso_local i32 @e1000e_up(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000e_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
