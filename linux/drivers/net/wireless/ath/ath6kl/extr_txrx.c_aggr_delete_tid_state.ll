; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_delete_tid_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_delete_tid_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggr_info_conn = type { %struct.rxtid_stats*, %struct.rxtid* }
%struct.rxtid_stats = type { i32 }
%struct.rxtid = type { i32, i32, i32*, i64, i64, i64 }

@NUM_OF_TIDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aggr_info_conn*, i64)* @aggr_delete_tid_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aggr_delete_tid_state(%struct.aggr_info_conn* %0, i64 %1) #0 {
  %3 = alloca %struct.aggr_info_conn*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rxtid*, align 8
  %6 = alloca %struct.rxtid_stats*, align 8
  store %struct.aggr_info_conn* %0, %struct.aggr_info_conn** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %3, align 8
  %8 = icmp ne %struct.aggr_info_conn* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = load i64, i64* @NUM_OF_TIDS, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %9, %2
  br label %52

14:                                               ; preds = %9
  %15 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %3, align 8
  %16 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %15, i32 0, i32 1
  %17 = load %struct.rxtid*, %struct.rxtid** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %17, i64 %18
  store %struct.rxtid* %19, %struct.rxtid** %5, align 8
  %20 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %3, align 8
  %21 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %20, i32 0, i32 0
  %22 = load %struct.rxtid_stats*, %struct.rxtid_stats** %21, align 8
  %23 = load i64, i64* %4, align 8
  %24 = getelementptr inbounds %struct.rxtid_stats, %struct.rxtid_stats* %22, i64 %23
  store %struct.rxtid_stats* %24, %struct.rxtid_stats** %6, align 8
  %25 = load %struct.rxtid*, %struct.rxtid** %5, align 8
  %26 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %14
  %30 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %3, align 8
  %31 = load i64, i64* %4, align 8
  %32 = call i32 @aggr_deque_frms(%struct.aggr_info_conn* %30, i64 %31, i32 0, i32 0)
  br label %33

33:                                               ; preds = %29, %14
  %34 = load %struct.rxtid*, %struct.rxtid** %5, align 8
  %35 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %34, i32 0, i32 0
  store i32 0, i32* %35, align 8
  %36 = load %struct.rxtid*, %struct.rxtid** %5, align 8
  %37 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  %38 = load %struct.rxtid*, %struct.rxtid** %5, align 8
  %39 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %38, i32 0, i32 5
  store i64 0, i64* %39, align 8
  %40 = load %struct.rxtid*, %struct.rxtid** %5, align 8
  %41 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %40, i32 0, i32 4
  store i64 0, i64* %41, align 8
  %42 = load %struct.rxtid*, %struct.rxtid** %5, align 8
  %43 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load %struct.rxtid*, %struct.rxtid** %5, align 8
  %45 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %44, i32 0, i32 2
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @kfree(i32* %46)
  %48 = load %struct.rxtid*, %struct.rxtid** %5, align 8
  %49 = getelementptr inbounds %struct.rxtid, %struct.rxtid* %48, i32 0, i32 2
  store i32* null, i32** %49, align 8
  %50 = load %struct.rxtid_stats*, %struct.rxtid_stats** %6, align 8
  %51 = call i32 @memset(%struct.rxtid_stats* %50, i32 0, i32 4)
  br label %52

52:                                               ; preds = %33, %13
  ret void
}

declare dso_local i32 @aggr_deque_frms(%struct.aggr_info_conn*, i64, i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @memset(%struct.rxtid_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
