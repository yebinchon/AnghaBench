; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c___netxen_nic_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_main.c___netxen_nic_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, i32, i32 (%struct.netxen_adapter*, i32)*, %struct.TYPE_2__, i32 (%struct.netxen_adapter*)*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }

@NETXEN_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@__NX_DEV_UP = common dso_local global i32 0, align 4
@NX_FW_CAPABILITY_LINK_NOTIFICATION = common dso_local global i32 0, align 4
@NETXEN_NIU_NON_PROMISC_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.netxen_adapter*, %struct.net_device*)* @__netxen_nic_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__netxen_nic_down(%struct.netxen_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.netxen_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @NETXEN_ADAPTER_UP_MAGIC, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %65

11:                                               ; preds = %2
  %12 = load i32, i32* @__NX_DEV_UP, align 4
  %13 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %13, i32 0, i32 5
  %15 = call i32 @test_and_clear_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  br label %65

18:                                               ; preds = %11
  %19 = call i32 (...) @smp_mb()
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = call i32 @netif_carrier_off(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call i32 @netif_tx_disable(%struct.net_device* %22)
  %24 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @NX_FW_CAPABILITY_LINK_NOTIFICATION, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %18
  %31 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %32 = call i32 @netxen_linkevent_request(%struct.netxen_adapter* %31, i32 0)
  br label %33

33:                                               ; preds = %30, %18
  %34 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %35 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %34, i32 0, i32 4
  %36 = load i32 (%struct.netxen_adapter*)*, i32 (%struct.netxen_adapter*)** %35, align 8
  %37 = icmp ne i32 (%struct.netxen_adapter*)* %36, null
  br i1 %37, label %38, label %44

38:                                               ; preds = %33
  %39 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %39, i32 0, i32 4
  %41 = load i32 (%struct.netxen_adapter*)*, i32 (%struct.netxen_adapter*)** %40, align 8
  %42 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %43 = call i32 %41(%struct.netxen_adapter* %42)
  br label %44

44:                                               ; preds = %38, %33
  %45 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %46 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @NX_IS_REVISION_P3(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %44
  %52 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %53 = call i32 @netxen_p3_free_mac_list(%struct.netxen_adapter* %52)
  br label %54

54:                                               ; preds = %51, %44
  %55 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %55, i32 0, i32 2
  %57 = load i32 (%struct.netxen_adapter*, i32)*, i32 (%struct.netxen_adapter*, i32)** %56, align 8
  %58 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %59 = load i32, i32* @NETXEN_NIU_NON_PROMISC_MODE, align 4
  %60 = call i32 %57(%struct.netxen_adapter* %58, i32 %59)
  %61 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %62 = call i32 @netxen_napi_disable(%struct.netxen_adapter* %61)
  %63 = load %struct.netxen_adapter*, %struct.netxen_adapter** %3, align 8
  %64 = call i32 @netxen_release_tx_buffers(%struct.netxen_adapter* %63)
  br label %65

65:                                               ; preds = %54, %17, %10
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @netxen_linkevent_request(%struct.netxen_adapter*, i32) #1

declare dso_local i64 @NX_IS_REVISION_P3(i32) #1

declare dso_local i32 @netxen_p3_free_mac_list(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_napi_disable(%struct.netxen_adapter*) #1

declare dso_local i32 @netxen_release_tx_buffers(%struct.netxen_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
