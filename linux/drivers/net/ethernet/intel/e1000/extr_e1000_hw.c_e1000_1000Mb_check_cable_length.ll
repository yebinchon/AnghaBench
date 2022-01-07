; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_1000Mb_check_cable_length.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000/extr_e1000_hw.c_e1000_1000Mb_check_cable_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, i32 }

@e1000_dsp_config_enabled = common dso_local global i64 0, align 8
@e1000_igp_cable_length_50 = common dso_local global i64 0, align 8
@IGP01E1000_PHY_CHANNEL_NUM = common dso_local global i64 0, align 8
@dsp_reg_array = common dso_local global i32* null, align 8
@IGP01E1000_PHY_EDAC_MU_INDEX = common dso_local global i64 0, align 8
@e1000_dsp_config_activated = common dso_local global i64 0, align 8
@FFE_IDLE_ERR_COUNT_TIMEOUT_20 = common dso_local global i64 0, align 8
@PHY_1000T_STATUS = common dso_local global i32 0, align 4
@SR_1000T_IDLE_ERROR_CNT = common dso_local global i64 0, align 8
@SR_1000T_PHY_EXCESSIVE_IDLE_ERR_COUNT = common dso_local global i64 0, align 8
@e1000_ffe_config_active = common dso_local global i32 0, align 4
@IGP01E1000_PHY_DSP_FFE = common dso_local global i32 0, align 4
@IGP01E1000_PHY_DSP_FFE_CM_CP = common dso_local global i64 0, align 8
@FFE_IDLE_ERR_COUNT_TIMEOUT_100 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_1000Mb_check_cable_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_1000Mb_check_cable_length(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %12 = call i64 @e1000_get_cable_length(%struct.e1000_hw* %11, i64* %4, i64* %5)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i64, i64* %8, align 8
  store i64 %16, i64* %2, align 8
  br label %124

17:                                               ; preds = %1
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @e1000_dsp_config_enabled, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i64 0, i64* %2, align 8
  br label %124

24:                                               ; preds = %17
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @e1000_igp_cable_length_50, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %68

28:                                               ; preds = %24
  store i64 0, i64* %7, align 8
  br label %29

29:                                               ; preds = %61, %28
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @IGP01E1000_PHY_CHANNEL_NUM, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %64

33:                                               ; preds = %29
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %35 = load i32*, i32** @dsp_reg_array, align 8
  %36 = load i64, i64* %7, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %34, i32 %38, i64* %6)
  store i64 %39, i64* %8, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %2, align 8
  br label %124

44:                                               ; preds = %33
  %45 = load i64, i64* @IGP01E1000_PHY_EDAC_MU_INDEX, align 8
  %46 = xor i64 %45, -1
  %47 = load i64, i64* %6, align 8
  %48 = and i64 %47, %46
  store i64 %48, i64* %6, align 8
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %50 = load i32*, i32** @dsp_reg_array, align 8
  %51 = load i64, i64* %7, align 8
  %52 = getelementptr inbounds i32, i32* %50, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %6, align 8
  %55 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %49, i32 %53, i64 %54)
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %2, align 8
  br label %124

60:                                               ; preds = %44
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %7, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %7, align 8
  br label %29

64:                                               ; preds = %29
  %65 = load i64, i64* @e1000_dsp_config_activated, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  br label %123

68:                                               ; preds = %24
  %69 = load i64, i64* @FFE_IDLE_ERR_COUNT_TIMEOUT_20, align 8
  store i64 %69, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %70 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %71 = load i32, i32* @PHY_1000T_STATUS, align 4
  %72 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %70, i32 %71, i64* %6)
  store i64 %72, i64* %8, align 8
  %73 = load i64, i64* %8, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %68
  %76 = load i64, i64* %8, align 8
  store i64 %76, i64* %2, align 8
  br label %124

77:                                               ; preds = %68
  store i64 0, i64* %7, align 8
  br label %78

78:                                               ; preds = %119, %77
  %79 = load i64, i64* %7, align 8
  %80 = load i64, i64* %9, align 8
  %81 = icmp slt i64 %79, %80
  br i1 %81, label %82, label %122

82:                                               ; preds = %78
  %83 = call i32 @udelay(i32 1000)
  %84 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %85 = load i32, i32* @PHY_1000T_STATUS, align 4
  %86 = call i64 @e1000_read_phy_reg(%struct.e1000_hw* %84, i32 %85, i64* %6)
  store i64 %86, i64* %8, align 8
  %87 = load i64, i64* %8, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %82
  %90 = load i64, i64* %8, align 8
  store i64 %90, i64* %2, align 8
  br label %124

91:                                               ; preds = %82
  %92 = load i64, i64* %6, align 8
  %93 = load i64, i64* @SR_1000T_IDLE_ERROR_CNT, align 8
  %94 = and i64 %92, %93
  %95 = load i64, i64* %10, align 8
  %96 = add nsw i64 %95, %94
  store i64 %96, i64* %10, align 8
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @SR_1000T_PHY_EXCESSIVE_IDLE_ERR_COUNT, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %91
  %101 = load i32, i32* @e1000_ffe_config_active, align 4
  %102 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %103 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 8
  %104 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %105 = load i32, i32* @IGP01E1000_PHY_DSP_FFE, align 4
  %106 = load i64, i64* @IGP01E1000_PHY_DSP_FFE_CM_CP, align 8
  %107 = call i64 @e1000_write_phy_reg(%struct.e1000_hw* %104, i32 %105, i64 %106)
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %8, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %100
  %111 = load i64, i64* %8, align 8
  store i64 %111, i64* %2, align 8
  br label %124

112:                                              ; preds = %100
  br label %122

113:                                              ; preds = %91
  %114 = load i64, i64* %10, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %113
  %117 = load i64, i64* @FFE_IDLE_ERR_COUNT_TIMEOUT_100, align 8
  store i64 %117, i64* %9, align 8
  br label %118

118:                                              ; preds = %116, %113
  br label %119

119:                                              ; preds = %118
  %120 = load i64, i64* %7, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %7, align 8
  br label %78

122:                                              ; preds = %112, %78
  br label %123

123:                                              ; preds = %122, %64
  store i64 0, i64* %2, align 8
  br label %124

124:                                              ; preds = %123, %110, %89, %75, %58, %42, %23, %15
  %125 = load i64, i64* %2, align 8
  ret i64 %125
}

declare dso_local i64 @e1000_get_cable_length(%struct.e1000_hw*, i64*, i64*) #1

declare dso_local i64 @e1000_read_phy_reg(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i64 @e1000_write_phy_reg(%struct.e1000_hw*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
