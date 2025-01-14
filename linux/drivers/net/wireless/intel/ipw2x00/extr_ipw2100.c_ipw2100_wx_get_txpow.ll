; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_txpow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wx_get_txpow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i32 }
%struct.ipw2100_priv = type { i32, i64 }

@STATUS_RF_KILL_MASK = common dso_local global i32 0, align 4
@IPW_TX_POWER_DEFAULT = common dso_local global i64 0, align 8
@IPW_TX_POWER_MAX_DBM = common dso_local global i64 0, align 8
@IW_TXPOW_DBM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"GET TX Power -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @ipw2100_wx_get_txpow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wx_get_txpow(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ipw2100_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.ipw2100_priv* @libipw_priv(%struct.net_device* %10)
  store %struct.ipw2100_priv* %11, %struct.ipw2100_priv** %9, align 8
  %12 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %13 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @STATUS_RF_KILL_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i32 1, i32 0
  %20 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %21 = bitcast %union.iwreq_data* %20 to %struct.TYPE_2__*
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %19, i32* %22, align 8
  %23 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %24 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @IPW_TX_POWER_DEFAULT, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %4
  %29 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %30 = bitcast %union.iwreq_data* %29 to %struct.TYPE_2__*
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store i32 0, i32* %31, align 4
  %32 = load i64, i64* @IPW_TX_POWER_MAX_DBM, align 8
  %33 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %34 = bitcast %union.iwreq_data* %33 to %struct.TYPE_2__*
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i64 %32, i64* %35, align 8
  br label %46

36:                                               ; preds = %4
  %37 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %38 = bitcast %union.iwreq_data* %37 to %struct.TYPE_2__*
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %9, align 8
  %41 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %44 = bitcast %union.iwreq_data* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %36, %28
  %47 = load i32, i32* @IW_TXPOW_DBM, align 4
  %48 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %49 = bitcast %union.iwreq_data* %48 to %struct.TYPE_2__*
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 3
  store i32 %47, i32* %50, align 8
  %51 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %52 = bitcast %union.iwreq_data* %51 to %struct.TYPE_2__*
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call i32 @IPW_DEBUG_WX(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %54)
  ret i32 0
}

declare dso_local %struct.ipw2100_priv* @libipw_priv(%struct.net_device*) #1

declare dso_local i32 @IPW_DEBUG_WX(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
