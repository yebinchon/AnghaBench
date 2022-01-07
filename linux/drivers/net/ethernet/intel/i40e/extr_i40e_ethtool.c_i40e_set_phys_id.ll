; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.i40e_netdev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32, i32, i32, %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_HW_PHY_CONTROLS_LEDS = common dso_local global i32 0, align 4
@I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE = common dso_local global i32 0, align 4
@I40E_PHY_DEBUG_ALL = common dso_local global i32 0, align 4
@I40E_PHY_LED_MODE_ORIG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @i40e_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_netdev_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.i40e_pf*, align 8
  %9 = alloca %struct.i40e_hw*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.i40e_netdev_priv* %13, %struct.i40e_netdev_priv** %6, align 8
  store i64 0, i64* %7, align 8
  %14 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %6, align 8
  %15 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.i40e_pf*, %struct.i40e_pf** %17, align 8
  store %struct.i40e_pf* %18, %struct.i40e_pf** %8, align 8
  %19 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %20 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %19, i32 0, i32 3
  store %struct.i40e_hw* %20, %struct.i40e_hw** %9, align 8
  store i32 2, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  switch i32 %21, label %124 [
    i32 131, label %22
    i32 128, label %55
    i32 129, label %72
    i32 130, label %89
  ]

22:                                               ; preds = %2
  %23 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %24 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @I40E_HW_PHY_CONTROLS_LEDS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %22
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %31 = call i32 @i40e_led_get(%struct.i40e_hw* %30)
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %53

34:                                               ; preds = %22
  %35 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %36 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %43 = load i32, i32* @I40E_PHY_DEBUG_ALL, align 4
  %44 = call i32 @i40e_aq_set_phy_debug(%struct.i40e_hw* %42, i32 %43, i32* null)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %47 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %48 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %47, i32 0, i32 2
  %49 = call i64 @i40e_led_get_phy(%struct.i40e_hw* %46, i32* %11, i32* %48)
  store i64 %49, i64* %7, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %52 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %45, %29
  %54 = load i32, i32* %10, align 4
  store i32 %54, i32* %3, align 4
  br label %132

55:                                               ; preds = %2
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @I40E_HW_PHY_CONTROLS_LEDS, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %64 = call i32 @i40e_led_set(%struct.i40e_hw* %63, i32 15, i32 0)
  br label %71

65:                                               ; preds = %55
  %66 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %67 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %68 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i64 @i40e_led_set_phy(%struct.i40e_hw* %66, i32 1, i32 %69, i32 0)
  store i64 %70, i64* %7, align 8
  br label %71

71:                                               ; preds = %65, %62
  br label %125

72:                                               ; preds = %2
  %73 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %74 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @I40E_HW_PHY_CONTROLS_LEDS, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %72
  %80 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %81 = call i32 @i40e_led_set(%struct.i40e_hw* %80, i32 0, i32 0)
  br label %88

82:                                               ; preds = %72
  %83 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %84 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %85 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i64 @i40e_led_set_phy(%struct.i40e_hw* %83, i32 0, i32 %86, i32 0)
  store i64 %87, i64* %7, align 8
  br label %88

88:                                               ; preds = %82, %79
  br label %125

89:                                               ; preds = %2
  %90 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %91 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @I40E_HW_PHY_CONTROLS_LEDS, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %89
  %97 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %98 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %99 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @i40e_led_set(%struct.i40e_hw* %97, i32 %100, i32 0)
  br label %123

102:                                              ; preds = %89
  %103 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %104 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %105 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.i40e_pf*, %struct.i40e_pf** %8, align 8
  %108 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @I40E_PHY_LED_MODE_ORIG, align 4
  %111 = or i32 %109, %110
  %112 = call i64 @i40e_led_set_phy(%struct.i40e_hw* %103, i32 0, i32 %106, i32 %111)
  store i64 %112, i64* %7, align 8
  %113 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %114 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* @I40E_HW_FLAG_AQ_PHY_ACCESS_CAPABLE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %122, label %119

119:                                              ; preds = %102
  %120 = load %struct.i40e_hw*, %struct.i40e_hw** %9, align 8
  %121 = call i32 @i40e_aq_set_phy_debug(%struct.i40e_hw* %120, i32 0, i32* null)
  br label %122

122:                                              ; preds = %119, %102
  br label %123

123:                                              ; preds = %122, %96
  br label %125

124:                                              ; preds = %2
  br label %125

125:                                              ; preds = %124, %123, %88, %71
  %126 = load i64, i64* %7, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125
  %129 = load i32, i32* @ENOENT, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %3, align 4
  br label %132

131:                                              ; preds = %125
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %131, %128, %53
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @i40e_led_get(%struct.i40e_hw*) #1

declare dso_local i32 @i40e_aq_set_phy_debug(%struct.i40e_hw*, i32, i32*) #1

declare dso_local i64 @i40e_led_get_phy(%struct.i40e_hw*, i32*, i32*) #1

declare dso_local i32 @i40e_led_set(%struct.i40e_hw*, i32, i32) #1

declare dso_local i64 @i40e_led_set_phy(%struct.i40e_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
