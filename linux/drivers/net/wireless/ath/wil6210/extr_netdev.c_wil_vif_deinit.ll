; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_vif*)* @wil_vif_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_vif_deinit(%struct.wil6210_vif* %0) #0 {
  %2 = alloca %struct.wil6210_vif*, align 8
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %2, align 8
  %3 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %4 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %3, i32 0, i32 4
  %5 = call i32 @del_timer_sync(i32* %4)
  %6 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %7 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 2
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %11 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %10, i32 0, i32 3
  %12 = call i32 @cancel_work_sync(i32* %11)
  %13 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %14 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = call i32 @cancel_work_sync(i32* %15)
  %17 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %18 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = call i32 @cancel_work_sync(i32* %19)
  %21 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %22 = call i32 @wil_probe_client_flush(%struct.wil6210_vif* %21)
  %23 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %24 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %23, i32 0, i32 1
  %25 = call i32 @cancel_work_sync(i32* %24)
  %26 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %27 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %26, i32 0, i32 0
  %28 = call i32 @cancel_work_sync(i32* %27)
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @wil_probe_client_flush(%struct.wil6210_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
