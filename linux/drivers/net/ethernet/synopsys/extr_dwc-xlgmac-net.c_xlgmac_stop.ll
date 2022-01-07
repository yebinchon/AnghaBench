; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-net.c_xlgmac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, %struct.xlgmac_channel*, %struct.net_device*, %struct.xlgmac_hw_ops }
%struct.xlgmac_channel = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.xlgmac_hw_ops = type { i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.1*)*, i32 (%struct.xlgmac_pdata.2*)* }
%struct.xlgmac_pdata.0 = type opaque
%struct.xlgmac_pdata.1 = type opaque
%struct.xlgmac_pdata.2 = type opaque
%struct.netdev_queue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xlgmac_pdata*)* @xlgmac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xlgmac_stop(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_hw_ops*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.xlgmac_channel*, align 8
  %6 = alloca %struct.netdev_queue*, align 8
  %7 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %8 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %9 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %8, i32 0, i32 3
  store %struct.xlgmac_hw_ops* %9, %struct.xlgmac_hw_ops** %3, align 8
  %10 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %11 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %10, i32 0, i32 2
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %13)
  %15 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %16 = call i32 @xlgmac_stop_timers(%struct.xlgmac_pdata* %15)
  %17 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %3, align 8
  %18 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %17, i32 0, i32 2
  %19 = load i32 (%struct.xlgmac_pdata.2*)*, i32 (%struct.xlgmac_pdata.2*)** %18, align 8
  %20 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %21 = bitcast %struct.xlgmac_pdata* %20 to %struct.xlgmac_pdata.2*
  %22 = call i32 %19(%struct.xlgmac_pdata.2* %21)
  %23 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %3, align 8
  %24 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %23, i32 0, i32 1
  %25 = load i32 (%struct.xlgmac_pdata.1*)*, i32 (%struct.xlgmac_pdata.1*)** %24, align 8
  %26 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %27 = bitcast %struct.xlgmac_pdata* %26 to %struct.xlgmac_pdata.1*
  %28 = call i32 %25(%struct.xlgmac_pdata.1* %27)
  %29 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %30 = call i32 @xlgmac_free_irqs(%struct.xlgmac_pdata* %29)
  %31 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %32 = call i32 @xlgmac_napi_disable(%struct.xlgmac_pdata* %31, i32 1)
  %33 = load %struct.xlgmac_hw_ops*, %struct.xlgmac_hw_ops** %3, align 8
  %34 = getelementptr inbounds %struct.xlgmac_hw_ops, %struct.xlgmac_hw_ops* %33, i32 0, i32 0
  %35 = load i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.0*)** %34, align 8
  %36 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %37 = bitcast %struct.xlgmac_pdata* %36 to %struct.xlgmac_pdata.0*
  %38 = call i32 %35(%struct.xlgmac_pdata.0* %37)
  %39 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %40 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %39, i32 0, i32 1
  %41 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %40, align 8
  store %struct.xlgmac_channel* %41, %struct.xlgmac_channel** %5, align 8
  store i32 0, i32* %7, align 4
  br label %42

42:                                               ; preds = %62, %1
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %45 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp ult i32 %43, %46
  br i1 %47, label %48, label %67

48:                                               ; preds = %42
  %49 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %50 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48
  br label %62

54:                                               ; preds = %48
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %57 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device* %55, i32 %58)
  store %struct.netdev_queue* %59, %struct.netdev_queue** %6, align 8
  %60 = load %struct.netdev_queue*, %struct.netdev_queue** %6, align 8
  %61 = call i32 @netdev_tx_reset_queue(%struct.netdev_queue* %60)
  br label %62

62:                                               ; preds = %54, %53
  %63 = load i32, i32* %7, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %7, align 4
  %65 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %5, align 8
  %66 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %65, i32 1
  store %struct.xlgmac_channel* %66, %struct.xlgmac_channel** %5, align 8
  br label %42

67:                                               ; preds = %42
  ret void
}

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @xlgmac_stop_timers(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_free_irqs(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_napi_disable(%struct.xlgmac_pdata*, i32) #1

declare dso_local %struct.netdev_queue* @netdev_get_tx_queue(%struct.net_device*, i32) #1

declare dso_local i32 @netdev_tx_reset_queue(%struct.netdev_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
