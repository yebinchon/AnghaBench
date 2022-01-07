; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_setup_deferred_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_main.c_iwl_setup_deferred_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@DRV_NAME = common dso_local global i32 0, align 4
@iwl_bg_restart = common dso_local global i32 0, align 4
@iwl_bg_beacon_update = common dso_local global i32 0, align 4
@iwl_bg_run_time_calib_work = common dso_local global i32 0, align 4
@iwl_bg_tx_flush = common dso_local global i32 0, align 4
@iwl_bg_bt_full_concurrency = common dso_local global i32 0, align 4
@iwl_bg_bt_runtime_config = common dso_local global i32 0, align 4
@iwl_bg_statistics_periodic = common dso_local global i32 0, align 4
@iwl_bg_ucode_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_priv*)* @iwl_setup_deferred_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_setup_deferred_work(%struct.iwl_priv* %0) #0 {
  %2 = alloca %struct.iwl_priv*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %2, align 8
  %3 = load i32, i32* @DRV_NAME, align 4
  %4 = call i32 @alloc_ordered_workqueue(i32 %3, i32 0)
  %5 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %6 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %5, i32 0, i32 9
  store i32 %4, i32* %6, align 8
  %7 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %8 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %7, i32 0, i32 8
  %9 = load i32, i32* @iwl_bg_restart, align 4
  %10 = call i32 @INIT_WORK(i32* %8, i32 %9)
  %11 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %12 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %11, i32 0, i32 7
  %13 = load i32, i32* @iwl_bg_beacon_update, align 4
  %14 = call i32 @INIT_WORK(i32* %12, i32 %13)
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 6
  %17 = load i32, i32* @iwl_bg_run_time_calib_work, align 4
  %18 = call i32 @INIT_WORK(i32* %16, i32 %17)
  %19 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %20 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %19, i32 0, i32 5
  %21 = load i32, i32* @iwl_bg_tx_flush, align 4
  %22 = call i32 @INIT_WORK(i32* %20, i32 %21)
  %23 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %24 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %23, i32 0, i32 4
  %25 = load i32, i32* @iwl_bg_bt_full_concurrency, align 4
  %26 = call i32 @INIT_WORK(i32* %24, i32 %25)
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %28 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %27, i32 0, i32 3
  %29 = load i32, i32* @iwl_bg_bt_runtime_config, align 4
  %30 = call i32 @INIT_WORK(i32* %28, i32 %29)
  %31 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %32 = call i32 @iwl_setup_scan_deferred_work(%struct.iwl_priv* %31)
  %33 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %34 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %1
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %41 = call i32 @iwlagn_bt_setup_deferred_work(%struct.iwl_priv* %40)
  br label %42

42:                                               ; preds = %39, %1
  %43 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %44 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %43, i32 0, i32 1
  %45 = load i32, i32* @iwl_bg_statistics_periodic, align 4
  %46 = call i32 @timer_setup(i32* %44, i32 %45, i32 0)
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %2, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 0
  %49 = load i32, i32* @iwl_bg_ucode_trace, align 4
  %50 = call i32 @timer_setup(i32* %48, i32 %49, i32 0)
  ret void
}

declare dso_local i32 @alloc_ordered_workqueue(i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @iwl_setup_scan_deferred_work(%struct.iwl_priv*) #1

declare dso_local i32 @iwlagn_bt_setup_deferred_work(%struct.iwl_priv*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
