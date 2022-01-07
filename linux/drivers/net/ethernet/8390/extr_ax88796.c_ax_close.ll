; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.ax_device = type { i32, i64 }

@.str = private unnamed_addr constant [7 x i8] c"close\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ax_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ax_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %4)
  store %struct.ax_device* %5, %struct.ax_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netdev_dbg(%struct.net_device* %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %9 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %8, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = call i32 (...) @wmb()
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @ax_ei_close(%struct.net_device* %11)
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = call i32 @ax_phy_switch(%struct.net_device* %13, i32 0)
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @phy_disconnect(i32 %17)
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.net_device* %22)
  %24 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %25 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @mdiobus_unregister(i32 %26)
  %28 = load %struct.ax_device*, %struct.ax_device** %3, align 8
  %29 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @free_mdio_bitbang(i32 %30)
  ret i32 0
}

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @ax_ei_close(%struct.net_device*) #1

declare dso_local i32 @ax_phy_switch(%struct.net_device*, i32) #1

declare dso_local i32 @phy_disconnect(i32) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @mdiobus_unregister(i32) #1

declare dso_local i32 @free_mdio_bitbang(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
