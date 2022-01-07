; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_k1_workaround_lpt_lp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ich8lan.c_e1000_k1_workaround_lpt_lp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)*, i64 (%struct.e1000_hw.1*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@FEXTNVM6 = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_1000 = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_K1_CONFIG = common dso_local global i32 0, align 4
@E1000_KMRNCTRLSTA_K1_ENABLE = common dso_local global i32 0, align 4
@E1000_FEXTNVM6_REQ_PLL_CLK = common dso_local global i32 0, align 4
@E1000_STATUS_SPEED_100 = common dso_local global i32 0, align 4
@E1000_STATUS_FD = common dso_local global i32 0, align 4
@I217_INBAND_CTRL = common dso_local global i32 0, align 4
@I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_MASK = common dso_local global i32 0, align 4
@I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_SHIFT = common dso_local global i32 0, align 4
@E1000_FEXTNVM6_ENABLE_K1_ENTRY_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32)* @e1000_k1_workaround_lpt_lp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_k1_workaround_lpt_lp(%struct.e1000_hw* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* @FEXTNVM6, align 4
  %11 = call i32 @er32(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @STATUS, align 4
  %13 = call i32 @er32(i32 %12)
  store i32 %13, i32* %7, align 4
  store i64 0, i64* %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %72

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @E1000_STATUS_SPEED_1000, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %72

21:                                               ; preds = %16
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %23 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 1
  %26 = load i64 (%struct.e1000_hw.1*)*, i64 (%struct.e1000_hw.1*)** %25, align 8
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %28 = bitcast %struct.e1000_hw* %27 to %struct.e1000_hw.1*
  %29 = call i64 %26(%struct.e1000_hw.1* %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %21
  %33 = load i64, i64* %8, align 8
  store i64 %33, i64* %3, align 8
  br label %146

34:                                               ; preds = %21
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %36 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %37 = call i64 @e1000e_read_kmrn_reg_locked(%struct.e1000_hw* %35, i32 %36, i32* %9)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  br label %63

41:                                               ; preds = %34
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %43 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @E1000_KMRNCTRLSTA_K1_ENABLE, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  %48 = call i64 @e1000e_write_kmrn_reg_locked(%struct.e1000_hw* %42, i32 %43, i32 %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %8, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %63

52:                                               ; preds = %41
  %53 = call i32 @usleep_range(i32 10, i32 20)
  %54 = load i32, i32* @FEXTNVM6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @E1000_FEXTNVM6_REQ_PLL_CLK, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @ew32(i32 %54, i32 %57)
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %60 = load i32, i32* @E1000_KMRNCTRLSTA_K1_CONFIG, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i64 @e1000e_write_kmrn_reg_locked(%struct.e1000_hw* %59, i32 %60, i32 %61)
  store i64 %62, i64* %8, align 8
  br label %63

63:                                               ; preds = %52, %51, %40
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %67, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %70 = bitcast %struct.e1000_hw* %69 to %struct.e1000_hw.0*
  %71 = call i32 %68(%struct.e1000_hw.0* %70)
  br label %144

72:                                               ; preds = %16, %2
  %73 = load i32, i32* @E1000_FEXTNVM6_REQ_PLL_CLK, align 4
  %74 = xor i32 %73, -1
  %75 = load i32, i32* %6, align 4
  %76 = and i32 %75, %74
  store i32 %76, i32* %6, align 4
  %77 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %78 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sgt i32 %80, 5
  br i1 %81, label %95, label %82

82:                                               ; preds = %72
  %83 = load i32, i32* %5, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %82
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* @E1000_STATUS_FD, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90, %82, %72
  br label %140

96:                                               ; preds = %90, %85
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %98 = load i32, i32* @I217_INBAND_CTRL, align 4
  %99 = call i64 @e1e_rphy(%struct.e1000_hw* %97, i32 %98, i32* %9)
  store i64 %99, i64* %8, align 8
  %100 = load i64, i64* %8, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %96
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* %3, align 8
  br label %146

104:                                              ; preds = %96
  %105 = load i32, i32* @I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_MASK, align 4
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %9, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @E1000_STATUS_SPEED_100, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %104
  %114 = load i32, i32* @I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_SHIFT, align 4
  %115 = shl i32 5, %114
  %116 = load i32, i32* %9, align 4
  %117 = or i32 %116, %115
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* @E1000_FEXTNVM6_ENABLE_K1_ENTRY_CONDITION, align 4
  %119 = xor i32 %118, -1
  %120 = load i32, i32* %6, align 4
  %121 = and i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %130

122:                                              ; preds = %104
  %123 = load i32, i32* @I217_INBAND_CTRL_LINK_STAT_TX_TIMEOUT_SHIFT, align 4
  %124 = shl i32 50, %123
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* @E1000_FEXTNVM6_ENABLE_K1_ENTRY_CONDITION, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %122, %113
  %131 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %132 = load i32, i32* @I217_INBAND_CTRL, align 4
  %133 = load i32, i32* %9, align 4
  %134 = call i64 @e1e_wphy(%struct.e1000_hw* %131, i32 %132, i32 %133)
  store i64 %134, i64* %8, align 8
  %135 = load i64, i64* %8, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %130
  %138 = load i64, i64* %8, align 8
  store i64 %138, i64* %3, align 8
  br label %146

139:                                              ; preds = %130
  br label %140

140:                                              ; preds = %139, %95
  %141 = load i32, i32* @FEXTNVM6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = call i32 @ew32(i32 %141, i32 %142)
  br label %144

144:                                              ; preds = %140, %63
  %145 = load i64, i64* %8, align 8
  store i64 %145, i64* %3, align 8
  br label %146

146:                                              ; preds = %144, %137, %102, %32
  %147 = load i64, i64* %3, align 8
  ret i64 %147
}

declare dso_local i32 @er32(i32) #1

declare dso_local i64 @e1000e_read_kmrn_reg_locked(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000e_write_kmrn_reg_locked(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @ew32(i32, i32) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
