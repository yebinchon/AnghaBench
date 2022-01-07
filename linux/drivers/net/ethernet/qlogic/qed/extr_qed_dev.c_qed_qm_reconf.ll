; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_qm_reconf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_qm_reconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__, i32, %struct.qed_qm_info }
%struct.TYPE_2__ = type { i32 }
%struct.qed_qm_info = type { i32, i32 }
%struct.qed_ptt = type { i32 }

@qm_lock = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PHASE_QM_PF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qed_qm_reconf(%struct.qed_hwfn* %0, %struct.qed_ptt* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qed_hwfn*, align 8
  %5 = alloca %struct.qed_ptt*, align 8
  %6 = alloca %struct.qed_qm_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %4, align 8
  store %struct.qed_ptt* %1, %struct.qed_ptt** %5, align 8
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 2
  store %struct.qed_qm_info* %10, %struct.qed_qm_info** %6, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %12 = call i32 @qed_init_qm_info(%struct.qed_hwfn* %11)
  %13 = call i32 @spin_lock_bh(i32* @qm_lock)
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %15 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %16 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %17 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %20 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @qed_send_qm_stop_cmd(%struct.qed_hwfn* %14, %struct.qed_ptt* %15, i32 0, i32 1, i32 %18, i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = call i32 @spin_unlock_bh(i32* @qm_lock)
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %68

29:                                               ; preds = %2
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %31 = call i32 @qed_init_clear_rt_data(%struct.qed_hwfn* %30)
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %33 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %34 = call i32 @qed_qm_init_pf(%struct.qed_hwfn* %32, %struct.qed_ptt* %33, i32 0)
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %36 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %37 = load i32, i32* @PHASE_QM_PF, align 4
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %42 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @qed_init_run(%struct.qed_hwfn* %35, %struct.qed_ptt* %36, i32 %37, i32 %40, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %29
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %3, align 4
  br label %68

50:                                               ; preds = %29
  %51 = call i32 @spin_lock_bh(i32* @qm_lock)
  %52 = load %struct.qed_hwfn*, %struct.qed_hwfn** %4, align 8
  %53 = load %struct.qed_ptt*, %struct.qed_ptt** %5, align 8
  %54 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %55 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.qed_qm_info*, %struct.qed_qm_info** %6, align 8
  %58 = getelementptr inbounds %struct.qed_qm_info, %struct.qed_qm_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @qed_send_qm_stop_cmd(%struct.qed_hwfn* %52, %struct.qed_ptt* %53, i32 1, i32 1, i32 %56, i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = call i32 @spin_unlock_bh(i32* @qm_lock)
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %67, label %64

64:                                               ; preds = %50
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %68

67:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %68

68:                                               ; preds = %67, %64, %48, %26
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i32 @qed_init_qm_info(%struct.qed_hwfn*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @qed_send_qm_stop_cmd(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @qed_init_clear_rt_data(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_qm_init_pf(%struct.qed_hwfn*, %struct.qed_ptt*, i32) #1

declare dso_local i32 @qed_init_run(%struct.qed_hwfn*, %struct.qed_ptt*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
