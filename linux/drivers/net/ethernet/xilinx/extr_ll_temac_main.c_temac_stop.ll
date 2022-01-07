; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xilinx/extr_ll_temac_main.c_temac_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.phy_device* }
%struct.phy_device = type { i32 }
%struct.temac_local = type { i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"temac_close()\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @temac_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @temac_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.temac_local*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.temac_local* @netdev_priv(%struct.net_device* %5)
  store %struct.temac_local* %6, %struct.temac_local** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 1
  %9 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  store %struct.phy_device* %9, %struct.phy_device** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %14 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @free_irq(i32 %15, %struct.net_device* %16)
  %18 = load %struct.temac_local*, %struct.temac_local** %3, align 8
  %19 = getelementptr inbounds %struct.temac_local, %struct.temac_local* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.net_device* %21)
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = icmp ne %struct.phy_device* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %27 = call i32 @phy_disconnect(%struct.phy_device* %26)
  br label %28

28:                                               ; preds = %25, %1
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = call i32 @temac_dma_bd_release(%struct.net_device* %29)
  ret i32 0
}

declare dso_local %struct.temac_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

declare dso_local i32 @temac_dma_bd_release(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
