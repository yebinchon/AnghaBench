; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash_cfg_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash_cfg_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@NETIF_MSG_DRV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Read config cmd = %d entity id %d\0A\00", align 1
@QED_NVM_CFG_GET_PF_FLAGS = common dso_local global i32 0, align 4
@QED_NVM_CFG_GET_FLAGS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Error %d reading %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32**, i32, i32)* @qed_nvm_flash_cfg_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_nvm_flash_cfg_read(%struct.qed_dev* %0, i32** %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_dev*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qed_hwfn*, align 8
  %11 = alloca %struct.qed_ptt*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %16 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %15)
  store %struct.qed_hwfn* %16, %struct.qed_hwfn** %10, align 8
  store i32 0, i32* %14, align 4
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %18 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %17)
  store %struct.qed_ptt* %18, %struct.qed_ptt** %11, align 8
  %19 = load %struct.qed_ptt*, %struct.qed_ptt** %11, align 8
  %20 = icmp ne %struct.qed_ptt* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %4
  %22 = load i32, i32* @EAGAIN, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %58

24:                                               ; preds = %4
  %25 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %26 = load i32, i32* @NETIF_MSG_DRV, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @DP_VERBOSE(%struct.qed_dev* %25, i32 %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %28)
  %30 = load i32, i32* %9, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = load i32, i32* @QED_NVM_CFG_GET_PF_FLAGS, align 4
  br label %36

34:                                               ; preds = %24
  %35 = load i32, i32* @QED_NVM_CFG_GET_FLAGS, align 4
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32 [ %33, %32 ], [ %35, %34 ]
  store i32 %37, i32* %12, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %39 = load %struct.qed_ptt*, %struct.qed_ptt** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %12, align 4
  %43 = load i32**, i32*** %7, align 8
  %44 = load i32*, i32** %43, align 8
  %45 = call i32 @qed_mcp_nvm_get_cfg(%struct.qed_hwfn* %38, %struct.qed_ptt* %39, i32 %40, i32 %41, i32 %42, i32* %44, i32* %13)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %36
  %49 = load %struct.qed_dev*, %struct.qed_dev** %6, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @DP_ERR(%struct.qed_dev* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %48, %36
  %54 = load %struct.qed_hwfn*, %struct.qed_hwfn** %10, align 8
  %55 = load %struct.qed_ptt*, %struct.qed_ptt** %11, align 8
  %56 = call i32 @qed_ptt_release(%struct.qed_hwfn* %54, %struct.qed_ptt* %55)
  %57 = load i32, i32* %14, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %53, %21
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @DP_VERBOSE(%struct.qed_dev*, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_mcp_nvm_get_cfg(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DP_ERR(%struct.qed_dev*, i8*, i32, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
