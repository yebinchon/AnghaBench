; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_ibmvnic_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.ibmvnic_adapter = type { i32 }

@VNIC_REMOVING = common dso_local global i32 0, align 4
@VNIC_REMOVED = common dso_local global i32 0, align 4
@dev_attr_failover = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vio_dev*)* @ibmvnic_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvnic_remove(%struct.vio_dev* %0) #0 {
  %2 = alloca %struct.vio_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  store %struct.vio_dev* %0, %struct.vio_dev** %2, align 8
  %5 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %6 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %5, i32 0, i32 0
  %7 = call %struct.net_device* @dev_get_drvdata(i32* %6)
  store %struct.net_device* %7, %struct.net_device** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device* %8)
  store %struct.ibmvnic_adapter* %9, %struct.ibmvnic_adapter** %4, align 8
  %10 = load i32, i32* @VNIC_REMOVING, align 4
  %11 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = call i32 (...) @rtnl_lock()
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = call i32 @unregister_netdevice(%struct.net_device* %14)
  %16 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %17 = call i32 @release_resources(%struct.ibmvnic_adapter* %16)
  %18 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %19 = call i32 @release_sub_crqs(%struct.ibmvnic_adapter* %18, i32 1)
  %20 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %21 = call i32 @release_crq_queue(%struct.ibmvnic_adapter* %20)
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %23 = call i32 @release_stats_token(%struct.ibmvnic_adapter* %22)
  %24 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %25 = call i32 @release_stats_buffers(%struct.ibmvnic_adapter* %24)
  %26 = load i32, i32* @VNIC_REMOVED, align 4
  %27 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = call i32 (...) @rtnl_unlock()
  %30 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %31 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %30, i32 0, i32 0
  %32 = call i32 @device_remove_file(i32* %31, i32* @dev_attr_failover)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @free_netdev(%struct.net_device* %33)
  %35 = load %struct.vio_dev*, %struct.vio_dev** %2, align 8
  %36 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %35, i32 0, i32 0
  %37 = call i32 @dev_set_drvdata(i32* %36, i32* null)
  ret i32 0
}

declare dso_local %struct.net_device* @dev_get_drvdata(i32*) #1

declare dso_local %struct.ibmvnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @unregister_netdevice(%struct.net_device*) #1

declare dso_local i32 @release_resources(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @release_sub_crqs(%struct.ibmvnic_adapter*, i32) #1

declare dso_local i32 @release_crq_queue(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @release_stats_token(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @release_stats_buffers(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @dev_set_drvdata(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
