; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_reset_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_reset_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32* }
%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64 }
%struct.qed_ptt = type { i32 }

@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@MAX_DBG_RESET_REGS = common dso_local global i64 0, align 8
@s_reset_regs_defs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i32)* @qed_grc_dump_reset_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @qed_grc_dump_reset_regs(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dbg_tools_data*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  store %struct.dbg_tools_data* %14, %struct.dbg_tools_data** %9, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %17 = call i64 @qed_grc_dump_regs_hdr(i64* %15, i32 0, i64 0, i32 %16, i32 0, i32* null, i32* null)
  %18 = load i64, i64* %11, align 8
  %19 = add i64 %18, %17
  store i64 %19, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %20

20:                                               ; preds = %56, %4
  %21 = load i64, i64* %10, align 8
  %22 = load i64, i64* @MAX_DBG_RESET_REGS, align 8
  %23 = icmp ult i64 %21, %22
  br i1 %23, label %24, label %59

24:                                               ; preds = %20
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_reset_regs_defs, align 8
  %26 = load i64, i64* %10, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %9, align 8
  %31 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %24
  br label %56

37:                                               ; preds = %24
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %39 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %40 = load i64*, i64** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s_reset_regs_defs, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @BYTES_TO_DWORDS(i32 %48)
  %50 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %51 = call i64 @qed_grc_dump_reg_entry(%struct.qed_hwfn* %38, %struct.qed_ptt* %39, i64* %42, i32 %43, i32 %49, i32 1, i32 0, i32 %50, i32 0)
  %52 = load i64, i64* %11, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %11, align 8
  %54 = load i64, i64* %12, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %12, align 8
  br label %56

56:                                               ; preds = %37, %36
  %57 = load i64, i64* %10, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %10, align 8
  br label %20

59:                                               ; preds = %20
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %59
  %63 = load i64*, i64** %7, align 8
  %64 = load i64, i64* %12, align 8
  %65 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %66 = call i64 @qed_grc_dump_regs_hdr(i64* %63, i32 1, i64 %64, i32 %65, i32 0, i32* null, i32* null)
  br label %67

67:                                               ; preds = %62, %59
  %68 = load i64, i64* %11, align 8
  ret i64 %68
}

declare dso_local i64 @qed_grc_dump_regs_hdr(i64*, i32, i64, i32, i32, i32*, i32*) #1

declare dso_local i64 @qed_grc_dump_reg_entry(%struct.qed_hwfn*, %struct.qed_ptt*, i64*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
