; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_get_ts_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ptp.c_efx_ptp_get_ts_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { %struct.efx_ptp_data*, %struct.efx_ef10_nic_data*, %struct.efx_nic* }
%struct.efx_ptp_data = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.efx_ef10_nic_data = type { i32 }
%struct.ethtool_ts_info = type { i32, i32, i32, i32 }

@SOF_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RX_HARDWARE = common dso_local global i32 0, align 4
@SOF_TIMESTAMPING_RAW_HARDWARE = common dso_local global i32 0, align 4
@LICENSED_V3_FEATURES_TX_TIMESTAMPS_LBN = common dso_local global i32 0, align 4
@HWTSTAMP_TX_OFF = common dso_local global i32 0, align 4
@HWTSTAMP_TX_ON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_ptp_get_ts_info(%struct.efx_nic* %0, %struct.ethtool_ts_info* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.ethtool_ts_info*, align 8
  %5 = alloca %struct.efx_ptp_data*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca %struct.efx_ef10_nic_data*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.ethtool_ts_info* %1, %struct.ethtool_ts_info** %4, align 8
  %8 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %9 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %8, i32 0, i32 0
  %10 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %9, align 8
  store %struct.efx_ptp_data* %10, %struct.efx_ptp_data** %5, align 8
  %11 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %12 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %11, i32 0, i32 2
  %13 = load %struct.efx_nic*, %struct.efx_nic** %12, align 8
  store %struct.efx_nic* %13, %struct.efx_nic** %6, align 8
  %14 = call i32 (...) @ASSERT_RTNL()
  %15 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %16 = icmp ne %struct.efx_ptp_data* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %2
  br label %91

18:                                               ; preds = %2
  %19 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %20 = load i32, i32* @SOF_TIMESTAMPING_RX_HARDWARE, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @SOF_TIMESTAMPING_RAW_HARDWARE, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %25 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %29 = call i64 @efx_ptp_use_mac_tx_timestamps(%struct.efx_nic* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %50

31:                                               ; preds = %18
  %32 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %33 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %32, i32 0, i32 1
  %34 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %33, align 8
  store %struct.efx_ef10_nic_data* %34, %struct.efx_ef10_nic_data** %7, align 8
  %35 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %7, align 8
  %36 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @LICENSED_V3_FEATURES_TX_TIMESTAMPS_LBN, align 4
  %39 = shl i32 1, %38
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %31
  %43 = load i32, i32* @SOF_TIMESTAMPING_TX_HARDWARE, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %46 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %31
  br label %50

50:                                               ; preds = %49, %18
  %51 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %52 = icmp ne %struct.efx_nic* %51, null
  br i1 %52, label %53, label %74

53:                                               ; preds = %50
  %54 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %55 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %54, i32 0, i32 0
  %56 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %55, align 8
  %57 = icmp ne %struct.efx_ptp_data* %56, null
  br i1 %57, label %58, label %74

58:                                               ; preds = %53
  %59 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %60 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %59, i32 0, i32 0
  %61 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %60, align 8
  %62 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %58
  %66 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %67 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %66, i32 0, i32 0
  %68 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %67, align 8
  %69 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i32 @ptp_clock_index(i64 %70)
  %72 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %73 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %72, i32 0, i32 3
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %58, %53, %50
  %75 = load i32, i32* @HWTSTAMP_TX_OFF, align 4
  %76 = shl i32 1, %75
  %77 = load i32, i32* @HWTSTAMP_TX_ON, align 4
  %78 = shl i32 1, %77
  %79 = or i32 %76, %78
  %80 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %81 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  %82 = load %struct.efx_ptp_data*, %struct.efx_ptp_data** %5, align 8
  %83 = getelementptr inbounds %struct.efx_ptp_data, %struct.efx_ptp_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.ethtool_ts_info*, %struct.ethtool_ts_info** %4, align 8
  %90 = getelementptr inbounds %struct.ethtool_ts_info, %struct.ethtool_ts_info* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  br label %91

91:                                               ; preds = %74, %17
  ret void
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i64 @efx_ptp_use_mac_tx_timestamps(%struct.efx_nic*) #1

declare dso_local i32 @ptp_clock_index(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
