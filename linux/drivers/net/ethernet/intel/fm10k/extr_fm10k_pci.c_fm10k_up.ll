; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_pci.c_fm10k_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, i32, %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.0*)*, i32 (%struct.fm10k_hw.1*)* }
%struct.fm10k_hw.0 = type opaque
%struct.fm10k_hw.1 = type opaque

@__FM10K_UPDATING_STATS = common dso_local global i32 0, align 4
@__FM10K_DOWN = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_up(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca %struct.fm10k_hw*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %4 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %5 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %4, i32 0, i32 3
  store %struct.fm10k_hw* %5, %struct.fm10k_hw** %3, align 8
  %6 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %7 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32 (%struct.fm10k_hw.1*)*, i32 (%struct.fm10k_hw.1*)** %9, align 8
  %11 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %12 = bitcast %struct.fm10k_hw* %11 to %struct.fm10k_hw.1*
  %13 = call i32 %10(%struct.fm10k_hw.1* %12)
  %14 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %15 = call i32 @fm10k_configure_tx(%struct.fm10k_intfc* %14)
  %16 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %17 = call i32 @fm10k_configure_rx(%struct.fm10k_intfc* %16)
  %18 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %19 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32 (%struct.fm10k_hw.0*)*, i32 (%struct.fm10k_hw.0*)** %21, align 8
  %23 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %24 = bitcast %struct.fm10k_hw* %23 to %struct.fm10k_hw.0*
  %25 = call i32 %22(%struct.fm10k_hw.0* %24)
  %26 = load i32, i32* @__FM10K_UPDATING_STATS, align 4
  %27 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %28 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @clear_bit(i32 %26, i32 %29)
  %31 = load i32, i32* @__FM10K_DOWN, align 4
  %32 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %33 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clear_bit(i32 %31, i32 %34)
  %36 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %37 = call i32 @fm10k_napi_enable_all(%struct.fm10k_intfc* %36)
  %38 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %39 = call i32 @fm10k_restore_rx_state(%struct.fm10k_intfc* %38)
  %40 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %41 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netif_tx_start_all_queues(i32 %42)
  %44 = load %struct.fm10k_hw*, %struct.fm10k_hw** %3, align 8
  %45 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  store i32 1, i32* %46, align 8
  %47 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %48 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %47, i32 0, i32 0
  %49 = load i32, i32* @jiffies, align 4
  %50 = call i32 @mod_timer(i32* %48, i32 %49)
  ret void
}

declare dso_local i32 @fm10k_configure_tx(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_configure_rx(%struct.fm10k_intfc*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

declare dso_local i32 @fm10k_napi_enable_all(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_restore_rx_state(%struct.fm10k_intfc*) #1

declare dso_local i32 @netif_tx_start_all_queues(i32) #1

declare dso_local i32 @mod_timer(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
