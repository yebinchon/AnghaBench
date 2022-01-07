; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_res_unlock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_res_unlock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.qed_ptt = type { i32 }
%struct.qed_resc_unlock_params = type { i32 }

@QED_RESC_LOCK_RESC_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PF doesn't have lock ownership\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Failed to release the ptp resource lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_ptp_res_unlock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ptp_res_unlock(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_resc_unlock_params, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = call i32 @qed_ptcdev_to_resc(%struct.qed_hwfn* %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @QED_RESC_LOCK_RESC_INVALID, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %53

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @qed_mcp_resc_lock_default_init(i32* null, %struct.qed_resc_unlock_params* %6, i32 %18, i32 1)
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %22 = call i32 @qed_mcp_resc_unlock(%struct.qed_hwfn* %20, %struct.qed_ptt* %21, %struct.qed_resc_unlock_params* %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %17
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %32 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %27
  store i32 0, i32* %8, align 4
  br label %43

38:                                               ; preds = %27
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %40 = call i32 @DP_INFO(%struct.qed_hwfn* %39, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %53

43:                                               ; preds = %37
  br label %51

44:                                               ; preds = %17
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %49 = call i32 @DP_INFO(%struct.qed_hwfn* %48, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %44
  br label %51

51:                                               ; preds = %50, %43
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %51, %38, %14
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i32 @qed_ptcdev_to_resc(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_resc_lock_default_init(i32*, %struct.qed_resc_unlock_params*, i32, i32) #1

declare dso_local i32 @qed_mcp_resc_unlock(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_resc_unlock_params*) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
