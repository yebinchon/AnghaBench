; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_janz-ican3.c_ican3_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32 }
%struct.ican3_dev = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ican3_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ican3_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ican3_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.ican3_dev* @netdev_priv(%struct.net_device* %7)
  store %struct.ican3_dev* %8, %struct.ican3_dev** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = call i32 @unregister_netdev(%struct.net_device* %9)
  %11 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %12 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %11, i32 0, i32 4
  %13 = call i32 @napi_disable(i32* %12)
  %14 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %15 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = shl i32 1, %16
  %18 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %19 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @iowrite8(i32 %17, i32* %21)
  %23 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %24 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %27 = call i32 @free_irq(i32 %25, %struct.ican3_dev* %26)
  %28 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %29 = call i32 @ican3_shutdown_module(%struct.ican3_dev* %28)
  %30 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %31 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = call i32 @iounmap(%struct.TYPE_2__* %32)
  %34 = load %struct.ican3_dev*, %struct.ican3_dev** %4, align 8
  %35 = getelementptr inbounds %struct.ican3_dev, %struct.ican3_dev* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = call i32 @iounmap(%struct.TYPE_2__* %36)
  %38 = load %struct.net_device*, %struct.net_device** %3, align 8
  %39 = call i32 @free_candev(%struct.net_device* %38)
  ret i32 0
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ican3_dev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @iowrite8(i32, i32*) #1

declare dso_local i32 @free_irq(i32, %struct.ican3_dev*) #1

declare dso_local i32 @ican3_shutdown_module(%struct.ican3_dev*) #1

declare dso_local i32 @iounmap(%struct.TYPE_2__*) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
