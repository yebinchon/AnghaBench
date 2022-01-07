; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_tx_timer_arm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_main.c_stmmac_tx_timer_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, %struct.stmmac_tx_queue* }
%struct.stmmac_tx_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stmmac_priv*, i64)* @stmmac_tx_timer_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stmmac_tx_timer_arm(%struct.stmmac_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.stmmac_tx_queue*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %7 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %6, i32 0, i32 1
  %8 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %7, align 8
  %9 = load i64, i64* %4, align 8
  %10 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %8, i64 %9
  store %struct.stmmac_tx_queue* %10, %struct.stmmac_tx_queue** %5, align 8
  %11 = load %struct.stmmac_tx_queue*, %struct.stmmac_tx_queue** %5, align 8
  %12 = getelementptr inbounds %struct.stmmac_tx_queue, %struct.stmmac_tx_queue* %11, i32 0, i32 0
  %13 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %14 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @STMMAC_COAL_TIMER(i32 %15)
  %17 = call i32 @mod_timer(i32* %12, i32 %16)
  ret void
}

declare dso_local i32 @mod_timer(i32*, i32) #1

declare dso_local i32 @STMMAC_COAL_TIMER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
