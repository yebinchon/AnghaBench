; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_start_tx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_scc.c_scc_start_tx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scc_channel = type { i32 }
%struct.timer_list = type opaque
%struct.timer_list.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scc_channel*, void (%struct.timer_list*)*, i64)* @scc_start_tx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_start_tx_timer(%struct.scc_channel* %0, void (%struct.timer_list*)* %1, i64 %2) #0 {
  %4 = alloca %struct.scc_channel*, align 8
  %5 = alloca void (%struct.timer_list*)*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.scc_channel* %0, %struct.scc_channel** %4, align 8
  store void (%struct.timer_list*)* %1, void (%struct.timer_list*)** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %9 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %8, i32 0, i32 0
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %13 = load void (%struct.timer_list*)*, void (%struct.timer_list*)** %5, align 8
  %14 = bitcast void (%struct.timer_list*)* %13 to void (%struct.timer_list.0*)*
  %15 = load i64, i64* %6, align 8
  %16 = call i32 @__scc_start_tx_timer(%struct.scc_channel* %12, void (%struct.timer_list.0*)* %14, i64 %15)
  %17 = load %struct.scc_channel*, %struct.scc_channel** %4, align 8
  %18 = getelementptr inbounds %struct.scc_channel, %struct.scc_channel* %17, i32 0, i32 0
  %19 = load i64, i64* %7, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* %18, i64 %19)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__scc_start_tx_timer(%struct.scc_channel*, void (%struct.timer_list.0*)*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
