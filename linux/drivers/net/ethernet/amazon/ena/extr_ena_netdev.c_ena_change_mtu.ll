; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_netdev.c_ena_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ena_adapter = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"set MTU to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Failed to set MTU to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ena_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ena_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ena_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ena_adapter* %8, %struct.ena_adapter** %5, align 8
  %9 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @ena_com_set_dev_mtu(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %18 = load i32, i32* @drv, align 4
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @netif_dbg(%struct.ena_adapter* %17, i32 %18, %struct.net_device* %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @update_rx_ring_mtu(%struct.ena_adapter* %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.net_device*, %struct.net_device** %3, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %34

28:                                               ; preds = %2
  %29 = load %struct.ena_adapter*, %struct.ena_adapter** %5, align 8
  %30 = load i32, i32* @drv, align 4
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @netif_err(%struct.ena_adapter* %29, i32 %30, %struct.net_device* %31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %28, %16
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ena_com_set_dev_mtu(i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.ena_adapter*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @update_rx_ring_mtu(%struct.ena_adapter*, i32) #1

declare dso_local i32 @netif_err(%struct.ena_adapter*, i32, %struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
