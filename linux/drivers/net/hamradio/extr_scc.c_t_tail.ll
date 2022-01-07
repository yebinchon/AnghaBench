; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_t_tail.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_t_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32, %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@tx_t = common dso_local global i32 0, align 4
@TX_OFF = common dso_local global i32 0, align 4
@TXS_TIMEOUT = common dso_local global i64 0, align 8
@TXS_WAIT = common dso_local global i64 0, align 8
@t_dwait = common dso_local global i32 0, align 4
@TXS_IDLE = common dso_local global i64 0, align 8
@scc = common dso_local global %struct.scc_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @t_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t_tail(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.scc_channel*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %6 = ptrtoint %struct.scc_channel* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @tx_t, align 4
  %9 = call %struct.scc_channel* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.scc_channel* %9, %struct.scc_channel** %3, align 8
  %10 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %11 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %10, i32 0, i32 3
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %15 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %14, i32 0, i32 4
  %16 = call i32 @del_timer(i32* %15)
  %17 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %18 = load i32, i32* @TX_OFF, align 4
  %19 = call i32 @scc_key_trx(%struct.scc_channel* %17, i32 %18)
  %20 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %21 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %20, i32 0, i32 3
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %25 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TXS_TIMEOUT, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %1
  %31 = load i64, i64* @TXS_WAIT, align 8
  %32 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %33 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %36 = load i32, i32* @t_dwait, align 4
  %37 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %38 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %40, 100
  %42 = call i32 @scc_start_tx_timer(%struct.scc_channel* %35, i32 %36, i32 %41)
  br label %52

43:                                               ; preds = %1
  %44 = load i64, i64* @TXS_IDLE, align 8
  %45 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %46 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i64 %44, i64* %47, align 8
  %48 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %49 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @netif_wake_queue(i32 %50)
  br label %52

52:                                               ; preds = %43, %30
  ret void
}

declare dso_local %struct.scc_channel* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @scc_key_trx(%struct.scc_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scc_start_tx_timer(%struct.scc_channel*, i32, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
