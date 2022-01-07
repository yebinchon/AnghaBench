; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_set_d0_lplu_state_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_set_d0_lplu_state_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_phy_info }
%struct.TYPE_2__ = type { i64 }
%struct.e1000_phy_info = type { i64, i64 }

@e1000_phy_ife = common dso_local global i64 0, align 8
@PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_D0A_LPLU = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@e1000_ich8lan = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_d0_lplu_state_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_d0_lplu_state_ich8lan(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_phy_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 1
  store %struct.e1000_phy_info* %11, %struct.e1000_phy_info** %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @e1000_phy_ife, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %140

18:                                               ; preds = %2
  %19 = load i32, i32* @PHY_CTRL, align 4
  %20 = call i32 @er32(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %68

23:                                               ; preds = %18
  %24 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %25 = load i32, i32* %7, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @PHY_CTRL, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ew32(i32 %27, i32 %28)
  %30 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %31 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @e1000_phy_igp_3, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  store i64 0, i64* %3, align 8
  br label %140

36:                                               ; preds = %23
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %38 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @e1000_ich8lan, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %45 = call i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %44)
  br label %46

46:                                               ; preds = %43, %36
  %47 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %48 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %49 = call i64 @e1e_rphy(%struct.e1000_hw* %47, i32 %48, i32* %9)
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %3, align 8
  br label %140

54:                                               ; preds = %46
  %55 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %60 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @e1e_wphy(%struct.e1000_hw* %59, i32 %60, i32 %61)
  store i64 %62, i64* %8, align 8
  %63 = load i64, i64* %8, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %3, align 8
  br label %140

67:                                               ; preds = %54
  br label %139

68:                                               ; preds = %18
  %69 = load i32, i32* @E1000_PHY_CTRL_D0A_LPLU, align 4
  %70 = xor i32 %69, -1
  %71 = load i32, i32* %7, align 4
  %72 = and i32 %71, %70
  store i32 %72, i32* %7, align 4
  %73 = load i32, i32* @PHY_CTRL, align 4
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ew32(i32 %73, i32 %74)
  %76 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %77 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @e1000_phy_igp_3, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  store i64 0, i64* %3, align 8
  br label %140

82:                                               ; preds = %68
  %83 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %84 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @e1000_smart_speed_on, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %109

88:                                               ; preds = %82
  %89 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %90 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %91 = call i64 @e1e_rphy(%struct.e1000_hw* %89, i32 %90, i32* %9)
  store i64 %91, i64* %8, align 8
  %92 = load i64, i64* %8, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %88
  %95 = load i64, i64* %8, align 8
  store i64 %95, i64* %3, align 8
  br label %140

96:                                               ; preds = %88
  %97 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %98 = load i32, i32* %9, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %9, align 4
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %101 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %102 = load i32, i32* %9, align 4
  %103 = call i64 @e1e_wphy(%struct.e1000_hw* %100, i32 %101, i32 %102)
  store i64 %103, i64* %8, align 8
  %104 = load i64, i64* %8, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i64, i64* %8, align 8
  store i64 %107, i64* %3, align 8
  br label %140

108:                                              ; preds = %96
  br label %138

109:                                              ; preds = %82
  %110 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %111 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i64, i64* @e1000_smart_speed_off, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %137

115:                                              ; preds = %109
  %116 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %117 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %118 = call i64 @e1e_rphy(%struct.e1000_hw* %116, i32 %117, i32* %9)
  store i64 %118, i64* %8, align 8
  %119 = load i64, i64* %8, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %115
  %122 = load i64, i64* %8, align 8
  store i64 %122, i64* %3, align 8
  br label %140

123:                                              ; preds = %115
  %124 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %9, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %9, align 4
  %128 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %129 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %130 = load i32, i32* %9, align 4
  %131 = call i64 @e1e_wphy(%struct.e1000_hw* %128, i32 %129, i32 %130)
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %8, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %123
  %135 = load i64, i64* %8, align 8
  store i64 %135, i64* %3, align 8
  br label %140

136:                                              ; preds = %123
  br label %137

137:                                              ; preds = %136, %109
  br label %138

138:                                              ; preds = %137, %108
  br label %139

139:                                              ; preds = %138, %67
  store i64 0, i64* %3, align 8
  br label %140

140:                                              ; preds = %139, %134, %121, %106, %94, %81, %65, %52, %35, %17
  %141 = load i64, i64* %3, align 8
  ret i64 %141
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw*) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
