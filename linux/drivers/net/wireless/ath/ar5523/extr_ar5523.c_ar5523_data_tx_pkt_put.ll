; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_data_tx_pkt_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ar5523/extr_ar5523.c_ar5523_data_tx_pkt_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar5523 = type { i32, i32, i32, i32, i32 }

@AR5523_TX_DATA_RESTART_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"restart tx queue\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar5523*)* @ar5523_data_tx_pkt_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ar5523_data_tx_pkt_put(%struct.ar5523* %0) #0 {
  %2 = alloca %struct.ar5523*, align 8
  store %struct.ar5523* %0, %struct.ar5523** %2, align 8
  %3 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %4 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %3, i32 0, i32 1
  %5 = call i32 @atomic_dec(i32* %4)
  %6 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %7 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %6, i32 0, i32 4
  %8 = call i32 @atomic_dec_return(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %12 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %11, i32 0, i32 3
  %13 = call i32 @del_timer(i32* %12)
  %14 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %15 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %14, i32 0, i32 2
  %16 = call i32 @wake_up(i32* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %19 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %18, i32 0, i32 1
  %20 = call i64 @atomic_read(i32* %19)
  %21 = load i64, i64* @AR5523_TX_DATA_RESTART_COUNT, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %25 = call i32 @ar5523_dbg(%struct.ar5523* %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %26 = load %struct.ar5523*, %struct.ar5523** %2, align 8
  %27 = getelementptr inbounds %struct.ar5523, %struct.ar5523* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ieee80211_wake_queues(i32 %28)
  br label %30

30:                                               ; preds = %23, %17
  ret void
}

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @atomic_dec_return(i32*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ar5523_dbg(%struct.ar5523*, i8*) #1

declare dso_local i32 @ieee80211_wake_queues(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
