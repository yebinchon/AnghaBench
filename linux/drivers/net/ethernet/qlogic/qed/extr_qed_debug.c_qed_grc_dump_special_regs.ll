; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_special_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_debug.c_qed_grc_dump_special_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@SPLIT_TYPE_NONE = common dso_local global i32 0, align 4
@RDIF_REG_DEBUG_ERROR_INFO = common dso_local global i32 0, align 4
@RDIF_REG_DEBUG_ERROR_INFO_SIZE = common dso_local global i32 0, align 4
@TDIF_REG_DEBUG_ERROR_INFO = common dso_local global i32 0, align 4
@TDIF_REG_DEBUG_ERROR_INFO_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32)* @qed_grc_dump_special_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_grc_dump_special_regs(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @SPLIT_TYPE_NONE, align 4
  %14 = call i32 @qed_grc_dump_regs_hdr(i32* %11, i32 %12, i32 2, i32 %13, i32 0, i32* null, i32* null)
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %15, %14
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* @RDIF_REG_DEBUG_ERROR_INFO, align 4
  %18 = call i32 @BYTES_TO_DWORDS(i32 %17)
  store i32 %18, i32* %10, align 4
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %20 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %21 = load i32*, i32** %7, align 8
  %22 = load i32, i32* %9, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @RDIF_REG_DEBUG_ERROR_INFO_SIZE, align 4
  %28 = call i32 @qed_grc_dump_reg_entry_skip(%struct.qed_hwfn* %19, %struct.qed_ptt* %20, i32* %24, i32 %25, i32 %26, i32 %27, i32 7, i32 1)
  %29 = load i32, i32* %9, align 4
  %30 = add nsw i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* @TDIF_REG_DEBUG_ERROR_INFO, align 4
  %32 = call i32 @BYTES_TO_DWORDS(i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %35 = load i32*, i32** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @TDIF_REG_DEBUG_ERROR_INFO_SIZE, align 4
  %42 = call i32 @qed_grc_dump_reg_entry_skip(%struct.qed_hwfn* %33, %struct.qed_ptt* %34, i32* %38, i32 %39, i32 %40, i32 %41, i32 7, i32 1)
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, %42
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  ret i32 %45
}

declare dso_local i32 @qed_grc_dump_regs_hdr(i32*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @BYTES_TO_DWORDS(i32) #1

declare dso_local i32 @qed_grc_dump_reg_entry_skip(%struct.qed_hwfn*, %struct.qed_ptt*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
