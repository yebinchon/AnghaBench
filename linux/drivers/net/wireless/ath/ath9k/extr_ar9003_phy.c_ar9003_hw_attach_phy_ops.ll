; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_attach_phy_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_ar9003_phy.c_ar9003_hw_attach_phy_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_hw = type { i32 }
%struct.ath_hw_private_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ath_hw_ops = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ar9003_hw_attach_phy_ops.ar9300_cca_regs = internal constant [6 x i32] [i32 133, i32 132, i32 131, i32 130, i32 129, i32 128], align 16
@ar9003_hw_set_channel = common dso_local global i32 0, align 4
@ar9003_hw_spur_mitigate = common dso_local global i32 0, align 4
@ar9003_hw_compute_pll_control_soc = common dso_local global i32 0, align 4
@ar9003_hw_compute_pll_control = common dso_local global i32 0, align 4
@ar9003_hw_set_channel_regs = common dso_local global i32 0, align 4
@ar9003_hw_init_bb = common dso_local global i32 0, align 4
@ar9003_hw_process_ini = common dso_local global i32 0, align 4
@ar9003_hw_set_rfmode = common dso_local global i32 0, align 4
@ar9003_hw_mark_phy_inactive = common dso_local global i32 0, align 4
@ar9003_hw_set_delta_slope = common dso_local global i32 0, align 4
@ar9003_hw_rfbus_req = common dso_local global i32 0, align 4
@ar9003_hw_rfbus_done = common dso_local global i32 0, align 4
@ar9003_hw_ani_control = common dso_local global i32 0, align 4
@ar9003_hw_do_getnf = common dso_local global i32 0, align 4
@ar9003_hw_ani_cache_ini_regs = common dso_local global i32 0, align 4
@ar9003_hw_set_radar_params = common dso_local global i32 0, align 4
@ar9003_hw_fast_chan_change = common dso_local global i32 0, align 4
@ar9003_hw_antdiv_comb_conf_get = common dso_local global i32 0, align 4
@ar9003_hw_antdiv_comb_conf_set = common dso_local global i32 0, align 4
@ar9003_hw_spectral_scan_config = common dso_local global i32 0, align 4
@ar9003_hw_spectral_scan_trigger = common dso_local global i32 0, align 4
@ar9003_hw_spectral_scan_wait = common dso_local global i32 0, align 4
@ar9003_hw_tx99_start = common dso_local global i32 0, align 4
@ar9003_hw_tx99_stop = common dso_local global i32 0, align 4
@ar9003_hw_tx99_set_txpower = common dso_local global i32 0, align 4
@ar9003_hw_set_bt_ant_diversity = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ar9003_hw_attach_phy_ops(%struct.ath_hw* %0) #0 {
  %2 = alloca %struct.ath_hw*, align 8
  %3 = alloca %struct.ath_hw_private_ops*, align 8
  %4 = alloca %struct.ath_hw_ops*, align 8
  store %struct.ath_hw* %0, %struct.ath_hw** %2, align 8
  %5 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %6 = call %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw* %5)
  store %struct.ath_hw_private_ops* %6, %struct.ath_hw_private_ops** %3, align 8
  %7 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %8 = call %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw* %7)
  store %struct.ath_hw_ops* %8, %struct.ath_hw_ops** %4, align 8
  %9 = load i32, i32* @ar9003_hw_set_channel, align 4
  %10 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %11 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %10, i32 0, i32 15
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @ar9003_hw_spur_mitigate, align 4
  %13 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %14 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %13, i32 0, i32 14
  store i32 %12, i32* %14, align 4
  %15 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %16 = call i64 @AR_SREV_9340(%struct.ath_hw* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %1
  %19 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %20 = call i64 @AR_SREV_9550(%struct.ath_hw* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %24 = call i64 @AR_SREV_9531(%struct.ath_hw* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %28 = call i64 @AR_SREV_9561(%struct.ath_hw* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %26, %22, %18, %1
  %31 = load i32, i32* @ar9003_hw_compute_pll_control_soc, align 4
  %32 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %33 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %32, i32 0, i32 13
  store i32 %31, i32* %33, align 4
  br label %38

34:                                               ; preds = %26
  %35 = load i32, i32* @ar9003_hw_compute_pll_control, align 4
  %36 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %37 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %36, i32 0, i32 13
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %30
  %39 = load i32, i32* @ar9003_hw_set_channel_regs, align 4
  %40 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %41 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %40, i32 0, i32 12
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @ar9003_hw_init_bb, align 4
  %43 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %44 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %43, i32 0, i32 11
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @ar9003_hw_process_ini, align 4
  %46 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %47 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %46, i32 0, i32 10
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @ar9003_hw_set_rfmode, align 4
  %49 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %50 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %49, i32 0, i32 9
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @ar9003_hw_mark_phy_inactive, align 4
  %52 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %53 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %52, i32 0, i32 8
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* @ar9003_hw_set_delta_slope, align 4
  %55 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %56 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %55, i32 0, i32 7
  store i32 %54, i32* %56, align 4
  %57 = load i32, i32* @ar9003_hw_rfbus_req, align 4
  %58 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %59 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %58, i32 0, i32 6
  store i32 %57, i32* %59, align 4
  %60 = load i32, i32* @ar9003_hw_rfbus_done, align 4
  %61 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %62 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %61, i32 0, i32 5
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* @ar9003_hw_ani_control, align 4
  %64 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %65 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @ar9003_hw_do_getnf, align 4
  %67 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %68 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %67, i32 0, i32 3
  store i32 %66, i32* %68, align 4
  %69 = load i32, i32* @ar9003_hw_ani_cache_ini_regs, align 4
  %70 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %71 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @ar9003_hw_set_radar_params, align 4
  %73 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %74 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @ar9003_hw_fast_chan_change, align 4
  %76 = load %struct.ath_hw_private_ops*, %struct.ath_hw_private_ops** %3, align 8
  %77 = getelementptr inbounds %struct.ath_hw_private_ops, %struct.ath_hw_private_ops* %76, i32 0, i32 0
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @ar9003_hw_antdiv_comb_conf_get, align 4
  %79 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %80 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %79, i32 0, i32 8
  store i32 %78, i32* %80, align 4
  %81 = load i32, i32* @ar9003_hw_antdiv_comb_conf_set, align 4
  %82 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %83 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %82, i32 0, i32 7
  store i32 %81, i32* %83, align 4
  %84 = load i32, i32* @ar9003_hw_spectral_scan_config, align 4
  %85 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %86 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %85, i32 0, i32 6
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @ar9003_hw_spectral_scan_trigger, align 4
  %88 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %89 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %88, i32 0, i32 5
  store i32 %87, i32* %89, align 4
  %90 = load i32, i32* @ar9003_hw_spectral_scan_wait, align 4
  %91 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %92 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %91, i32 0, i32 4
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* @ar9003_hw_tx99_start, align 4
  %94 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %95 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* @ar9003_hw_tx99_stop, align 4
  %97 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %98 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @ar9003_hw_tx99_set_txpower, align 4
  %100 = load %struct.ath_hw_ops*, %struct.ath_hw_ops** %4, align 8
  %101 = getelementptr inbounds %struct.ath_hw_ops, %struct.ath_hw_ops* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 4
  %102 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %103 = call i32 @ar9003_hw_set_nf_limits(%struct.ath_hw* %102)
  %104 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %105 = call i32 @ar9003_hw_set_radar_conf(%struct.ath_hw* %104)
  %106 = load %struct.ath_hw*, %struct.ath_hw** %2, align 8
  %107 = getelementptr inbounds %struct.ath_hw, %struct.ath_hw* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @memcpy(i32 %108, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @ar9003_hw_attach_phy_ops.ar9300_cca_regs, i64 0, i64 0), i32 4)
  ret void
}

declare dso_local %struct.ath_hw_private_ops* @ath9k_hw_private_ops(%struct.ath_hw*) #1

declare dso_local %struct.ath_hw_ops* @ath9k_hw_ops(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9340(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9550(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9531(%struct.ath_hw*) #1

declare dso_local i64 @AR_SREV_9561(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_set_nf_limits(%struct.ath_hw*) #1

declare dso_local i32 @ar9003_hw_set_radar_conf(%struct.ath_hw*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
