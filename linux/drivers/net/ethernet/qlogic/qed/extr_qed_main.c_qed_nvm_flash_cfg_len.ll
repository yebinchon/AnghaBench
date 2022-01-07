; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash_cfg_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_nvm_flash_cfg_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@QED_MAX_NVM_BUF_LEN = common dso_local global i32 0, align 4
@QED_NVM_CFG_GET_FLAGS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Error %d reading %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32)* @qed_nvm_flash_cfg_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_nvm_flash_cfg_len(%struct.qed_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qed_ptt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %14 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %13)
  store %struct.qed_hwfn* %14, %struct.qed_hwfn** %6, align 8
  %15 = load i32, i32* @QED_MAX_NVM_BUF_LEN, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %7, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %8, align 8
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %20 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %19)
  store %struct.qed_ptt* %20, %struct.qed_ptt** %9, align 8
  %21 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %22 = icmp ne %struct.qed_ptt* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @QED_MAX_NVM_BUF_LEN, align 4
  store i32 %24, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %47

25:                                               ; preds = %2
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @QED_NVM_CFG_GET_FLAGS, align 4
  %30 = call i32 @qed_mcp_nvm_get_cfg(%struct.qed_hwfn* %26, %struct.qed_ptt* %27, i32 %28, i32 0, i32 %29, i32* %18, i32* %10)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33, %25
  %37 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @DP_ERR(%struct.qed_dev* %37, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  %41 = load i32, i32* @QED_MAX_NVM_BUF_LEN, align 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %36, %33
  %43 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %44 = load %struct.qed_ptt*, %struct.qed_ptt** %9, align 8
  %45 = call i32 @qed_ptt_release(%struct.qed_hwfn* %43, %struct.qed_ptt* %44)
  %46 = load i32, i32* %10, align 4
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %47

47:                                               ; preds = %42, %23
  %48 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %48)
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_nvm_get_cfg(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @DP_ERR(%struct.qed_dev*, i8*, i32, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
