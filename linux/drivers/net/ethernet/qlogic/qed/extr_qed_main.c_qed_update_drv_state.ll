; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_update_drv_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_main.c_qed_update_drv_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@QED_OV_DRIVER_STATE_ACTIVE = common dso_local global i32 0, align 4
@QED_OV_DRIVER_STATE_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, i32)* @qed_update_drv_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_update_drv_state(%struct.qed_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qed_hwfn*, align 8
  %7 = alloca %struct.qed_ptt*, align 8
  %8 = alloca i32, align 4
  store %struct.qed_dev* %0, %struct.qed_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %10 = call %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev* %9)
  store %struct.qed_hwfn* %10, %struct.qed_hwfn** %6, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.qed_dev*, %struct.qed_dev** %4, align 8
  %12 = call i64 @IS_VF(%struct.qed_dev* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %17 = call %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn* %16)
  store %struct.qed_ptt* %17, %struct.qed_ptt** %7, align 8
  %18 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %19 = icmp ne %struct.qed_ptt* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @EAGAIN, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %39

23:                                               ; preds = %15
  %24 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %25 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @QED_OV_DRIVER_STATE_ACTIVE, align 4
  br label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @QED_OV_DRIVER_STATE_DISABLED, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  %34 = call i32 @qed_mcp_ov_update_driver_state(%struct.qed_hwfn* %24, %struct.qed_ptt* %25, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %6, align 8
  %36 = load %struct.qed_ptt*, %struct.qed_ptt** %7, align 8
  %37 = call i32 @qed_ptt_release(%struct.qed_hwfn* %35, %struct.qed_ptt* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %32, %20, %14
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local %struct.qed_hwfn* @QED_LEADING_HWFN(%struct.qed_dev*) #1

declare dso_local i64 @IS_VF(%struct.qed_dev*) #1

declare dso_local %struct.qed_ptt* @qed_ptt_acquire(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_ov_update_driver_state(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_ptt_release(%struct.qed_hwfn*, %struct.qed_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
