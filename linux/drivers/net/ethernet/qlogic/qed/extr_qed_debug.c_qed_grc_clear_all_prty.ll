; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_clear_all_prty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_clear_all_prty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i64* }
%struct.qed_ptt = type { i32 }
%struct.dbg_attn_reg = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MAX_BLOCK_ID = common dso_local global i64 0, align 8
@ATTN_TYPE_PARITY = common dso_local global i32 0, align 4
@DBG_MODE_HDR_EVAL_MODE = common dso_local global i32 0, align 4
@DBG_MODE_HDR_MODES_BUF_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_grc_clear_all_prty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_grc_clear_all_prty(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_ptt*, align 8
  %5 = alloca %struct.dbg_tools_data*, align 8
  %6 = alloca %struct.dbg_attn_reg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.dbg_attn_reg*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %4, align 8
  %13 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %14 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %13, i32 0, i32 0
  store %struct.dbg_tools_data* %14, %struct.dbg_tools_data** %5, align 8
  store i64 0, i64* %9, align 8
  br label %15

15:                                               ; preds = %74, %2
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @MAX_BLOCK_ID, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %77

19:                                               ; preds = %15
  %20 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %5, align 8
  %21 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %74

28:                                               ; preds = %19
  %29 = load i64, i64* %9, align 8
  %30 = trunc i64 %29 to i32
  %31 = load i32, i32* @ATTN_TYPE_PARITY, align 4
  %32 = call %struct.dbg_attn_reg* @qed_get_block_attn_regs(i32 %30, i32 %31, i64* %8)
  store %struct.dbg_attn_reg* %32, %struct.dbg_attn_reg** %6, align 8
  store i64 0, i64* %7, align 8
  br label %33

33:                                               ; preds = %70, %28
  %34 = load i64, i64* %7, align 8
  %35 = load i64, i64* %8, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %6, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %38, i64 %39
  store %struct.dbg_attn_reg* %40, %struct.dbg_attn_reg** %10, align 8
  %41 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %10, align 8
  %42 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DBG_MODE_HDR_EVAL_MODE, align 4
  %46 = call i64 @GET_FIELD(i32 %44, i32 %45)
  %47 = icmp sgt i64 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %12, align 4
  %49 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %10, align 8
  %50 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @DBG_MODE_HDR_MODES_BUF_OFFSET, align 4
  %54 = call i64 @GET_FIELD(i32 %52, i32 %53)
  store i64 %54, i64* %11, align 8
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %37
  %58 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %59 = call i64 @qed_is_mode_match(%struct.qed_hwfn* %58, i64* %11)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %69

61:                                               ; preds = %57, %37
  %62 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %63 = load %struct.qed_ptt*, %struct.qed_ptt** %4, align 8
  %64 = load %struct.dbg_attn_reg*, %struct.dbg_attn_reg** %10, align 8
  %65 = getelementptr inbounds %struct.dbg_attn_reg, %struct.dbg_attn_reg* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @DWORDS_TO_BYTES(i32 %66)
  %68 = call i32 @qed_rd(%struct.qed_hwfn* %62, %struct.qed_ptt* %63, i32 %67)
  br label %69

69:                                               ; preds = %61, %57
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %7, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %7, align 8
  br label %33

73:                                               ; preds = %33
  br label %74

74:                                               ; preds = %73, %27
  %75 = load i64, i64* %9, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %9, align 8
  br label %15

77:                                               ; preds = %15
  ret void
}

declare dso_local %struct.dbg_attn_reg* @qed_get_block_attn_regs(i32, i32, i64*) #1

declare dso_local i64 @GET_FIELD(i32, i32) #1

declare dso_local i64 @qed_is_mode_match(%struct.qed_hwfn*, i64*) #1

declare dso_local i32 @qed_rd(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @DWORDS_TO_BYTES(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
