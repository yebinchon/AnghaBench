; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_netdev.c_fm10k_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fm10k_intfc = type { i32, i32, %struct.fm10k_hw }
%struct.fm10k_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.fm10k_hw.0*, i32, i32)* }
%struct.fm10k_hw.0 = type opaque

@IFF_UP = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@FM10K_XCAST_MODE_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@FM10K_XCAST_MODE_ALLMULTI = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@FM10K_XCAST_MODE_MULTI = common dso_local global i32 0, align 4
@FM10K_XCAST_MODE_NONE = common dso_local global i32 0, align 4
@FM10K_VLAN_ALL = common dso_local global i32 0, align 4
@fm10k_uc_sync = common dso_local global i32 0, align 4
@fm10k_uc_unsync = common dso_local global i32 0, align 4
@fm10k_mc_sync = common dso_local global i32 0, align 4
@fm10k_mc_unsync = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fm10k_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fm10k_set_rx_mode(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.fm10k_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.fm10k_intfc* @netdev_priv(%struct.net_device* %6)
  store %struct.fm10k_intfc* %7, %struct.fm10k_intfc** %3, align 8
  %8 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %9 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %8, i32 0, i32 2
  store %struct.fm10k_hw* %9, %struct.fm10k_hw** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_UP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %110

17:                                               ; preds = %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @IFF_PROMISC, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @FM10K_XCAST_MODE_PROMISC, align 4
  br label %52

26:                                               ; preds = %17
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_ALLMULTI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @FM10K_XCAST_MODE_ALLMULTI, align 4
  br label %50

35:                                               ; preds = %26
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_BROADCAST, align 4
  %40 = load i32, i32* @IFF_MULTICAST, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %35
  %45 = load i32, i32* @FM10K_XCAST_MODE_MULTI, align 4
  br label %48

46:                                               ; preds = %35
  %47 = load i32, i32* @FM10K_XCAST_MODE_NONE, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  br label %50

50:                                               ; preds = %48, %33
  %51 = phi i32 [ %34, %33 ], [ %49, %48 ]
  br label %52

52:                                               ; preds = %50, %24
  %53 = phi i32 [ %25, %24 ], [ %51, %50 ]
  store i32 %53, i32* %5, align 4
  %54 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %55 = call i32 @fm10k_mbx_lock(%struct.fm10k_intfc* %54)
  %56 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %57 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %99

61:                                               ; preds = %52
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @FM10K_XCAST_MODE_PROMISC, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %61
  %66 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %67 = load i32, i32* @FM10K_VLAN_ALL, align 4
  %68 = call i32 @fm10k_queue_vlan_request(%struct.fm10k_intfc* %66, i32 %67, i32 0, i32 1)
  br label %69

69:                                               ; preds = %65, %61
  %70 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %71 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @FM10K_XCAST_MODE_PROMISC, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %69
  %76 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %77 = call i32 @fm10k_clear_unused_vlans(%struct.fm10k_intfc* %76)
  br label %78

78:                                               ; preds = %75, %69
  %79 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %80 = call i64 @fm10k_host_mbx_ready(%struct.fm10k_intfc* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %95

82:                                               ; preds = %78
  %83 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %84 = getelementptr inbounds %struct.fm10k_hw, %struct.fm10k_hw* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32 (%struct.fm10k_hw.0*, i32, i32)*, i32 (%struct.fm10k_hw.0*, i32, i32)** %86, align 8
  %88 = load %struct.fm10k_hw*, %struct.fm10k_hw** %4, align 8
  %89 = bitcast %struct.fm10k_hw* %88 to %struct.fm10k_hw.0*
  %90 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %91 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 %87(%struct.fm10k_hw.0* %89, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %82, %78
  %96 = load i32, i32* %5, align 4
  %97 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %98 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  br label %99

99:                                               ; preds = %95, %52
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i32, i32* @fm10k_uc_sync, align 4
  %102 = load i32, i32* @fm10k_uc_unsync, align 4
  %103 = call i32 @__dev_uc_sync(%struct.net_device* %100, i32 %101, i32 %102)
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = load i32, i32* @fm10k_mc_sync, align 4
  %106 = load i32, i32* @fm10k_mc_unsync, align 4
  %107 = call i32 @__dev_mc_sync(%struct.net_device* %104, i32 %105, i32 %106)
  %108 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %109 = call i32 @fm10k_mbx_unlock(%struct.fm10k_intfc* %108)
  br label %110

110:                                              ; preds = %99, %16
  ret void
}

declare dso_local %struct.fm10k_intfc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @fm10k_mbx_lock(%struct.fm10k_intfc*) #1

declare dso_local i32 @fm10k_queue_vlan_request(%struct.fm10k_intfc*, i32, i32, i32) #1

declare dso_local i32 @fm10k_clear_unused_vlans(%struct.fm10k_intfc*) #1

declare dso_local i64 @fm10k_host_mbx_ready(%struct.fm10k_intfc*) #1

declare dso_local i32 @__dev_uc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @__dev_mc_sync(%struct.net_device*, i32, i32) #1

declare dso_local i32 @fm10k_mbx_unlock(%struct.fm10k_intfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
