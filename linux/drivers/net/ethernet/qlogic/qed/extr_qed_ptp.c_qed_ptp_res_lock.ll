; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_res_lock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_ptp.c_qed_ptp_res_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.qed_ptt = type { i32 }
%struct.qed_resc_lock_params = type { i32 }

@QED_RESC_LOCK_RESC_INVALID = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"PF doesn't have lock ownership\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to acquire ptp resource lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*, %struct.qed_ptt*)* @qed_ptp_res_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_ptp_res_lock(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_resc_lock_params, align 4
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
  br label %69

17:                                               ; preds = %2
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @qed_mcp_resc_lock_default_init(%struct.qed_resc_lock_params* %6, i32* null, i32 %18, i32 1)
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %21 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %22 = call i32 @qed_mcp_resc_lock(%struct.qed_hwfn* %20, %struct.qed_ptt* %21, %struct.qed_resc_lock_params* %6)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp ne i32 %26, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %3, align 4
  br label %69

32:                                               ; preds = %25, %17
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  %36 = icmp eq i32 %33, %35
  br i1 %36, label %37, label %53

37:                                               ; preds = %32
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %42 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %40, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %69

48:                                               ; preds = %37
  %49 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %50 = call i32 @DP_INFO(%struct.qed_hwfn* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* @EBUSY, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %69

53:                                               ; preds = %32
  %54 = load i32, i32* %8, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %65, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.qed_resc_lock_params, %struct.qed_resc_lock_params* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %56
  %61 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %62 = call i32 @DP_INFO(%struct.qed_hwfn* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EBUSY, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  br label %69

65:                                               ; preds = %56, %53
  br label %66

66:                                               ; preds = %65
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %67, %60, %48, %47, %30, %14
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @qed_ptcdev_to_resc(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_mcp_resc_lock_default_init(%struct.qed_resc_lock_params*, i32*, i32, i32) #1

declare dso_local i32 @qed_mcp_resc_lock(%struct.qed_hwfn*, %struct.qed_ptt*, %struct.qed_resc_lock_params*) #1

declare dso_local i32 @DP_INFO(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
