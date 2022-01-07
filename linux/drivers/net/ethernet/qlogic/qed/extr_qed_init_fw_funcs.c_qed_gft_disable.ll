; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_gft_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_init_fw_funcs.c_qed_gft_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@PRS_REG_SEARCH_GFT = common dso_local global i64 0, align 8
@PRS_REG_GFT_CAM = common dso_local global i64 0, align 8
@CAM_LINE_SIZE = common dso_local global i32 0, align 4
@PRS_REG_GFT_PROFILE_MASK_RAM = common dso_local global i64 0, align 8
@RAM_LINE_SIZE = common dso_local global i32 0, align 4
@REG_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_gft_disable(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %8 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %9 = load i64, i64* @PRS_REG_SEARCH_GFT, align 8
  %10 = call i32 @qed_wr(%struct.qed_hwfn* %7, %struct.qed_ptt* %8, i64 %9, i32 0)
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %13 = load i64, i64* @PRS_REG_GFT_CAM, align 8
  %14 = load i32, i32* @CAM_LINE_SIZE, align 4
  %15 = load i32, i32* %6, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = add nsw i64 %13, %17
  %19 = call i32 @qed_wr(%struct.qed_hwfn* %11, %struct.qed_ptt* %12, i64 %18, i32 0)
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %22 = load i64, i64* @PRS_REG_GFT_PROFILE_MASK_RAM, align 8
  %23 = load i32, i32* @RAM_LINE_SIZE, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %22, %26
  %28 = call i32 @qed_wr(%struct.qed_hwfn* %20, %struct.qed_ptt* %21, i64 %27, i32 0)
  %29 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %30 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %31 = load i64, i64* @PRS_REG_GFT_PROFILE_MASK_RAM, align 8
  %32 = load i32, i32* @RAM_LINE_SIZE, align 4
  %33 = load i32, i32* %6, align 4
  %34 = mul nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %31, %35
  %37 = load i64, i64* @REG_SIZE, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @qed_wr(%struct.qed_hwfn* %29, %struct.qed_ptt* %30, i64 %38, i32 0)
  ret void
}

declare dso_local i32 @qed_wr(%struct.qed_hwfn*, %struct.qed_ptt*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
