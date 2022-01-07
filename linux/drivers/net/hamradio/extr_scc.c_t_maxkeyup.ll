; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_t_maxkeyup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_t_maxkeyup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.timer_list = type { i32 }

@tx_wdog = common dso_local global i32 0, align 4
@R1 = common dso_local global i32 0, align 4
@TxINT_ENAB = common dso_local global i32 0, align 4
@R15 = common dso_local global i32 0, align 4
@TxUIE = common dso_local global i32 0, align 4
@R0 = common dso_local global i32 0, align 4
@RES_Tx_P = common dso_local global i32 0, align 4
@TXS_TIMEOUT = common dso_local global i32 0, align 4
@t_tail = common dso_local global i32 0, align 4
@scc = common dso_local global %struct.scc_channel* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @t_maxkeyup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @t_maxkeyup(%struct.timer_list* %0) #0 {
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
  %11 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %10, i32 0, i32 2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %15 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @netif_stop_queue(i32 %16)
  %18 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %19 = call i32 @scc_discard_buffers(%struct.scc_channel* %18)
  %20 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %21 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %20, i32 0, i32 4
  %22 = call i32 @del_timer(i32* %21)
  %23 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %24 = load i32, i32* @R1, align 4
  %25 = load i32, i32* @TxINT_ENAB, align 4
  %26 = call i32 @cl(%struct.scc_channel* %23, i32 %24, i32 %25)
  %27 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %28 = load i32, i32* @R15, align 4
  %29 = load i32, i32* @TxUIE, align 4
  %30 = call i32 @cl(%struct.scc_channel* %27, i32 %28, i32 %29)
  %31 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %32 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @R0, align 4
  %35 = load i32, i32* @RES_Tx_P, align 4
  %36 = call i32 @OutReg(i32 %33, i32 %34, i32 %35)
  %37 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %38 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %37, i32 0, i32 2
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  %41 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %42 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @TXS_TIMEOUT, align 4
  %47 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %48 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  %50 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %51 = load i32, i32* @t_tail, align 4
  %52 = load %struct.scc_channel*, %struct.scc_channel** %3, align 8
  %53 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @scc_start_tx_timer(%struct.scc_channel* %50, i32 %51, i32 %55)
  ret void
}

declare dso_local %struct.scc_channel* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @netif_stop_queue(i32) #1

declare dso_local i32 @scc_discard_buffers(%struct.scc_channel*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @cl(%struct.scc_channel*, i32, i32) #1

declare dso_local i32 @OutReg(i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scc_start_tx_timer(%struct.scc_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
