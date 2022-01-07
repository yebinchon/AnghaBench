; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_get_stat_mask.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_get_stat_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32, i32 }

@MC_CMD_GET_CAPABILITIES_OUT_EVB_LBN = common dso_local global i32 0, align 4
@EF10_STAT_rx_unicast = common dso_local global i64 0, align 8
@EF10_STAT_V1_COUNT = common dso_local global i32 0, align 4
@MC_CMD_MAC_NSTATS_V2 = common dso_local global i64 0, align 8
@EF10_FEC_STAT_MASK = common dso_local global i64 0, align 8
@MC_CMD_MAC_NSTATS_V3 = common dso_local global i64 0, align 8
@MC_CMD_GET_CAPABILITIES_V4_OUT_CTPIO_LBN = common dso_local global i32 0, align 4
@EF10_CTPIO_STAT_MASK = common dso_local global i64 0, align 8
@EF10_STAT_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i64*)* @efx_ef10_get_stat_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_get_stat_mask(%struct.efx_nic* %0, i64* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.efx_ef10_nic_data*, align 8
  %6 = alloca [2 x i64], align 16
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i64* %1, i64** %4, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %8, align 8
  store %struct.efx_ef10_nic_data* %9, %struct.efx_ef10_nic_data** %5, align 8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = call i64 @efx_ef10_raw_stat_mask(%struct.efx_nic* %10)
  %12 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  store i64 %11, i64* %12, align 16
  %13 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %5, align 8
  %14 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @MC_CMD_GET_CAPABILITIES_OUT_EVB_LBN, align 4
  %17 = shl i32 1, %16
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load i64, i64* @EF10_STAT_rx_unicast, align 8
  %22 = shl i64 1, %21
  %23 = sub i64 %22, 1
  %24 = xor i64 %23, -1
  %25 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %26 = load i64, i64* %25, align 16
  %27 = or i64 %26, %24
  store i64 %27, i64* %25, align 16
  %28 = load i32, i32* @EF10_STAT_V1_COUNT, align 4
  %29 = sub nsw i32 %28, 64
  %30 = zext i32 %29 to i64
  %31 = shl i64 1, %30
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 %32, i64* %33, align 8
  br label %36

34:                                               ; preds = %2
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  store i64 0, i64* %35, align 8
  br label %36

36:                                               ; preds = %34, %20
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @MC_CMD_MAC_NSTATS_V2, align 8
  %41 = icmp sge i64 %39, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i64, i64* @EF10_FEC_STAT_MASK, align 8
  %44 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %45 = load i64, i64* %44, align 8
  %46 = or i64 %45, %43
  store i64 %46, i64* %44, align 8
  br label %47

47:                                               ; preds = %42, %36
  %48 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %49 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MC_CMD_MAC_NSTATS_V3, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %47
  %54 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %5, align 8
  %55 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MC_CMD_GET_CAPABILITIES_V4_OUT_CTPIO_LBN, align 4
  %58 = shl i32 1, %57
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %53
  %62 = load i64, i64* @EF10_CTPIO_STAT_MASK, align 8
  %63 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = or i64 %64, %62
  store i64 %65, i64* %63, align 8
  br label %66

66:                                               ; preds = %61, %53, %47
  %67 = load i32, i32* @EF10_STAT_COUNT, align 4
  %68 = call i32 @BITS_TO_LONGS(i32 %67)
  %69 = icmp ne i32 %68, 3
  %70 = zext i1 %69 to i32
  %71 = call i32 @BUILD_BUG_ON(i32 %70)
  %72 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %73 = load i64, i64* %72, align 16
  %74 = and i64 %73, 4294967295
  %75 = load i64*, i64** %4, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  store i64 %74, i64* %76, align 8
  %77 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 0
  %78 = load i64, i64* %77, align 16
  %79 = lshr i64 %78, 32
  %80 = load i64*, i64** %4, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 1
  store i64 %79, i64* %81, align 8
  %82 = getelementptr inbounds [2 x i64], [2 x i64]* %6, i64 0, i64 1
  %83 = load i64, i64* %82, align 8
  %84 = and i64 %83, 4294967295
  %85 = load i64*, i64** %4, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 2
  store i64 %84, i64* %86, align 8
  ret void
}

declare dso_local i64 @efx_ef10_raw_stat_mask(%struct.efx_nic*) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
