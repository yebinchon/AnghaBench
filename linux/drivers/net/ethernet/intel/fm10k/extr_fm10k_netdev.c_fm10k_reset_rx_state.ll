; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_reset_rx_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_reset_rx_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, i32, i32, %struct.fm10k_hw, %struct.net_device* }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.0*, i32, i32, i32)* }
%struct.fm10k_hw.0 = type opaque
%struct.net_device = type { i32 }

@__FM10K_MACVLAN_SCHED = common dso_local global i32 0, align 4
@FM10K_XCAST_MODE_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fm10k_reset_rx_state(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca %struct.fm10k_intfc*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.fm10k_hw*, align 8
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %2, align 8
  %5 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %6 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %5, i32 0, i32 5
  %7 = load %struct.net_device*, %struct.net_device** %6, align 8
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %9 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %8, i32 0, i32 4
  store %struct.fm10k_hw* %9, %struct.fm10k_hw** %4, align 8
  br label %10

10:                                               ; preds = %17, %1
  %11 = load i32, i32* @__FM10K_MACVLAN_SCHED, align 4
  %12 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %13 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @test_bit(i32 %11, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %10
  %18 = call i32 @usleep_range(i32 1000, i32 2000)
  br label %10

19:                                               ; preds = %10
  %20 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %21 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %22 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @fm10k_clear_macvlan_queue(%struct.fm10k_intfc* %20, i32 %23, i32 1)
  %25 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %26 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %25)
  %27 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %28 = call i64 @fm10k_host_mbx_ready(%struct.fm10k_intfc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %19
  %31 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %32 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32 (%struct.fm10k_hw.0*, i32, i32, i32)*, i32 (%struct.fm10k_hw.0*, i32, i32, i32)** %34, align 8
  %36 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %37 = bitcast %struct.fm10k_hw* %36 to %struct.fm10k_hw.0*
  %38 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %39 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %42 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 %35(%struct.fm10k_hw.0* %37, i32 %40, i32 %43, i32 0)
  br label %45

45:                                               ; preds = %30, %19
  %46 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %47 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %46)
  %48 = load i32, i32* @FM10K_XCAST_MODE_NONE, align 4
  %49 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %2, align 8
  %50 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @__dev_uc_unsync(%struct.net_device* %51, i32* null)
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @__dev_mc_unsync(%struct.net_device* %53, i32* null)
  ret void
}

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @fm10k_clear_macvlan_queue(%struct.fm10k_intfc*, i32, i32) #1

declare dso_local i32 @fm10k_mbx_lock(%struct.fm10k_intfc*) #1

declare dso_local i64 @fm10k_host_mbx_ready(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_mbx_unlock(%struct.fm10k_intfc*) #1

declare dso_local i32 @__dev_uc_unsync(%struct.net_device*, i32*) #1

declare dso_local i32 @__dev_mc_unsync(%struct.net_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
