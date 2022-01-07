; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_ax88796.c_ax_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32 }
%struct.ax_device = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"open\0A\00", align 1
@ax_ei_interrupt_filtered = common dso_local global i32 0, align 4
@ax_ei_interrupt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ax_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ax_device*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ax_device* @to_ax_dev(%struct.net_device* %6)
  store %struct.ax_device* %7, %struct.ax_device** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @netdev_dbg(%struct.net_device* %8, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.net_device*, %struct.net_device** %3, align 8
  %11 = call i32 @ax_mii_init(%struct.net_device* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %95

15:                                               ; preds = %1
  %16 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %17 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %16, i32 0, i32 3
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @ax_ei_interrupt_filtered, align 4
  %27 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %28 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  %34 = call i32 @request_irq(i32 %25, i32 %26, i32 %29, i32 %32, %struct.net_device* %33)
  store i32 %34, i32* %5, align 4
  br label %48

35:                                               ; preds = %15
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ax_ei_interrupt, align 4
  %40 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %41 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.net_device*, %struct.net_device** %3, align 8
  %44 = getelementptr inbounds %struct.net_device, %struct.net_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @request_irq(i32 %38, i32 %39, i32 %42, i32 %45, %struct.net_device* %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %35, %22
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %86

52:                                               ; preds = %48
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @ax_phy_switch(%struct.net_device* %53, i32 1)
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @ax_mii_probe(%struct.net_device* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  br label %78

60:                                               ; preds = %52
  %61 = load %struct.net_device*, %struct.net_device** %3, align 8
  %62 = getelementptr inbounds %struct.net_device, %struct.net_device* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @phy_start(i32 %63)
  %65 = load %struct.net_device*, %struct.net_device** %3, align 8
  %66 = call i32 @ax_ei_open(%struct.net_device* %65)
  store i32 %66, i32* %5, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %60
  br label %73

70:                                               ; preds = %60
  %71 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %72 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  store i32 0, i32* %2, align 4
  br label %97

73:                                               ; preds = %69
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @phy_disconnect(i32 %76)
  br label %78

78:                                               ; preds = %73, %59
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = call i32 @ax_phy_switch(%struct.net_device* %79, i32 0)
  %81 = load %struct.net_device*, %struct.net_device** %3, align 8
  %82 = getelementptr inbounds %struct.net_device, %struct.net_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.net_device*, %struct.net_device** %3, align 8
  %85 = call i32 @free_irq(i32 %83, %struct.net_device* %84)
  br label %86

86:                                               ; preds = %78, %51
  %87 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %88 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @mdiobus_unregister(i32 %89)
  %91 = load %struct.ax_device*, %struct.ax_device** %4, align 8
  %92 = getelementptr inbounds %struct.ax_device, %struct.ax_device* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @free_mdio_bitbang(i32 %93)
  br label %95

95:                                               ; preds = %86, %14
  %96 = load i32, i32* %5, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %70
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.ax_device* @to_ax_dev(%struct.net_device*) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @ax_mii_init(%struct.net_device*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @ax_phy_switch(%struct.net_device*, i32) #1

declare dso_local i32 @ax_mii_probe(%struct.net_device*) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @ax_ei_open(%struct.net_device*) #1

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
