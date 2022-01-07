; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_update_net_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_txrx.c_wil_update_net_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wil6210_vif = type { i32 }
%struct.wil_ring = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wil_update_net_queues(%struct.wil6210_priv* %0, %struct.wil6210_vif* %1, %struct.wil_ring* %2, i32 %3) #0 {
  %5 = alloca %struct.wil6210_priv*, align 8
  %6 = alloca %struct.wil6210_vif*, align 8
  %7 = alloca %struct.wil_ring*, align 8
  %8 = alloca i32, align 4
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %5, align 8
  store %struct.wil6210_vif* %1, %struct.wil6210_vif** %6, align 8
  store %struct.wil_ring* %2, %struct.wil_ring** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %10 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %13 = load %struct.wil6210_vif*, %struct.wil6210_vif** %6, align 8
  %14 = load %struct.wil_ring*, %struct.wil_ring** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @__wil_update_net_queues(%struct.wil6210_priv* %12, %struct.wil6210_vif* %13, %struct.wil_ring* %14, i32 %15)
  %17 = load %struct.wil6210_priv*, %struct.wil6210_priv** %5, align 8
  %18 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %17, i32 0, i32 0
  %19 = call i32 @spin_unlock(i32* %18)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__wil_update_net_queues(%struct.wil6210_priv*, %struct.wil6210_vif*, %struct.wil_ring*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
