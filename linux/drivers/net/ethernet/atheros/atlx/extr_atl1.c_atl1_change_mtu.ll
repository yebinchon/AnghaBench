; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_change_mtu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.atl1_adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @atl1_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atl1_adapter*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.atl1_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.atl1_adapter* %8, %struct.atl1_adapter** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @ETH_HLEN, align 4
  %11 = add nsw i32 %9, %10
  %12 = load i32, i32* @ETH_FCS_LEN, align 4
  %13 = add nsw i32 %11, %12
  %14 = load i32, i32* @VLAN_HLEN, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %18 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  store i32 %16, i32* %19, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %20, 7
  %22 = ashr i32 %21, 3
  %23 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %24 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 7
  %28 = and i32 %27, -8
  %29 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %30 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %32 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sdiv i32 %33, 8
  %35 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %36 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.net_device*, %struct.net_device** %3, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i64 @netif_running(%struct.net_device* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %2
  %45 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %46 = call i32 @atl1_down(%struct.atl1_adapter* %45)
  %47 = load %struct.atl1_adapter*, %struct.atl1_adapter** %5, align 8
  %48 = call i32 @atl1_up(%struct.atl1_adapter* %47)
  br label %49

49:                                               ; preds = %44, %2
  ret i32 0
}

declare dso_local %struct.atl1_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @atl1_down(%struct.atl1_adapter*) #1

declare dso_local i32 @atl1_up(%struct.atl1_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
