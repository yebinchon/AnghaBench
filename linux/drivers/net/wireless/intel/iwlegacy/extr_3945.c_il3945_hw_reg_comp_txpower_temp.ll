; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_reg_comp_txpower_temp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_reg_comp_txpower_temp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i64, %struct.TYPE_10__*, %struct.TYPE_9__, %struct.il_channel_info*, i32, i64, i64 }
%struct.TYPE_10__ = type { {}* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32* }
%struct.il_channel_info = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.il3945_eeprom = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@S_SCANNING = common dso_local global i32 0, align 4
@RATE_COUNT_3945 = common dso_local global i64 0, align 8
@power_gain_table = common dso_local global i32** null, align 8
@IL_NUM_SCAN_RATES = common dso_local global i64 0, align 8
@RATE_1M_IDX_TBL = common dso_local global i32 0, align 4
@RATE_6M_IDX_TBL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*)* @il3945_hw_reg_comp_txpower_temp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_hw_reg_comp_txpower_temp(%struct.il_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca %struct.il_channel_info*, align 8
  %5 = alloca %struct.il3945_eeprom*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store %struct.il_channel_info* null, %struct.il_channel_info** %4, align 8
  %16 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %17 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.il3945_eeprom*
  store %struct.il3945_eeprom* %19, %struct.il3945_eeprom** %5, align 8
  %20 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %24 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %23, i32 0, i32 6
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @S_SCANNING, align 4
  %29 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 5
  %31 = call i64 @test_bit(i32 %28, i32* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %1
  store i32 0, i32* %2, align 4
  br label %151

34:                                               ; preds = %27
  store i64 0, i64* %11, align 8
  br label %35

35:                                               ; preds = %139, %34
  %36 = load i64, i64* %11, align 8
  %37 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %38 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %36, %39
  br i1 %40, label %41, label %142

41:                                               ; preds = %35
  %42 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %43 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %42, i32 0, i32 4
  %44 = load %struct.il_channel_info*, %struct.il_channel_info** %43, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %44, i64 %45
  store %struct.il_channel_info* %46, %struct.il_channel_info** %4, align 8
  %47 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %48 = call i64 @il_is_channel_a_band(%struct.il_channel_info* %47)
  store i64 %48, i64* %8, align 8
  %49 = load %struct.il3945_eeprom*, %struct.il3945_eeprom** %5, align 8
  %50 = getelementptr inbounds %struct.il3945_eeprom, %struct.il3945_eeprom* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %53 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %12, align 4
  %61 = call i32 @il3945_hw_reg_adjust_power_by_temp(i32 %59, i32 %60)
  store i32 %61, i32* %6, align 4
  store i64 0, i64* %9, align 8
  br label %62

62:                                               ; preds = %101, %41
  %63 = load i64, i64* %9, align 8
  %64 = load i64, i64* @RATE_COUNT_3945, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %104

66:                                               ; preds = %62
  %67 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %68 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %67, i32 0, i32 1
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %14, align 4
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* %14, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %14, align 4
  %77 = load i32, i32* %14, align 4
  %78 = call i32 @il3945_hw_reg_fix_power_idx(i32 %77)
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %14, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %82 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  store i64 %80, i64* %86, align 8
  %87 = load i32**, i32*** @power_gain_table, align 8
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds i32*, i32** %87, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %96 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %95, i32 0, i32 1
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %96, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 2
  store i32 %94, i32* %100, align 8
  br label %101

101:                                              ; preds = %66
  %102 = load i64, i64* %9, align 8
  %103 = add i64 %102, 1
  store i64 %103, i64* %9, align 8
  br label %62

104:                                              ; preds = %62
  %105 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %106 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %110 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  store i32* %114, i32** %7, align 8
  store i64 0, i64* %10, align 8
  br label %115

115:                                              ; preds = %135, %104
  %116 = load i64, i64* %10, align 8
  %117 = load i64, i64* @IL_NUM_SCAN_RATES, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %138

119:                                              ; preds = %115
  %120 = load i64, i64* %10, align 8
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %119
  %123 = load i32, i32* @RATE_1M_IDX_TBL, align 4
  br label %126

124:                                              ; preds = %119
  %125 = load i32, i32* @RATE_6M_IDX_TBL, align 4
  br label %126

126:                                              ; preds = %124, %122
  %127 = phi i32 [ %123, %122 ], [ %125, %124 ]
  store i32 %127, i32* %15, align 4
  %128 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i32, i32* %15, align 4
  %131 = load i32*, i32** %7, align 8
  %132 = load %struct.il_channel_info*, %struct.il_channel_info** %4, align 8
  %133 = load i64, i64* %8, align 8
  %134 = call i32 @il3945_hw_reg_set_scan_power(%struct.il_priv* %128, i64 %129, i32 %130, i32* %131, %struct.il_channel_info* %132, i64 %133)
  br label %135

135:                                              ; preds = %126
  %136 = load i64, i64* %10, align 8
  %137 = add i64 %136, 1
  store i64 %137, i64* %10, align 8
  br label %115

138:                                              ; preds = %115
  br label %139

139:                                              ; preds = %138
  %140 = load i64, i64* %11, align 8
  %141 = add i64 %140, 1
  store i64 %141, i64* %11, align 8
  br label %35

142:                                              ; preds = %35
  %143 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %144 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %143, i32 0, i32 2
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = bitcast {}** %146 to i32 (%struct.il_priv*)**
  %148 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %147, align 8
  %149 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %150 = call i32 %148(%struct.il_priv* %149)
  store i32 %150, i32* %2, align 4
  br label %151

151:                                              ; preds = %142, %33
  %152 = load i32, i32* %2, align 4
  ret i32 %152
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @il_is_channel_a_band(%struct.il_channel_info*) #1

declare dso_local i32 @il3945_hw_reg_adjust_power_by_temp(i32, i32) #1

declare dso_local i32 @il3945_hw_reg_fix_power_idx(i32) #1

declare dso_local i32 @il3945_hw_reg_set_scan_power(%struct.il_priv*, i64, i32, i32*, %struct.il_channel_info*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
