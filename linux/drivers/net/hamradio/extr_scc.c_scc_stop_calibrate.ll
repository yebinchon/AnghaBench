; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_stop_calibrate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_stop_calibrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32, i32, i32, i32 }
%struct.timer_list = type { i32 }

@tx_wdog = common dso_local global i32 0, align 4
@TX_OFF = common dso_local global i32 0, align 4
@R6 = common dso_local global i32 0, align 4
@R7 = common dso_local global i32 0, align 4
@FLAG = common dso_local global i32 0, align 4
@RES_EXT_INT = common dso_local global i32 0, align 4
@scc = common dso_local global %struct.scc_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @scc_stop_calibrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_stop_calibrate(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.scc_channel*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %6 = ptrtoint %struct.scc_channel* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @tx_wdog, align 4
  %9 = call %struct.scc_channel* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.scc_channel* %9, %struct.scc_channel** %3, align 8
  %10 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %11 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %10, i32 0, i32 0
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %15 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %14, i32 0, i32 3
  %16 = call i32 @del_timer(i32* %15)
  %17 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %18 = load i32, i32* @TX_OFF, align 4
  %19 = call i32 @scc_key_trx(%struct.scc_channel* %17, i32 %18)
  %20 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %21 = load i32, i32* @R6, align 4
  %22 = call i32 @wr(%struct.scc_channel* %20, i32 %21, i32 0)
  %23 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %24 = load i32, i32* @R7, align 4
  %25 = load i32, i32* @FLAG, align 4
  %26 = call i32 @wr(%struct.scc_channel* %23, i32 %24, i32 %25)
  %27 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %28 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @RES_EXT_INT, align 4
  %31 = call i32 @Outb(i32 %29, i32 %30)
  %32 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %33 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RES_EXT_INT, align 4
  %36 = call i32 @Outb(i32 %34, i32 %35)
  %37 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %38 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @netif_wake_queue(i32 %39)
  %41 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %42 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %41, i32 0, i32 0
  %43 = load i64, i64* %4, align 8
  %44 = call i32 @spin_unlock_irqrestore(i32* %42, i64 %43)
  ret void
}

declare dso_local %struct.scc_channel* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @scc_key_trx(%struct.scc_channel*, i32) #1

declare dso_local i32 @wr(%struct.scc_channel*, i32, i32) #1

declare dso_local i32 @Outb(i32, i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
