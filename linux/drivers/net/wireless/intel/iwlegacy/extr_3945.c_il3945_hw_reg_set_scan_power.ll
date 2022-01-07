; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_reg_set_scan_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_3945.c_il3945_hw_reg_set_scan_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.il_priv = type { i32 }
%struct.il_channel_info = type { i32, %struct.TYPE_4__*, %struct.il3945_scan_power_info* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.il3945_scan_power_info = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@RATE_6M_IDX_TBL = common dso_local global i64 0, align 8
@power_gain_table = common dso_local global %struct.TYPE_6__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i64, i64, i32*, %struct.il_channel_info*, i32)* @il3945_hw_reg_set_scan_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il3945_hw_reg_set_scan_power(%struct.il_priv* %0, i64 %1, i64 %2, i32* %3, %struct.il_channel_info* %4, i32 %5) #0 {
  %7 = alloca %struct.il_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.il_channel_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.il3945_scan_power_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.il_priv* %0, %struct.il_priv** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.il_channel_info* %4, %struct.il_channel_info** %11, align 8
  store i32 %5, i32* %12, align 4
  %16 = load %struct.il_channel_info*, %struct.il_channel_info** %11, align 8
  %17 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %16, i32 0, i32 2
  %18 = load %struct.il3945_scan_power_info*, %struct.il3945_scan_power_info** %17, align 8
  %19 = load i64, i64* %8, align 8
  %20 = getelementptr inbounds %struct.il3945_scan_power_info, %struct.il3945_scan_power_info* %18, i64 %19
  store %struct.il3945_scan_power_info* %20, %struct.il3945_scan_power_info** %13, align 8
  %21 = load %struct.il_channel_info*, %struct.il_channel_info** %11, align 8
  %22 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32*, i32** %10, align 8
  %25 = load i64, i64* @RATE_6M_IDX_TBL, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @min(i32 %23, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %14, align 4
  %30 = load %struct.il_priv*, %struct.il_priv** %7, align 8
  %31 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @min(i32 %29, i32 %32)
  store i32 %33, i32* %14, align 4
  %34 = load i32, i32* %14, align 4
  %35 = load %struct.il3945_scan_power_info*, %struct.il3945_scan_power_info** %13, align 8
  %36 = getelementptr inbounds %struct.il3945_scan_power_info, %struct.il3945_scan_power_info* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.il_channel_info*, %struct.il_channel_info** %11, align 8
  %38 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i64, i64* %9, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i32, i32* %14, align 4
  %45 = load %struct.il_channel_info*, %struct.il_channel_info** %11, align 8
  %46 = getelementptr inbounds %struct.il_channel_info, %struct.il_channel_info* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = load i64, i64* @RATE_6M_IDX_TBL, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %44, %51
  %53 = mul nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = sub i64 %43, %54
  store i64 %55, i64* %15, align 8
  %56 = load i64, i64* %15, align 8
  %57 = call i64 @il3945_hw_reg_fix_power_idx(i64 %56)
  store i64 %57, i64* %15, align 8
  %58 = load i64, i64* %15, align 8
  %59 = load %struct.il3945_scan_power_info*, %struct.il3945_scan_power_info** %13, align 8
  %60 = getelementptr inbounds %struct.il3945_scan_power_info, %struct.il3945_scan_power_info* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @power_gain_table, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %61, i64 %63
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = load i64, i64* %15, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.il3945_scan_power_info*, %struct.il3945_scan_power_info** %13, align 8
  %71 = getelementptr inbounds %struct.il3945_scan_power_info, %struct.il3945_scan_power_info* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 1
  store i32 %69, i32* %72, align 4
  %73 = load %struct.TYPE_6__**, %struct.TYPE_6__*** @power_gain_table, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %73, i64 %75
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = load i64, i64* %15, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.il3945_scan_power_info*, %struct.il3945_scan_power_info** %13, align 8
  %83 = getelementptr inbounds %struct.il3945_scan_power_info, %struct.il3945_scan_power_info* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  ret void
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @il3945_hw_reg_fix_power_idx(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
