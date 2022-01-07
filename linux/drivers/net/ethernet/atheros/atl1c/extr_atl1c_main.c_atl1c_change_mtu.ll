; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1c/extr_atl1c_main.c_atl1c_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl1c_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@__AT_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @atl1c_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1c_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1c_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.atl1c_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.atl1c_adapter* %7, %struct.atl1c_adapter** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i64 @netif_running(%struct.net_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %2
  br label %12

12:                                               ; preds = %18, %11
  %13 = load i32, i32* @__AT_RESETTING, align 4
  %14 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %14, i32 0, i32 0
  %16 = call i64 @test_and_set_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = call i32 @msleep(i32 1)
  br label %12

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  %22 = load %struct.net_device*, %struct.net_device** %3, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = call i32 @atl1c_set_rxbufsize(%struct.atl1c_adapter* %28, %struct.net_device* %29)
  %31 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %32 = call i32 @atl1c_down(%struct.atl1c_adapter* %31)
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @netdev_update_features(%struct.net_device* %33)
  %35 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %36 = call i32 @atl1c_up(%struct.atl1c_adapter* %35)
  %37 = load i32, i32* @__AT_RESETTING, align 4
  %38 = load %struct.atl1c_adapter*, %struct.atl1c_adapter** %5, align 8
  %39 = getelementptr inbounds %struct.atl1c_adapter, %struct.atl1c_adapter* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  br label %41

41:                                               ; preds = %20, %2
  ret i32 0
}

declare dso_local %struct.atl1c_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atl1c_set_rxbufsize(%struct.atl1c_adapter*, %struct.net_device*) #1

declare dso_local i32 @atl1c_down(%struct.atl1c_adapter*) #1

declare dso_local i32 @netdev_update_features(%struct.net_device*) #1

declare dso_local i32 @atl1c_up(%struct.atl1c_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
