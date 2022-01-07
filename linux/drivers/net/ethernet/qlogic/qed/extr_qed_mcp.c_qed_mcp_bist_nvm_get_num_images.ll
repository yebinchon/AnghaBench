; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_bist_nvm_get_num_images.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_bist_nvm_get_num_images.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DRV_MB_PARAM_BIST_NVM_TEST_NUM_IMAGES = common dso_local global i32 0, align 4
@DRV_MB_PARAM_BIST_TEST_INDEX_SHIFT = common dso_local global i32 0, align 4
@DRV_MSG_CODE_BIST_TEST = common dso_local global i32 0, align 4
@FW_MSG_CODE_MASK = common dso_local global i32 0, align 4
@FW_MSG_CODE_OK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_bist_nvm_get_num_images(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* @DRV_MB_PARAM_BIST_NVM_TEST_NUM_IMAGES, align 4
  %12 = load i32, i32* @DRV_MB_PARAM_BIST_TEST_INDEX_SHIFT, align 4
  %13 = shl i32 %11, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %15 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %16 = load i32, i32* @DRV_MSG_CODE_BIST_TEST, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32*, i32** %7, align 8
  %19 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %14, %struct.qed_ptt* %15, i32 %16, i32 %17, i32* %9, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %4, align 4
  br label %35

24:                                               ; preds = %3
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @FW_MSG_CODE_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @FW_MSG_CODE_OK, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %10, align 4
  br label %33

33:                                               ; preds = %30, %24
  %34 = load i32, i32* %10, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %33, %22
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
