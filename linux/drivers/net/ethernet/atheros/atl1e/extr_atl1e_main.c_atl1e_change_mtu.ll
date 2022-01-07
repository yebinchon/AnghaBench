; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atl1e/extr_atl1e_main.c_atl1e_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl1e_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@__AT_RESETTING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @atl1e_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1e_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1e_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl1e_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl1e_adapter* %8, %struct.atl1e_adapter** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ETH_HLEN, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* @ETH_FCS_LEN, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* @VLAN_HLEN, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = call i64 @netif_running(%struct.net_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %50

19:                                               ; preds = %2
  br label %20

20:                                               ; preds = %26, %19
  %21 = load i32, i32* @__AT_RESETTING, align 4
  %22 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %23 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %22, i32 0, i32 0
  %24 = call i64 @test_and_set_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @msleep(i32 1)
  br label %20

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %34 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 7
  %38 = ashr i32 %37, 3
  %39 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %40 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %43 = call i32 @atl1e_down(%struct.atl1e_adapter* %42)
  %44 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %45 = call i32 @atl1e_up(%struct.atl1e_adapter* %44)
  %46 = load i32, i32* @__AT_RESETTING, align 4
  %47 = load %struct.atl1e_adapter*, %struct.atl1e_adapter** %5, align 8
  %48 = getelementptr inbounds %struct.atl1e_adapter, %struct.atl1e_adapter* %47, i32 0, i32 0
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %28, %2
  ret i32 0
}

declare dso_local %struct.atl1e_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @atl1e_down(%struct.atl1e_adapter*) #1

declare dso_local i32 @atl1e_up(%struct.atl1e_adapter*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
