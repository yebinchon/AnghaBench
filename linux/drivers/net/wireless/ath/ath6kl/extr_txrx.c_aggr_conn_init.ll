; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_conn_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_conn_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath6kl_vif = type { i32 }
%struct.aggr_info = type { i32 }
%struct.aggr_info_conn = type { i32, %struct.rxtid*, %struct.aggr_info*, i32, i32, i32 }
%struct.rxtid = type { i32, i32, i32, i32 }

@AGGR_SZ_DEFAULT = common dso_local global i32 0, align 4
@aggr_timeout = common dso_local global i32 0, align 4
@NUM_OF_TIDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aggr_conn_init(%struct.ath6kl_vif* %0, %struct.aggr_info* %1, %struct.aggr_info_conn* %2) #0 {
  %4 = alloca %struct.ath6kl_vif*, align 8
  %5 = alloca %struct.aggr_info*, align 8
  %6 = alloca %struct.aggr_info_conn*, align 8
  %7 = alloca %struct.rxtid*, align 8
  %8 = alloca i64, align 8
  store %struct.ath6kl_vif* %0, %struct.ath6kl_vif** %4, align 8
  store %struct.aggr_info* %1, %struct.aggr_info** %5, align 8
  store %struct.aggr_info_conn* %2, %struct.aggr_info_conn** %6, align 8
  %9 = load i32, i32* @AGGR_SZ_DEFAULT, align 4
  %10 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %6, align 8
  %11 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %10, i32 0, i32 5
  store i32 %9, i32* %11, align 8
  %12 = load %struct.ath6kl_vif*, %struct.ath6kl_vif** %4, align 8
  %13 = getelementptr inbounds %struct.ath6kl_vif, %struct.ath6kl_vif* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %6, align 8
  %16 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %15, i32 0, i32 4
  store i32 %14, i32* %16, align 4
  %17 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %6, align 8
  %18 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %17, i32 0, i32 3
  %19 = load i32, i32* @aggr_timeout, align 4
  %20 = call i32 @timer_setup(i32* %18, i32 %19, i32 0)
  %21 = load %struct.aggr_info*, %struct.aggr_info** %5, align 8
  %22 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %6, align 8
  %23 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %22, i32 0, i32 2
  store %struct.aggr_info* %21, %struct.aggr_info** %23, align 8
  %24 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %6, align 8
  %25 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  store i64 0, i64* %8, align 8
  br label %26

26:                                               ; preds = %46, %3
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @NUM_OF_TIDS, align 8
  %29 = icmp ult i64 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %6, align 8
  %32 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %31, i32 0, i32 1
  %33 = load %struct.rxtid*, %struct.rxtid** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %33, i64 %34
  store %struct.rxtid* %35, %struct.rxtid** %7, align 8
  %36 = load %struct.rxtid*, %struct.rxtid** %7, align 8
  %37 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %36, i32 0, i32 0
  store i32 0, i32* %37, align 4
  %38 = load %struct.rxtid*, %struct.rxtid** %7, align 8
  %39 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.rxtid*, %struct.rxtid** %7, align 8
  %41 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %40, i32 0, i32 3
  %42 = call i32 @skb_queue_head_init(i32* %41)
  %43 = load %struct.rxtid*, %struct.rxtid** %7, align 8
  %44 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %43, i32 0, i32 2
  %45 = call i32 @spin_lock_init(i32* %44)
  br label %46

46:                                               ; preds = %30
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  br label %26

49:                                               ; preds = %26
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
