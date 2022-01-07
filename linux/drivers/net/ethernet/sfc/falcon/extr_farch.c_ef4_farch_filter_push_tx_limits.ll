; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_push_tx_limits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_farch.c_ef4_farch_filter_push_tx_limits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_nic = type { %struct.ef4_farch_filter_state* }
%struct.ef4_farch_filter_state = type { %struct.ef4_farch_filter_table* }
%struct.ef4_farch_filter_table = type { i64*, i64 }

@FR_AZ_TX_CFG = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_TABLE_TX_MAC = common dso_local global i64 0, align 8
@FRF_CZ_TX_ETH_FILTER_FULL_SEARCH_RANGE = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_MAC_FULL = common dso_local global i64 0, align 8
@EF4_FARCH_FILTER_CTL_SRCH_FUDGE_FULL = common dso_local global i64 0, align 8
@FRF_CZ_TX_ETH_FILTER_WILD_SEARCH_RANGE = common dso_local global i32 0, align 4
@EF4_FARCH_FILTER_MAC_WILD = common dso_local global i64 0, align 8
@EF4_FARCH_FILTER_CTL_SRCH_FUDGE_WILD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ef4_nic*)* @ef4_farch_filter_push_tx_limits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ef4_farch_filter_push_tx_limits(%struct.ef4_nic* %0) #0 {
  %2 = alloca %struct.ef4_nic*, align 8
  %3 = alloca %struct.ef4_farch_filter_state*, align 8
  %4 = alloca %struct.ef4_farch_filter_table*, align 8
  %5 = alloca i32, align 4
  store %struct.ef4_nic* %0, %struct.ef4_nic** %2, align 8
  %6 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %7 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %6, i32 0, i32 0
  %8 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %7, align 8
  store %struct.ef4_farch_filter_state* %8, %struct.ef4_farch_filter_state** %3, align 8
  %9 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %10 = load i32, i32* @FR_AZ_TX_CFG, align 4
  %11 = call i32 @ef4_reado(%struct.ef4_nic* %9, i32* %5, i32 %10)
  %12 = load %struct.ef4_farch_filter_state*, %struct.ef4_farch_filter_state** %3, align 8
  %13 = getelementptr inbounds %struct.ef4_farch_filter_state, %struct.ef4_farch_filter_state* %12, i32 0, i32 0
  %14 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %13, align 8
  %15 = load i64, i64* @EF4_FARCH_FILTER_TABLE_TX_MAC, align 8
  %16 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %14, i64 %15
  store %struct.ef4_farch_filter_table* %16, %struct.ef4_farch_filter_table** %4, align 8
  %17 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %18 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %1
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @FRF_CZ_TX_ETH_FILTER_FULL_SEARCH_RANGE, align 4
  %24 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %25 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @EF4_FARCH_FILTER_MAC_FULL, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @EF4_FARCH_FILTER_CTL_SRCH_FUDGE_FULL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @EF4_SET_OWORD_FIELD(i32 %22, i32 %23, i64 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @FRF_CZ_TX_ETH_FILTER_WILD_SEARCH_RANGE, align 4
  %35 = load %struct.ef4_farch_filter_table*, %struct.ef4_farch_filter_table** %4, align 8
  %36 = getelementptr inbounds %struct.ef4_farch_filter_table, %struct.ef4_farch_filter_table* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @EF4_FARCH_FILTER_MAC_WILD, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @EF4_FARCH_FILTER_CTL_SRCH_FUDGE_WILD, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @EF4_SET_OWORD_FIELD(i32 %33, i32 %34, i64 %42)
  br label %44

44:                                               ; preds = %21, %1
  %45 = load %struct.ef4_nic*, %struct.ef4_nic** %2, align 8
  %46 = load i32, i32* @FR_AZ_TX_CFG, align 4
  %47 = call i32 @ef4_writeo(%struct.ef4_nic* %45, i32* %5, i32 %46)
  ret void
}

declare dso_local i32 @ef4_reado(%struct.ef4_nic*, i32*, i32) #1

declare dso_local i32 @EF4_SET_OWORD_FIELD(i32, i32, i64) #1

declare dso_local i32 @ef4_writeo(%struct.ef4_nic*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
