; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_ov_update_eswitch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_ov_update_eswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_ptt = type { i32 }

@DRV_MB_PARAM_ESWITCH_MODE_NONE = common dso_local global i32 0, align 4
@DRV_MB_PARAM_ESWITCH_MODE_VEB = common dso_local global i32 0, align 4
@DRV_MB_PARAM_ESWITCH_MODE_VEPA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Invalid eswitch mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRV_MSG_CODE_OV_UPDATE_ESWITCH_MODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to send eswitch mode, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_ov_update_eswitch(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_hwfn*, align 8
  %6 = alloca %struct.qed_ptt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %5, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %19 [
    i32 130, label %13
    i32 129, label %15
    i32 128, label %17
  ]

13:                                               ; preds = %3
  %14 = load i32, i32* @DRV_MB_PARAM_ESWITCH_MODE_NONE, align 4
  store i32 %14, i32* %10, align 4
  br label %25

15:                                               ; preds = %3
  %16 = load i32, i32* @DRV_MB_PARAM_ESWITCH_MODE_VEB, align 4
  store i32 %16, i32* %10, align 4
  br label %25

17:                                               ; preds = %3
  %18 = load i32, i32* @DRV_MB_PARAM_ESWITCH_MODE_VEPA, align 4
  store i32 %18, i32* %10, align 4
  br label %25

19:                                               ; preds = %3
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 @DP_ERR(%struct.qed_hwfn* %20, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %39

25:                                               ; preds = %17, %15, %13
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %27 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %28 = load i32, i32* @DRV_MSG_CODE_OV_UPDATE_ESWITCH_MODE, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %26, %struct.qed_ptt* %27, i32 %28, i32 %29, i32* %8, i32* %9)
  store i32 %30, i32* %11, align 4
  %31 = load i32, i32* %11, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %25
  %34 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @DP_ERR(%struct.qed_hwfn* %34, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %33, %25
  %38 = load i32, i32* %11, align 4
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %37, %19
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
