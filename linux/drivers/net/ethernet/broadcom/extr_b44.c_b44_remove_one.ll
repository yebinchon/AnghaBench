; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_remove_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_b44.c_b44_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_device = type { i32 }
%struct.net_device = type { i32 }
%struct.b44 = type { i32, i32 }

@B44_FLAG_EXTERNAL_PHY = common dso_local global i32 0, align 4
@PCI_D3hot = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_device*)* @b44_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_remove_one(%struct.ssb_device* %0) #0 {
  %2 = alloca %struct.ssb_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.b44*, align 8
  store %struct.ssb_device* %0, %struct.ssb_device** %2, align 8
  %5 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %6 = call %struct.net_device* @ssb_get_drvdata(%struct.ssb_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.b44* @netdev_priv(%struct.net_device* %7)
  store %struct.b44* %8, %struct.b44** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.b44*, %struct.b44** %4, align 8
  %12 = getelementptr inbounds %struct.b44, %struct.b44* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @B44_FLAG_EXTERNAL_PHY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.b44*, %struct.b44** %4, align 8
  %19 = call i32 @b44_unregister_phy_one(%struct.b44* %18)
  br label %20

20:                                               ; preds = %17, %1
  %21 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %22 = call i32 @ssb_device_disable(%struct.ssb_device* %21, i32 0)
  %23 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %24 = getelementptr inbounds %struct.ssb_device, %struct.ssb_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ssb_bus_may_powerdown(i32 %25)
  %27 = load %struct.b44*, %struct.b44** %4, align 8
  %28 = getelementptr inbounds %struct.b44, %struct.b44* %27, i32 0, i32 1
  %29 = call i32 @netif_napi_del(i32* %28)
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @free_netdev(%struct.net_device* %30)
  %32 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %33 = load i32, i32* @PCI_D3hot, align 4
  %34 = call i32 @ssb_pcihost_set_power_state(%struct.ssb_device* %32, i32 %33)
  %35 = load %struct.ssb_device*, %struct.ssb_device** %2, align 8
  %36 = call i32 @ssb_set_drvdata(%struct.ssb_device* %35, i32* null)
  ret void
}

declare dso_local %struct.net_device* @ssb_get_drvdata(%struct.ssb_device*) #1

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @b44_unregister_phy_one(%struct.b44*) #1

declare dso_local i32 @ssb_device_disable(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_bus_may_powerdown(i32) #1

declare dso_local i32 @netif_napi_del(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @ssb_pcihost_set_power_state(%struct.ssb_device*, i32) #1

declare dso_local i32 @ssb_set_drvdata(%struct.ssb_device*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
