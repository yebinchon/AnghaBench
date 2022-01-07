; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/ehea/extr_ehea_main.c_ehea_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ehea_port = type { i32, i32, i32, i32 }

@ifdown = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"disabling port\0A\00", align 1
@__EHEA_DISABLE_PORT_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ehea_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ehea_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ehea_port* @netdev_priv(%struct.net_device* %5)
  store %struct.ehea_port* %6, %struct.ehea_port** %4, align 8
  %7 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %8 = load i32, i32* @ifdown, align 4
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call i32 @netif_info(%struct.ehea_port* %7, i32 %8, %struct.net_device* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* @__EHEA_DISABLE_PORT_RESET, align 4
  %12 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %13 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %12, i32 0, i32 0
  %14 = call i32 @set_bit(i32 %11, i32* %13)
  %15 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %16 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %15, i32 0, i32 3
  %17 = call i32 @cancel_work_sync(i32* %16)
  %18 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %19 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %18, i32 0, i32 2
  %20 = call i32 @cancel_delayed_work_sync(i32* %19)
  %21 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %22 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %21, i32 0, i32 1
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @netif_tx_stop_all_queues(%struct.net_device* %24)
  %26 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %27 = call i32 @port_napi_disable(%struct.ehea_port* %26)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @ehea_down(%struct.net_device* %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %31 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %30, i32 0, i32 1
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* @__EHEA_DISABLE_PORT_RESET, align 4
  %34 = load %struct.ehea_port*, %struct.ehea_port** %4, align 8
  %35 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %34, i32 0, i32 0
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.ehea_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_info(%struct.ehea_port*, i32, %struct.net_device*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @netif_tx_stop_all_queues(%struct.net_device*) #1

declare dso_local i32 @port_napi_disable(%struct.ehea_port*) #1

declare dso_local i32 @ehea_down(%struct.net_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
