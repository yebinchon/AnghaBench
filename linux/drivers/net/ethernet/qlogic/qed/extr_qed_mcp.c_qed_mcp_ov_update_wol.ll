; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_ov_update_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_mcp.c_qed_mcp_ov_update_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.qed_ptt = type { i32 }

@QED_WOL_SUPPORT_NONE = common dso_local global i64 0, align 8
@QED_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"Can't change WoL configuration when WoL isn't supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@DRV_MB_PARAM_WOL_DEFAULT = common dso_local global i32 0, align 4
@DRV_MB_PARAM_WOL_DISABLED = common dso_local global i32 0, align 4
@DRV_MB_PARAM_WOL_ENABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Invalid wol state %d\0A\00", align 1
@DRV_MSG_CODE_OV_UPDATE_WOL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Failed to send wol mode, rc = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_mcp_ov_update_wol(%struct.qed_hwfn* %0, %struct.qed_ptt* %1, i32 %2) #0 {
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
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %13 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @QED_WOL_SUPPORT_NONE, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %20 = load i32, i32* @QED_MSG_SP, align 4
  %21 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %19, i32 %20, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  switch i32 %25, label %32 [
    i32 130, label %26
    i32 129, label %28
    i32 128, label %30
  ]

26:                                               ; preds = %24
  %27 = load i32, i32* @DRV_MB_PARAM_WOL_DEFAULT, align 4
  store i32 %27, i32* %10, align 4
  br label %38

28:                                               ; preds = %24
  %29 = load i32, i32* @DRV_MB_PARAM_WOL_DISABLED, align 4
  store i32 %29, i32* %10, align 4
  br label %38

30:                                               ; preds = %24
  %31 = load i32, i32* @DRV_MB_PARAM_WOL_ENABLED, align 4
  store i32 %31, i32* %10, align 4
  br label %38

32:                                               ; preds = %24
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @DP_ERR(%struct.qed_hwfn* %33, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %58

38:                                               ; preds = %30, %28, %26
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %40 = load %struct.qed_ptt*, %struct.qed_ptt** %6, align 8
  %41 = load i32, i32* @DRV_MSG_CODE_OV_UPDATE_WOL, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @qed_mcp_cmd(%struct.qed_hwfn* %39, %struct.qed_ptt* %40, i32 %41, i32 %42, i32* %8, i32* %9)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %38
  %47 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @DP_ERR(%struct.qed_hwfn* %47, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %38
  %51 = load i32, i32* %7, align 4
  %52 = zext i32 %51 to i64
  %53 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %54 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  %57 = load i32, i32* %11, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %32, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*) #1

declare dso_local i32 @DP_ERR(%struct.qed_hwfn*, i8*, i32) #1

declare dso_local i32 @qed_mcp_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
