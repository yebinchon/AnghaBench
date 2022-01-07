; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_set_d3_lplu_state_ich8lan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_set_d3_lplu_state_ich8lan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_phy_info }
%struct.TYPE_2__ = type { i64 }
%struct.e1000_phy_info = type { i64, i64, i64 }

@PHY_CTRL = common dso_local global i32 0, align 4
@E1000_PHY_CTRL_NOND0A_LPLU = common dso_local global i32 0, align 4
@e1000_phy_igp_3 = common dso_local global i64 0, align 8
@e1000_smart_speed_on = common dso_local global i64 0, align 8
@IGP01E1000_PHY_PORT_CONFIG = common dso_local global i32 0, align 4
@IGP01E1000_PSCFR_SMART_SPEED = common dso_local global i32 0, align 4
@e1000_smart_speed_off = common dso_local global i64 0, align 8
@E1000_ALL_SPEED_DUPLEX = common dso_local global i64 0, align 8
@E1000_ALL_NOT_GIG = common dso_local global i64 0, align 8
@E1000_ALL_10_SPEED = common dso_local global i64 0, align 8
@e1000_ich8lan = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_set_d3_lplu_state_ich8lan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_d3_lplu_state_ich8lan(%struct.e1000_hw* %0, i32 %1) #0 {
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
  %12 = load i32, i32* @PHY_CTRL, align 4
  %13 = call i32 @er32(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %87, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @E1000_PHY_CTRL_NOND0A_LPLU, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @PHY_CTRL, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @ew32(i32 %21, i32 %22)
  %24 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %25 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @e1000_phy_igp_3, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  store i64 0, i64* %3, align 8
  br label %148

30:                                               ; preds = %16
  %31 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %32 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @e1000_smart_speed_on, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %30
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %38 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %39 = call i64 @e1e_rphy(%struct.e1000_hw* %37, i32 %38, i32* %9)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %3, align 8
  br label %148

44:                                               ; preds = %36
  %45 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %49 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i64 @e1e_wphy(%struct.e1000_hw* %48, i32 %49, i32 %50)
  store i64 %51, i64* %8, align 8
  %52 = load i64, i64* %8, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %44
  %55 = load i64, i64* %8, align 8
  store i64 %55, i64* %3, align 8
  br label %148

56:                                               ; preds = %44
  br label %86

57:                                               ; preds = %30
  %58 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %59 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @e1000_smart_speed_off, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %85

63:                                               ; preds = %57
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %65 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %66 = call i64 @e1e_rphy(%struct.e1000_hw* %64, i32 %65, i32* %9)
  store i64 %66, i64* %8, align 8
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %63
  %70 = load i64, i64* %8, align 8
  store i64 %70, i64* %3, align 8
  br label %148

71:                                               ; preds = %63
  %72 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %73 = xor i32 %72, -1
  %74 = load i32, i32* %9, align 4
  %75 = and i32 %74, %73
  store i32 %75, i32* %9, align 4
  %76 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %77 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %78 = load i32, i32* %9, align 4
  %79 = call i64 @e1e_wphy(%struct.e1000_hw* %76, i32 %77, i32 %78)
  store i64 %79, i64* %8, align 8
  %80 = load i64, i64* %8, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %71
  %83 = load i64, i64* %8, align 8
  store i64 %83, i64* %3, align 8
  br label %148

84:                                               ; preds = %71
  br label %85

85:                                               ; preds = %84, %57
  br label %86

86:                                               ; preds = %85, %56
  br label %146

87:                                               ; preds = %2
  %88 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %89 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @E1000_ALL_SPEED_DUPLEX, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %105, label %93

93:                                               ; preds = %87
  %94 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %95 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @E1000_ALL_NOT_GIG, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %105, label %99

99:                                               ; preds = %93
  %100 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %101 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @E1000_ALL_10_SPEED, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %145

105:                                              ; preds = %99, %93, %87
  %106 = load i32, i32* @E1000_PHY_CTRL_NOND0A_LPLU, align 4
  %107 = load i32, i32* %7, align 4
  %108 = or i32 %107, %106
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* @PHY_CTRL, align 4
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @ew32(i32 %109, i32 %110)
  %112 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %6, align 8
  %113 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @e1000_phy_igp_3, align 8
  %116 = icmp ne i64 %114, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %105
  store i64 0, i64* %3, align 8
  br label %148

118:                                              ; preds = %105
  %119 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %120 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @e1000_ich8lan, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %127 = call i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw* %126)
  br label %128

128:                                              ; preds = %125, %118
  %129 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %130 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %131 = call i64 @e1e_rphy(%struct.e1000_hw* %129, i32 %130, i32* %9)
  store i64 %131, i64* %8, align 8
  %132 = load i64, i64* %8, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %128
  %135 = load i64, i64* %8, align 8
  store i64 %135, i64* %3, align 8
  br label %148

136:                                              ; preds = %128
  %137 = load i32, i32* @IGP01E1000_PSCFR_SMART_SPEED, align 4
  %138 = xor i32 %137, -1
  %139 = load i32, i32* %9, align 4
  %140 = and i32 %139, %138
  store i32 %140, i32* %9, align 4
  %141 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %142 = load i32, i32* @IGP01E1000_PHY_PORT_CONFIG, align 4
  %143 = load i32, i32* %9, align 4
  %144 = call i64 @e1e_wphy(%struct.e1000_hw* %141, i32 %142, i32 %143)
  store i64 %144, i64* %8, align 8
  br label %145

145:                                              ; preds = %136, %99
  br label %146

146:                                              ; preds = %145, %86
  %147 = load i64, i64* %8, align 8
  store i64 %147, i64* %3, align 8
  br label %148

148:                                              ; preds = %146, %134, %117, %82, %69, %54, %42, %29
  %149 = load i64, i64* %3, align 8
  ret i64 %149
}

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @e1000e_gig_downshift_workaround_ich8lan(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
