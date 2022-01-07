; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_read_fw_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_read_fw_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.storm_defs = type { i64 }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64* }
%struct.qed_ptt = type { i32 }
%struct.fw_info = type { i32 }

@MAX_DBG_STORMS = common dso_local global i64 0, align 8
@s_storm_defs = common dso_local global %struct.storm_defs* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_read_fw_info(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, %struct.fw_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca %struct.fw_info*, align 8
  %8 = alloca %struct.dbg_tools_data*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.storm_defs*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store %struct.fw_info* %2, %struct.fw_info** %7, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  store %struct.dbg_tools_data* %12, %struct.dbg_tools_data** %8, align 8
  store i64 0, i64* %9, align 8
  br label %13

13:                                               ; preds = %37, %3
  %14 = load i64, i64* %9, align 8
  %15 = load i64, i64* @MAX_DBG_STORMS, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %40

17:                                               ; preds = %13
  %18 = load %struct.storm_defs*, %struct.storm_defs** @s_storm_defs, align 8
  %19 = load i64, i64* %9, align 8
  %20 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %18, i64 %19
  store %struct.storm_defs* %20, %struct.storm_defs** %10, align 8
  %21 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %22 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.storm_defs*, %struct.storm_defs** %10, align 8
  %25 = getelementptr inbounds %struct.storm_defs, %struct.storm_defs* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %37

31:                                               ; preds = %17
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %33 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.fw_info*, %struct.fw_info** %7, align 8
  %36 = call i32 @qed_read_storm_fw_info(%struct.qed_hwfn* %32, %struct.qed_ptt* %33, i64 %34, %struct.fw_info* %35)
  store i32 1, i32* %4, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load i64, i64* %9, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %9, align 8
  br label %13

40:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %41

41:                                               ; preds = %40, %31
  %42 = load i32, i32* %4, align 4
  ret i32 %42
}

declare dso_local i32 @qed_read_storm_fw_info(%struct.qed_hwfn*, %struct.qed_ptt*, i64, %struct.fw_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
