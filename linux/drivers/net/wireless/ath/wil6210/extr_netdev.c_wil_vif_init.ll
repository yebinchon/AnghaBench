; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_netdev.c_wil_vif_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32, i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@wil_connect_timer_fn = common dso_local global i32 0, align 4
@wil_scan_timer_fn = common dso_local global i32 0, align 4
@wil_p2p_discovery_timer_fn = common dso_local global i32 0, align 4
@wil_probe_client_worker = common dso_local global i32 0, align 4
@wil_disconnect_worker = common dso_local global i32 0, align 4
@wil_p2p_listen_expired = common dso_local global i32 0, align 4
@wil_p2p_delayed_listen_work = common dso_local global i32 0, align 4
@wil_enable_tx_key_worker = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_vif*)* @wil_vif_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_vif_init(%struct.wil6210_vif* %0) #0 {
  %2 = alloca %struct.wil6210_vif*, align 8
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %2, align 8
  %3 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %4 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %3, i32 0, i32 0
  store i32 -1, i32* %4, align 4
  %5 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %6 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %5, i32 0, i32 9
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %9 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %8, i32 0, i32 8
  %10 = load i32, i32* @wil_connect_timer_fn, align 4
  %11 = call i32 @timer_setup(i32* %9, i32 %10, i32 0)
  %12 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %13 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %12, i32 0, i32 7
  %14 = load i32, i32* @wil_scan_timer_fn, align 4
  %15 = call i32 @timer_setup(i32* %13, i32 %14, i32 0)
  %16 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %17 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* @wil_p2p_discovery_timer_fn, align 4
  %20 = call i32 @timer_setup(i32* %18, i32 %19, i32 0)
  %21 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %22 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %21, i32 0, i32 6
  %23 = load i32, i32* @wil_probe_client_worker, align 4
  %24 = call i32 @INIT_WORK(i32* %22, i32 %23)
  %25 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %26 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %25, i32 0, i32 5
  %27 = load i32, i32* @wil_disconnect_worker, align 4
  %28 = call i32 @INIT_WORK(i32* %26, i32 %27)
  %29 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %30 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* @wil_p2p_listen_expired, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %35 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* @wil_p2p_delayed_listen_work, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %40 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %39, i32 0, i32 3
  %41 = load i32, i32* @wil_enable_tx_key_worker, align 4
  %42 = call i32 @INIT_WORK(i32* %40, i32 %41)
  %43 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %44 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %43, i32 0, i32 2
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.wil6210_vif*, %struct.wil6210_vif** %2, align 8
  %47 = getelementptr inbounds %struct.wil6210_vif, %struct.wil6210_vif* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  ret void
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
