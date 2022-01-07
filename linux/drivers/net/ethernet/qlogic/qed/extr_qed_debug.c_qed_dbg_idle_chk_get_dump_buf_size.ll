; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_idle_chk_get_dump_buf_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_dbg_idle_chk_get_dump_buf_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { %struct.idle_chk_data }
%struct.idle_chk_data = type { i32, i32 }
%struct.qed_ptt = type { i32 }

@DBG_STATUS_OK = common dso_local global i32 0, align 4
@s_dbg_arrays = common dso_local global %struct.TYPE_2__* null, align 8
@BIN_BUF_DBG_MODE_TREE = common dso_local global i64 0, align 8
@BIN_BUF_DBG_IDLE_CHK_REGS = common dso_local global i64 0, align 8
@BIN_BUF_DBG_IDLE_CHK_IMMS = common dso_local global i64 0, align 8
@BIN_BUF_DBG_IDLE_CHK_RULES = common dso_local global i64 0, align 8
@DBG_STATUS_DBG_ARRAY_NOT_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_dbg_idle_chk_get_dump_buf_size(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dbg_tools_data*, align 8
  %9 = alloca %struct.idle_chk_data*, align 8
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  store %struct.dbg_tools_data* %12, %struct.dbg_tools_data** %8, align 8
  %13 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %8, align 8
  %14 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %13, i32 0, i32 0
  store %struct.idle_chk_data* %14, %struct.idle_chk_data** %9, align 8
  %15 = load i32*, i32** %7, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %17 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %18 = call i32 @qed_dbg_dev_init(%struct.qed_hwfn* %16, %struct.qed_ptt* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = load i32, i32* @DBG_STATUS_OK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %73

24:                                               ; preds = %3
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %26 = load i64, i64* @BIN_BUF_DBG_MODE_TREE, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %52

31:                                               ; preds = %24
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %33 = load i64, i64* @BIN_BUF_DBG_IDLE_CHK_REGS, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 %33
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %40 = load i64, i64* @BIN_BUF_DBG_IDLE_CHK_IMMS, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %38
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_dbg_arrays, align 8
  %47 = load i64, i64* @BIN_BUF_DBG_IDLE_CHK_RULES, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %45, %38, %31, %24
  %53 = load i32, i32* @DBG_STATUS_DBG_ARRAY_NOT_SET, align 4
  store i32 %53, i32* %4, align 4
  br label %73

54:                                               ; preds = %45
  %55 = load %struct.idle_chk_data*, %struct.idle_chk_data** %9, align 8
  %56 = getelementptr inbounds %struct.idle_chk_data, %struct.idle_chk_data* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %67, label %59

59:                                               ; preds = %54
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %61 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %62 = call i32 @qed_idle_chk_dump(%struct.qed_hwfn* %60, %struct.qed_ptt* %61, i32* null, i32 0)
  %63 = load %struct.idle_chk_data*, %struct.idle_chk_data** %9, align 8
  %64 = getelementptr inbounds %struct.idle_chk_data, %struct.idle_chk_data* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.idle_chk_data*, %struct.idle_chk_data** %9, align 8
  %66 = getelementptr inbounds %struct.idle_chk_data, %struct.idle_chk_data* %65, i32 0, i32 0
  store i32 1, i32* %66, align 4
  br label %67

67:                                               ; preds = %59, %54
  %68 = load %struct.idle_chk_data*, %struct.idle_chk_data** %9, align 8
  %69 = getelementptr inbounds %struct.idle_chk_data, %struct.idle_chk_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %7, align 8
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @DBG_STATUS_OK, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %67, %52, %22
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @qed_dbg_dev_init(%struct.qed_hwfn*, %struct.qed_ptt*) #1

declare dso_local i32 @qed_idle_chk_dump(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
