; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_recalc_tcm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_utils.c_iwl_mvm_recalc_tcm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32, i64, i64 }

@jiffies = common dso_local global i64 0, align 8
@IWL_MVM_UAPSD_NONAGG_PERIOD = common dso_local global i32 0, align 4
@MVM_TCM_PERIOD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iwl_mvm_recalc_tcm(%struct.iwl_mvm* %0) #0 {
  %2 = alloca %struct.iwl_mvm*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %2, align 8
  %6 = load i64, i64* @jiffies, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %9 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 4
  %11 = load i64, i64* %10, align 8
  %12 = load i32, i32* @IWL_MVM_UAPSD_NONAGG_PERIOD, align 4
  %13 = call i64 @msecs_to_jiffies(i32 %12)
  %14 = add nsw i64 %11, %13
  %15 = call i32 @time_after(i64 %7, i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %17 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %21 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %35, label %25

25:                                               ; preds = %1
  %26 = load i64, i64* %3, align 8
  %27 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %28 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MVM_TCM_PERIOD, align 8
  %32 = add i64 %30, %31
  %33 = call i32 @time_after(i64 %26, i64 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %40, label %35

35:                                               ; preds = %25, %1
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %37 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = call i32 @spin_unlock(i32* %38)
  br label %109

40:                                               ; preds = %25
  %41 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %42 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  %44 = call i32 @spin_unlock(i32* %43)
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %40
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %49 = call i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %47
  %52 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %53 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %52, i32 0, i32 1
  %54 = call i32 @mutex_lock(i32* %53)
  %55 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %56 = call i64 @iwl_mvm_request_statistics(%struct.iwl_mvm* %55, i32 1)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %51
  store i32 0, i32* %4, align 4
  br label %59

59:                                               ; preds = %58, %51
  %60 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %61 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %60, i32 0, i32 1
  %62 = call i32 @mutex_unlock(i32* %61)
  br label %63

63:                                               ; preds = %59, %47, %40
  %64 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %65 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %69 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %102, label %73

73:                                               ; preds = %63
  %74 = load i64, i64* %3, align 8
  %75 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %76 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MVM_TCM_PERIOD, align 8
  %80 = add i64 %78, %79
  %81 = call i32 @time_after(i64 %74, i64 %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %102

83:                                               ; preds = %73
  %84 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %85 = load i64, i64* %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i64 @iwl_mvm_calc_tcm_stats(%struct.iwl_mvm* %84, i64 %85, i32 %86)
  store i64 %87, i64* %5, align 8
  %88 = call i32 (...) @smp_mb()
  %89 = load i64, i64* %3, align 8
  %90 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %91 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load i64, i64* %5, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %83
  %96 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %97 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 2
  %99 = load i64, i64* %5, align 8
  %100 = call i32 @schedule_delayed_work(i32* %98, i64 %99)
  br label %101

101:                                              ; preds = %95, %83
  br label %102

102:                                              ; preds = %101, %73, %63
  %103 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %104 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = call i32 @spin_unlock(i32* %105)
  %107 = load %struct.iwl_mvm*, %struct.iwl_mvm** %2, align 8
  %108 = call i32 @iwl_mvm_tcm_results(%struct.iwl_mvm* %107)
  br label %109

109:                                              ; preds = %102, %35
  ret void
}

declare dso_local i32 @time_after(i64, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @iwl_mvm_has_new_rx_api(%struct.iwl_mvm*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @iwl_mvm_request_statistics(%struct.iwl_mvm*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @iwl_mvm_calc_tcm_stats(%struct.iwl_mvm*, i64, i32) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i32 @iwl_mvm_tcm_results(%struct.iwl_mvm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
