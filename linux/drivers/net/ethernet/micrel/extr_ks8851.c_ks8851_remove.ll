; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ks8851.c_ks8851_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ks8851_net = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"remove\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @ks8851_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8851_remove(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ks8851_net*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.ks8851_net* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.ks8851_net* %5, %struct.ks8851_net** %3, align 8
  %6 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %7 = call i64 @netif_msg_drv(%struct.ks8851_net* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %11 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %10, i32 0, i32 0
  %12 = call i32 @dev_info(i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %9, %1
  %14 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %15 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @unregister_netdev(i32 %16)
  %18 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %19 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @gpio_is_valid(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %13
  %24 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %25 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @gpio_set_value(i32 %26, i32 0)
  br label %28

28:                                               ; preds = %23, %13
  %29 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %30 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @regulator_disable(i32 %31)
  %33 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %34 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @regulator_disable(i32 %35)
  %37 = load %struct.ks8851_net*, %struct.ks8851_net** %3, align 8
  %38 = getelementptr inbounds %struct.ks8851_net, %struct.ks8851_net* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @free_netdev(i32 %39)
  ret i32 0
}

declare dso_local %struct.ks8851_net* @spi_get_drvdata(%struct.spi_device*) #1

declare dso_local i64 @netif_msg_drv(%struct.ks8851_net*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @unregister_netdev(i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_set_value(i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

declare dso_local i32 @free_netdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
