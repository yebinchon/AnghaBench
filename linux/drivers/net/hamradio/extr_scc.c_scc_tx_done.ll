; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_tx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_tx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@TXS_IDLE2 = common dso_local global i32 0, align 4
@TIMER_OFF = common dso_local global i32 0, align 4
@t_idle = common dso_local global i32 0, align 4
@HWEV_ALL_SENT = common dso_local global i32 0, align 4
@TXS_BUSY = common dso_local global i32 0, align 4
@t_tail = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_channel*)* @scc_tx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_tx_done(%struct.scc_channel* %0) #0 {
  %2 = alloca %struct.scc_channel*, align 8
  store %struct.scc_channel* %0, %struct.scc_channel** %2, align 8
  %3 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %4 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %32 [
    i32 129, label %7
    i32 128, label %28
  ]

7:                                                ; preds = %1
  %8 = load i32, i32* @TXS_IDLE2, align 4
  %9 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %10 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %8, i32* %11, align 4
  %12 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %13 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @TIMER_OFF, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %7
  %19 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %20 = load i32, i32* @t_idle, align 4
  %21 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %22 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = mul nsw i32 %24, 100
  %26 = call i32 @scc_start_tx_timer(%struct.scc_channel* %19, i32 %20, i32 %25)
  br label %27

27:                                               ; preds = %18, %7
  br label %44

28:                                               ; preds = %1
  %29 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %30 = load i32, i32* @HWEV_ALL_SENT, align 4
  %31 = call i32 @scc_notify(%struct.scc_channel* %29, i32 %30)
  br label %44

32:                                               ; preds = %1
  %33 = load i32, i32* @TXS_BUSY, align 4
  %34 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %35 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %33, i32* %36, align 4
  %37 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %38 = load i32, i32* @t_tail, align 4
  %39 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %40 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @scc_start_tx_timer(%struct.scc_channel* %37, i32 %38, i32 %42)
  br label %44

44:                                               ; preds = %32, %28, %27
  %45 = load %struct.scc_channel*, %struct.scc_channel** %2, align 8
  %46 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @netif_wake_queue(i32 %47)
  ret void
}

declare dso_local i32 @scc_start_tx_timer(%struct.scc_channel*, i32, i32) #1

declare dso_local i32 @scc_notify(%struct.scc_channel*, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
