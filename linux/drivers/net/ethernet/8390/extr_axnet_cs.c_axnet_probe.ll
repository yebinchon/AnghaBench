; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32, i32* }
%struct.axnet_dev = type { %struct.pcmcia_device* }
%struct.ei_device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"axnet_attach()\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@axnet_netdev_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @axnet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axnet_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.axnet_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ei_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %7 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %8 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %7, i32 0, i32 2
  %9 = call i32 @dev_dbg(i32* %8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = call %struct.net_device* @alloc_etherdev(i32 12)
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = icmp ne %struct.net_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %42

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %5, align 8
  %18 = call %struct.ei_device* @netdev_priv(%struct.net_device* %17)
  store %struct.ei_device* %18, %struct.ei_device** %6, align 8
  %19 = load %struct.ei_device*, %struct.ei_device** %6, align 8
  %20 = getelementptr inbounds %struct.ei_device, %struct.ei_device* %19, i32 0, i32 0
  %21 = call i32 @spin_lock_init(i32* %20)
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = call %struct.axnet_dev* @PRIV(%struct.net_device* %22)
  store %struct.axnet_dev* %23, %struct.axnet_dev** %4, align 8
  %24 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %25 = load %struct.axnet_dev*, %struct.axnet_dev** %4, align 8
  %26 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %25, i32 0, i32 0
  store %struct.pcmcia_device* %24, %struct.pcmcia_device** %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %29 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %28, i32 0, i32 1
  store %struct.net_device* %27, %struct.net_device** %29, align 8
  %30 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %31 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %32 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = or i32 %33, %30
  store i32 %34, i32* %32, align 8
  %35 = load %struct.net_device*, %struct.net_device** %5, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 1
  store i32* @axnet_netdev_ops, i32** %36, align 8
  %37 = load i32, i32* @TX_TIMEOUT, align 4
  %38 = load %struct.net_device*, %struct.net_device** %5, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %41 = call i32 @axnet_config(%struct.pcmcia_device* %40)
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %16, %13
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.ei_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local %struct.axnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local i32 @axnet_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
