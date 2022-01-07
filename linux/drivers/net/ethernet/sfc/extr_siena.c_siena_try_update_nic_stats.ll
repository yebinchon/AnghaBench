; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_try_update_nic_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_siena.c_siena_try_update_nic_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__, %struct.siena_nic_data* }
%struct.TYPE_2__ = type { i64* }
%struct.siena_nic_data = type { i64* }

@EFX_MC_STATS_GENERATION_INVALID = common dso_local global i64 0, align 8
@siena_stat_desc = common dso_local global i32 0, align 4
@SIENA_STAT_COUNT = common dso_local global i32 0, align 4
@siena_stat_mask = common dso_local global i32 0, align 4
@MC_CMD_MAC_GENERATION_START = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@SIENA_STAT_rx_nodesc_drop_cnt = common dso_local global i64 0, align 8
@SIENA_STAT_tx_good_bytes = common dso_local global i64 0, align 8
@SIENA_STAT_tx_bytes = common dso_local global i64 0, align 8
@SIENA_STAT_tx_bad_bytes = common dso_local global i64 0, align 8
@SIENA_STAT_tx_single_collision = common dso_local global i64 0, align 8
@SIENA_STAT_tx_multiple_collision = common dso_local global i64 0, align 8
@SIENA_STAT_tx_excessive_collision = common dso_local global i64 0, align 8
@SIENA_STAT_tx_late_collision = common dso_local global i64 0, align 8
@SIENA_STAT_tx_collision = common dso_local global i64 0, align 8
@SIENA_STAT_rx_good_bytes = common dso_local global i64 0, align 8
@SIENA_STAT_rx_bytes = common dso_local global i64 0, align 8
@SIENA_STAT_rx_bad_bytes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @siena_try_update_nic_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @siena_try_update_nic_stats(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.siena_nic_data*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 2
  %11 = load %struct.siena_nic_data*, %struct.siena_nic_data** %10, align 8
  store %struct.siena_nic_data* %11, %struct.siena_nic_data** %4, align 8
  %12 = load %struct.siena_nic_data*, %struct.siena_nic_data** %4, align 8
  %13 = getelementptr inbounds %struct.siena_nic_data, %struct.siena_nic_data* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  store i64* %14, i64** %5, align 8
  %15 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  store i64* %18, i64** %6, align 8
  %19 = load i64*, i64** %6, align 8
  %20 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %19, i64 %24
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @EFX_MC_STATS_GENERATION_INVALID, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %110

31:                                               ; preds = %1
  %32 = call i32 (...) @rmb()
  %33 = load i32, i32* @siena_stat_desc, align 4
  %34 = load i32, i32* @SIENA_STAT_COUNT, align 4
  %35 = load i32, i32* @siena_stat_mask, align 4
  %36 = load i64*, i64** %5, align 8
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = call i32 @efx_nic_update_stats(i32 %33, i32 %34, i32 %35, i64* %36, i64* %40, i32 0)
  %42 = call i32 (...) @rmb()
  %43 = load i64*, i64** %6, align 8
  %44 = load i64, i64* @MC_CMD_MAC_GENERATION_START, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  store i64 %46, i64* %7, align 8
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %7, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load i32, i32* @EAGAIN, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %110

53:                                               ; preds = %31
  %54 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %55 = load i64*, i64** %5, align 8
  %56 = load i64, i64* @SIENA_STAT_rx_nodesc_drop_cnt, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = call i32 @efx_nic_fix_nodesc_drop_stat(%struct.efx_nic* %54, i64* %57)
  %59 = load i64*, i64** %5, align 8
  %60 = load i64, i64* @SIENA_STAT_tx_good_bytes, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64*, i64** %5, align 8
  %63 = load i64, i64* @SIENA_STAT_tx_bytes, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = load i64*, i64** %5, align 8
  %67 = load i64, i64* @SIENA_STAT_tx_bad_bytes, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %65, %69
  %71 = call i32 @efx_update_diff_stat(i64* %61, i64 %70)
  %72 = load i64*, i64** %5, align 8
  %73 = load i64, i64* @SIENA_STAT_tx_single_collision, align 8
  %74 = getelementptr inbounds i64, i64* %72, i64 %73
  %75 = load i64, i64* %74, align 8
  %76 = load i64*, i64** %5, align 8
  %77 = load i64, i64* @SIENA_STAT_tx_multiple_collision, align 8
  %78 = getelementptr inbounds i64, i64* %76, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %75, %79
  %81 = load i64*, i64** %5, align 8
  %82 = load i64, i64* @SIENA_STAT_tx_excessive_collision, align 8
  %83 = getelementptr inbounds i64, i64* %81, i64 %82
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %80, %84
  %86 = load i64*, i64** %5, align 8
  %87 = load i64, i64* @SIENA_STAT_tx_late_collision, align 8
  %88 = getelementptr inbounds i64, i64* %86, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %85, %89
  %91 = load i64*, i64** %5, align 8
  %92 = load i64, i64* @SIENA_STAT_tx_collision, align 8
  %93 = getelementptr inbounds i64, i64* %91, i64 %92
  store i64 %90, i64* %93, align 8
  %94 = load i64*, i64** %5, align 8
  %95 = load i64, i64* @SIENA_STAT_rx_good_bytes, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64*, i64** %5, align 8
  %98 = load i64, i64* @SIENA_STAT_rx_bytes, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load i64*, i64** %5, align 8
  %102 = load i64, i64* @SIENA_STAT_rx_bad_bytes, align 8
  %103 = getelementptr inbounds i64, i64* %101, i64 %102
  %104 = load i64, i64* %103, align 8
  %105 = sub nsw i64 %100, %104
  %106 = call i32 @efx_update_diff_stat(i64* %96, i64 %105)
  %107 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %108 = load i64*, i64** %5, align 8
  %109 = call i32 @efx_update_sw_stats(%struct.efx_nic* %107, i64* %108)
  store i32 0, i32* %2, align 4
  br label %110

110:                                              ; preds = %53, %50, %30
  %111 = load i32, i32* %2, align 4
  ret i32 %111
}

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @efx_nic_update_stats(i32, i32, i32, i64*, i64*, i32) #1

declare dso_local i32 @efx_nic_fix_nodesc_drop_stat(%struct.efx_nic*, i64*) #1

declare dso_local i32 @efx_update_diff_stat(i64*, i64) #1

declare dso_local i32 @efx_update_sw_stats(%struct.efx_nic*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
