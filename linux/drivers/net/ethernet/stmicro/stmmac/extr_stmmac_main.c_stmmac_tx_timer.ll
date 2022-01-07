; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_tx_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_tx_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_tx_queue = type { i64, i32, %struct.stmmac_priv* }
%struct.stmmac_priv = type { %struct.stmmac_channel* }
%struct.stmmac_channel = type { i32 }
%struct.timer_list = type { i32 }

@txtimer = common dso_local global i32 0, align 4
@tx_q = common dso_local global %struct.stmmac_tx_queue* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @stmmac_tx_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_tx_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.stmmac_tx_queue*, align 8
  %4 = alloca %struct.stmmac_priv*, align 8
  %5 = alloca %struct.stmmac_channel*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %6 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %3, align 8
  %7 = ptrtoint %struct.stmmac_tx_queue* %6 to i32
  %8 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %9 = load i32, i32* @txtimer, align 4
  %10 = call %struct.stmmac_tx_queue* @from_timer(i32 %7, %struct.timer_list* %8, i32 %9)
  store %struct.stmmac_tx_queue* %10, %struct.stmmac_tx_queue** %3, align 8
  %11 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %3, align 8
  %12 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %11, i32 0, i32 2
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %12, align 8
  store %struct.stmmac_priv* %13, %struct.stmmac_priv** %4, align 8
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %4, align 8
  %15 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %14, i32 0, i32 0
  %16 = load %struct.stmmac_channel*, %struct.stmmac_channel** %15, align 8
  %17 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %3, align 8
  %18 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.stmmac_channel, %struct.stmmac_channel* %16, i64 %19
  store %struct.stmmac_channel* %20, %struct.stmmac_channel** %5, align 8
  %21 = load %struct.stmmac_channel*, %struct.stmmac_channel** %5, align 8
  %22 = getelementptr inbounds %struct.stmmac_channel, %struct.stmmac_channel* %21, i32 0, i32 0
  %23 = call i32 @napi_schedule_prep(i32* %22)
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %1
  %27 = load %struct.stmmac_channel*, %struct.stmmac_channel** %5, align 8
  %28 = getelementptr inbounds %struct.stmmac_channel, %struct.stmmac_channel* %27, i32 0, i32 0
  %29 = call i32 @__napi_schedule(i32* %28)
  br label %35

30:                                               ; preds = %1
  %31 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %3, align 8
  %32 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %31, i32 0, i32 1
  %33 = call i32 @STMMAC_COAL_TIMER(i32 10)
  %34 = call i32 @mod_timer(i32* %32, i32 %33)
  br label %35

35:                                               ; preds = %30, %26
  ret void
}

declare dso_local %struct.stmmac_tx_queue* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @STMMAC_COAL_TIMER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
