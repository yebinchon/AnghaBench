; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/allwinner/extr_sun4i-emac.c_emac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.emac_board_info = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"shutting down %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @emac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_board_info*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.emac_board_info* @netdev_priv(%struct.net_device* %4)
  store %struct.emac_board_info* %5, %struct.emac_board_info** %3, align 8
  %6 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %7 = call i64 @netif_msg_ifdown(%struct.emac_board_info* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %17

9:                                                ; preds = %1
  %10 = load %struct.emac_board_info*, %struct.emac_board_info** %3, align 8
  %11 = getelementptr inbounds %struct.emac_board_info, %struct.emac_board_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dev_dbg(i32 %12, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %15)
  br label %17

17:                                               ; preds = %9, %1
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @netif_stop_queue(%struct.net_device* %18)
  %20 = load %struct.net_device*, %struct.net_device** %2, align 8
  %21 = call i32 @netif_carrier_off(%struct.net_device* %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @phy_stop(i32 %24)
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = call i32 @emac_mdio_remove(%struct.net_device* %26)
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @emac_shutdown(%struct.net_device* %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = call i32 @free_irq(i32 %32, %struct.net_device* %33)
  ret i32 0
}

declare dso_local %struct.emac_board_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_ifdown(%struct.emac_board_info*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @phy_stop(i32) #1

declare dso_local i32 @emac_mdio_remove(%struct.net_device*) #1

declare dso_local i32 @emac_shutdown(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
