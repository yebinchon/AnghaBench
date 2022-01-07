; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_ethtool.c_e1000_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64, i64 }
%struct.e1000_adapter = type { i64, i32, i32, %struct.e1000_hw }
%struct.e1000_hw = type { i64, i32, i32 }

@__E1000_RESETTING = common dso_local global i32 0, align 4
@E1000_FC_FULL = common dso_local global i32 0, align 4
@E1000_FC_RX_PAUSE = common dso_local global i32 0, align 4
@E1000_FC_TX_PAUSE = common dso_local global i32 0, align 4
@E1000_FC_NONE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@e1000_media_type_fiber = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @e1000_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_pauseparam*, align 8
  %5 = alloca %struct.e1000_adapter*, align 8
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.e1000_adapter* %9, %struct.e1000_adapter** %5, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 3
  store %struct.e1000_hw* %11, %struct.e1000_hw** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %23, %2
  %18 = load i32, i32* @__E1000_RESETTING, align 4
  %19 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %20 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %19, i32 0, i32 1
  %21 = call i64 @test_and_set_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = call i32 @msleep(i32 1)
  br label %17

25:                                               ; preds = %17
  %26 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %27 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %25
  %31 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %32 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @E1000_FC_FULL, align 4
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 8
  br label %84

39:                                               ; preds = %30, %25
  %40 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %41 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @E1000_FC_RX_PAUSE, align 4
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %52 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  br label %83

53:                                               ; preds = %44, %39
  %54 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %55 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @E1000_FC_TX_PAUSE, align 4
  %65 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %66 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 8
  br label %82

67:                                               ; preds = %58, %53
  %68 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %69 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %81, label %72

72:                                               ; preds = %67
  %73 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %4, align 8
  %74 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %72
  %78 = load i32, i32* @E1000_FC_NONE, align 4
  %79 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %80 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %77, %72, %67
  br label %82

82:                                               ; preds = %81, %63
  br label %83

83:                                               ; preds = %82, %49
  br label %84

84:                                               ; preds = %83, %35
  %85 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %86 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %89 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 4
  %90 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %91 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @AUTONEG_ENABLE, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %110

95:                                               ; preds = %84
  %96 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %97 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i64 @netif_running(i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %95
  %102 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %103 = call i32 @e1000_down(%struct.e1000_adapter* %102)
  %104 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %105 = call i32 @e1000_up(%struct.e1000_adapter* %104)
  br label %109

106:                                              ; preds = %95
  %107 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %108 = call i32 @e1000_reset(%struct.e1000_adapter* %107)
  br label %109

109:                                              ; preds = %106, %101
  br label %124

110:                                              ; preds = %84
  %111 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %112 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* @e1000_media_type_fiber, align 8
  %115 = icmp eq i64 %113, %114
  br i1 %115, label %116, label %119

116:                                              ; preds = %110
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %118 = call i32 @e1000_setup_link(%struct.e1000_hw* %117)
  br label %122

119:                                              ; preds = %110
  %120 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %121 = call i32 @e1000_force_mac_fc(%struct.e1000_hw* %120)
  br label %122

122:                                              ; preds = %119, %116
  %123 = phi i32 [ %118, %116 ], [ %121, %119 ]
  store i32 %123, i32* %7, align 4
  br label %124

124:                                              ; preds = %122, %109
  %125 = load i32, i32* @__E1000_RESETTING, align 4
  %126 = load %struct.e1000_adapter*, %struct.e1000_adapter** %5, align 8
  %127 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %126, i32 0, i32 1
  %128 = call i32 @clear_bit(i32 %125, i32* %127)
  %129 = load i32, i32* %7, align 4
  ret i32 %129
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @netif_running(i32) #1

declare dso_local i32 @e1000_down(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_up(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_reset(%struct.e1000_adapter*) #1

declare dso_local i32 @e1000_setup_link(%struct.e1000_hw*) #1

declare dso_local i32 @e1000_force_mac_fc(%struct.e1000_hw*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
