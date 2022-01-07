; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_setup_deferred_work.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_setup_deferred_work.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@ipw_bg_adhoc_check = common dso_local global i32 0, align 4
@ipw_bg_associate = common dso_local global i32 0, align 4
@ipw_bg_disassociate = common dso_local global i32 0, align 4
@ipw_system_config = common dso_local global i32 0, align 4
@ipw_bg_rx_queue_replenish = common dso_local global i32 0, align 4
@ipw_bg_adapter_restart = common dso_local global i32 0, align 4
@ipw_bg_rf_kill = common dso_local global i32 0, align 4
@ipw_bg_up = common dso_local global i32 0, align 4
@ipw_bg_down = common dso_local global i32 0, align 4
@ipw_request_scan = common dso_local global i32 0, align 4
@ipw_request_direct_scan = common dso_local global i32 0, align 4
@ipw_request_passive_scan = common dso_local global i32 0, align 4
@ipw_scan_event = common dso_local global i32 0, align 4
@ipw_bg_gather_stats = common dso_local global i32 0, align 4
@ipw_bg_abort_scan = common dso_local global i32 0, align 4
@ipw_bg_roam = common dso_local global i32 0, align 4
@ipw_bg_scan_check = common dso_local global i32 0, align 4
@ipw_bg_link_up = common dso_local global i32 0, align 4
@ipw_bg_link_down = common dso_local global i32 0, align 4
@ipw_bg_led_link_on = common dso_local global i32 0, align 4
@ipw_bg_led_link_off = common dso_local global i32 0, align 4
@ipw_bg_led_activity_off = common dso_local global i32 0, align 4
@ipw_merge_adhoc_network = common dso_local global i32 0, align 4
@ipw_irq_tasklet = common dso_local global i64 0, align 8
@ipw_bg_qos_activate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_setup_deferred_work to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_setup_deferred_work(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %5 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %4, i32 0, i32 26
  %6 = call i32 @init_waitqueue_head(i32* %5)
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %8 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %7, i32 0, i32 25
  %9 = call i32 @init_waitqueue_head(i32* %8)
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 24
  %12 = load i32, i32* @ipw_bg_adhoc_check, align 4
  %13 = call i32 @INIT_DELAYED_WORK(i32* %11, i32 %12)
  %14 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %15 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %14, i32 0, i32 23
  %16 = load i32, i32* @ipw_bg_associate, align 4
  %17 = call i32 @INIT_WORK(i32* %15, i32 %16)
  %18 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %19 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %18, i32 0, i32 22
  %20 = load i32, i32* @ipw_bg_disassociate, align 4
  %21 = call i32 @INIT_WORK(i32* %19, i32 %20)
  %22 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %23 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %22, i32 0, i32 21
  %24 = load i32, i32* @ipw_system_config, align 4
  %25 = call i32 @INIT_WORK(i32* %23, i32 %24)
  %26 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %27 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %26, i32 0, i32 20
  %28 = load i32, i32* @ipw_bg_rx_queue_replenish, align 4
  %29 = call i32 @INIT_WORK(i32* %27, i32 %28)
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 19
  %32 = load i32, i32* @ipw_bg_adapter_restart, align 4
  %33 = call i32 @INIT_WORK(i32* %31, i32 %32)
  %34 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %35 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %34, i32 0, i32 18
  %36 = load i32, i32* @ipw_bg_rf_kill, align 4
  %37 = call i32 @INIT_DELAYED_WORK(i32* %35, i32 %36)
  %38 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %39 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %38, i32 0, i32 17
  %40 = load i32, i32* @ipw_bg_up, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %43 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %42, i32 0, i32 16
  %44 = load i32, i32* @ipw_bg_down, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %47 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %46, i32 0, i32 15
  %48 = load i32, i32* @ipw_request_scan, align 4
  %49 = call i32 @INIT_DELAYED_WORK(i32* %47, i32 %48)
  %50 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %51 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %50, i32 0, i32 14
  %52 = load i32, i32* @ipw_request_direct_scan, align 4
  %53 = call i32 @INIT_DELAYED_WORK(i32* %51, i32 %52)
  %54 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %55 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %54, i32 0, i32 13
  %56 = load i32, i32* @ipw_request_passive_scan, align 4
  %57 = call i32 @INIT_DELAYED_WORK(i32* %55, i32 %56)
  %58 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %59 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %58, i32 0, i32 12
  %60 = load i32, i32* @ipw_scan_event, align 4
  %61 = call i32 @INIT_DELAYED_WORK(i32* %59, i32 %60)
  %62 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %63 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %62, i32 0, i32 11
  %64 = load i32, i32* @ipw_bg_gather_stats, align 4
  %65 = call i32 @INIT_DELAYED_WORK(i32* %63, i32 %64)
  %66 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %67 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %66, i32 0, i32 10
  %68 = load i32, i32* @ipw_bg_abort_scan, align 4
  %69 = call i32 @INIT_WORK(i32* %67, i32 %68)
  %70 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %71 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %70, i32 0, i32 9
  %72 = load i32, i32* @ipw_bg_roam, align 4
  %73 = call i32 @INIT_WORK(i32* %71, i32 %72)
  %74 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %75 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %74, i32 0, i32 8
  %76 = load i32, i32* @ipw_bg_scan_check, align 4
  %77 = call i32 @INIT_DELAYED_WORK(i32* %75, i32 %76)
  %78 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %79 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %78, i32 0, i32 7
  %80 = load i32, i32* @ipw_bg_link_up, align 4
  %81 = call i32 @INIT_WORK(i32* %79, i32 %80)
  %82 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %83 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %82, i32 0, i32 6
  %84 = load i32, i32* @ipw_bg_link_down, align 4
  %85 = call i32 @INIT_WORK(i32* %83, i32 %84)
  %86 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %87 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %86, i32 0, i32 5
  %88 = load i32, i32* @ipw_bg_led_link_on, align 4
  %89 = call i32 @INIT_DELAYED_WORK(i32* %87, i32 %88)
  %90 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %91 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %90, i32 0, i32 4
  %92 = load i32, i32* @ipw_bg_led_link_off, align 4
  %93 = call i32 @INIT_DELAYED_WORK(i32* %91, i32 %92)
  %94 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %95 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %94, i32 0, i32 3
  %96 = load i32, i32* @ipw_bg_led_activity_off, align 4
  %97 = call i32 @INIT_DELAYED_WORK(i32* %95, i32 %96)
  %98 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %99 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %98, i32 0, i32 2
  %100 = load i32, i32* @ipw_merge_adhoc_network, align 4
  %101 = call i32 @INIT_WORK(i32* %99, i32 %100)
  %102 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %103 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %102, i32 0, i32 0
  %104 = load i64, i64* @ipw_irq_tasklet, align 8
  %105 = inttoptr i64 %104 to void (i64)*
  %106 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %107 = ptrtoint %struct.ipw_priv* %106 to i64
  %108 = call i32 @tasklet_init(i32* %103, void (i64)* %105, i64 %107)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
