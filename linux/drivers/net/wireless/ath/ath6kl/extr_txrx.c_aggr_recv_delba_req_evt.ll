; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_recv_delba_req_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_recv_delba_req_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.aggr_info_conn* }
%struct.aggr_info_conn = type { %struct.rxtid* }
%struct.rxtid = type { i64 }
%struct.ath6kl_sta = type { %struct.aggr_info_conn* }

@AP_NETWORK = common dso_local global i64 0, align 8
@NUM_OF_TIDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aggr_recv_delba_req_evt(%struct.ath6kl_vif* %0, i64 %1) #0 {
  %3 = alloca %struct.ath6kl_vif*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ath6kl_sta*, align 8
  %6 = alloca %struct.rxtid*, align 8
  %7 = alloca %struct.aggr_info_conn*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %3, align 8
  store i64 %1, i64* %4, align 8
  store %struct.aggr_info_conn* null, %struct.aggr_info_conn** %7, align 8
  %10 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %11 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @AP_NETWORK, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %30

15:                                               ; preds = %2
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @ath6kl_get_aid(i64 %16)
  store i64 %17, i64* %9, align 8
  %18 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %19 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load i64, i64* %9, align 8
  %22 = call %struct.ath6kl_sta* @ath6kl_find_sta_by_aid(i32 %20, i64 %21)
  store %struct.ath6kl_sta* %22, %struct.ath6kl_sta** %5, align 8
  %23 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %5, align 8
  %24 = icmp ne %struct.ath6kl_sta* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %15
  %26 = load %struct.ath6kl_sta*, %struct.ath6kl_sta** %5, align 8
  %27 = getelementptr inbounds %struct.ath6kl_sta, %struct.ath6kl_sta* %26, i32 0, i32 0
  %28 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %27, align 8
  store %struct.aggr_info_conn* %28, %struct.aggr_info_conn** %7, align 8
  br label %29

29:                                               ; preds = %25, %15
  br label %36

30:                                               ; preds = %2
  %31 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %3, align 8
  %32 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %34, align 8
  store %struct.aggr_info_conn* %35, %struct.aggr_info_conn** %7, align 8
  br label %36

36:                                               ; preds = %30, %29
  %37 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %38 = icmp ne %struct.aggr_info_conn* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  br label %61

40:                                               ; preds = %36
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @ath6kl_get_tid(i64 %41)
  store i64 %42, i64* %8, align 8
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* @NUM_OF_TIDS, align 8
  %45 = icmp uge i64 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %61

47:                                               ; preds = %40
  %48 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %49 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %48, i32 0, i32 0
  %50 = load %struct.rxtid*, %struct.rxtid** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %50, i64 %51
  store %struct.rxtid* %52, %struct.rxtid** %6, align 8
  %53 = load %struct.rxtid*, %struct.rxtid** %6, align 8
  %54 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  %58 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @aggr_delete_tid_state(%struct.aggr_info_conn* %58, i64 %59)
  br label %61

61:                                               ; preds = %39, %46, %57, %47
  ret void
}

declare dso_local i64 @ath6kl_get_aid(i64) #1

declare dso_local %struct.ath6kl_sta* @ath6kl_find_sta_by_aid(i32, i64) #1

declare dso_local i64 @ath6kl_get_tid(i64) #1

declare dso_local i32 @aggr_delete_tid_state(%struct.aggr_info_conn*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
