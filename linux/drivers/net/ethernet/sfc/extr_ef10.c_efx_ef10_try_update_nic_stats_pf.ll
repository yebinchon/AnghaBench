; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_try_update_nic_stats_pf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_try_update_nic_stats_pf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.TYPE_2__, %struct.efx_ef10_nic_data* }
%struct.TYPE_2__ = type { i64* }
%struct.efx_ef10_nic_data = type { i64* }

@mask = common dso_local global i32 0, align 4
@EF10_STAT_COUNT = common dso_local global i32 0, align 4
@EFX_MC_STATS_GENERATION_INVALID = common dso_local global i64 0, align 8
@efx_ef10_stat_desc = common dso_local global i32 0, align 4
@MC_CMD_MAC_GENERATION_START = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@EF10_STAT_port_rx_nodesc_drops = common dso_local global i64 0, align 8
@EF10_STAT_port_rx_bytes = common dso_local global i64 0, align 8
@EF10_STAT_port_rx_bytes_minus_good_bytes = common dso_local global i64 0, align 8
@EF10_STAT_port_rx_good_bytes = common dso_local global i64 0, align 8
@EF10_STAT_port_rx_bad_bytes = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_ef10_try_update_nic_stats_pf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_try_update_nic_stats_pf(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_ef10_nic_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 2
  %11 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %10, align 8
  store %struct.efx_ef10_nic_data* %11, %struct.efx_ef10_nic_data** %4, align 8
  %12 = load i32, i32* @mask, align 4
  %13 = load i32, i32* @EF10_STAT_COUNT, align 4
  %14 = call i32 @DECLARE_BITMAP(i32 %12, i32 %13)
  %15 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %4, align 8
  %16 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  store i64* %17, i64** %7, align 8
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = load i32, i32* @mask, align 4
  %20 = call i32 @efx_ef10_get_stat_mask(%struct.efx_nic* %18, i32 %19)
  %21 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  store i64* %24, i64** %8, align 8
  %25 = load i64*, i64** %8, align 8
  %26 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %27 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %25, i64 %30
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %6, align 8
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* @EFX_MC_STATS_GENERATION_INVALID, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

37:                                               ; preds = %1
  %38 = call i32 (...) @rmb()
  %39 = load i32, i32* @efx_ef10_stat_desc, align 4
  %40 = load i32, i32* @EF10_STAT_COUNT, align 4
  %41 = load i32, i32* @mask, align 4
  %42 = load i64*, i64** %7, align 8
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @efx_nic_update_stats(i32 %39, i32 %40, i32 %41, i64* %42, i64* %46, i32 0)
  %48 = call i32 (...) @rmb()
  %49 = load i64*, i64** %8, align 8
  %50 = load i64, i64* @MC_CMD_MAC_GENERATION_START, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* %5, align 8
  %53 = load i64, i64* %6, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %37
  %57 = load i32, i32* @EAGAIN, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  br label %88

59:                                               ; preds = %37
  %60 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %61 = load i64*, i64** %7, align 8
  %62 = load i64, i64* @EF10_STAT_port_rx_nodesc_drops, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  %64 = call i32 @efx_nic_fix_nodesc_drop_stat(%struct.efx_nic* %60, i64* %63)
  %65 = load i64*, i64** %7, align 8
  %66 = load i64, i64* @EF10_STAT_port_rx_bytes, align 8
  %67 = getelementptr inbounds i64, i64* %65, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %7, align 8
  %70 = load i64, i64* @EF10_STAT_port_rx_bytes_minus_good_bytes, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %68, %72
  %74 = load i64*, i64** %7, align 8
  %75 = load i64, i64* @EF10_STAT_port_rx_good_bytes, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  store i64 %73, i64* %76, align 8
  %77 = load i64*, i64** %7, align 8
  %78 = load i64, i64* @EF10_STAT_port_rx_bad_bytes, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64*, i64** %7, align 8
  %81 = load i64, i64* @EF10_STAT_port_rx_bytes_minus_good_bytes, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @efx_update_diff_stat(i64* %79, i64 %83)
  %85 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %86 = load i64*, i64** %7, align 8
  %87 = call i32 @efx_update_sw_stats(%struct.efx_nic* %85, i64* %86)
  store i32 0, i32* %2, align 4
  br label %88

88:                                               ; preds = %59, %56, %36
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @DECLARE_BITMAP(i32, i32) #1

declare dso_local i32 @efx_ef10_get_stat_mask(%struct.efx_nic*, i32) #1

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
