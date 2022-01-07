; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_reset_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_txrx.c_aggr_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aggr_info_conn = type { i32, i32 }

@NUM_OF_TIDS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aggr_reset_state(%struct.aggr_info_conn* %0) #0 {
  %2 = alloca %struct.aggr_info_conn*, align 8
  %3 = alloca i64, align 8
  store %struct.aggr_info_conn* %0, %struct.aggr_info_conn** %2, align 8
  %4 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %2, align 8
  %5 = icmp ne %struct.aggr_info_conn* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %2, align 8
  %9 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %7
  %13 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %2, align 8
  %14 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %13, i32 0, i32 1
  %15 = call i32 @del_timer(i32* %14)
  %16 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %2, align 8
  %17 = getelementptr inbounds %struct.aggr_info_conn, %struct.aggr_info_conn* %16, i32 0, i32 0
  store i32 0, i32* %17, align 4
  br label %18

18:                                               ; preds = %12, %7
  store i64 0, i64* %3, align 8
  br label %19

19:                                               ; preds = %27, %18
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @NUM_OF_TIDS, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.aggr_info_conn*, %struct.aggr_info_conn** %2, align 8
  %25 = load i64, i64* %3, align 8
  %26 = call i32 @aggr_delete_tid_state(%struct.aggr_info_conn* %24, i64 %25)
  br label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = add nsw i64 %28, 1
  store i64 %29, i64* %3, align 8
  br label %19

30:                                               ; preds = %6, %19
  ret void
}

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @aggr_delete_tid_state(%struct.aggr_info_conn*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
