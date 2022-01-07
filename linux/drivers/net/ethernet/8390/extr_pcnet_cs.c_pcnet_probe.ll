; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_pcnet_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_pcnet_cs.c_pcnet_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.net_device*, i32 }
%struct.net_device = type { i32* }
%struct.pcnet_dev = type { %struct.pcmcia_device* }

@.str = private unnamed_addr constant [16 x i8] c"pcnet_attach()\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@CONF_AUTO_SET_IO = common dso_local global i32 0, align 4
@pcnet_netdev_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @pcnet_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.pcnet_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 2
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %9 = call %struct.net_device* @__alloc_ei_netdev(i32 8)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.pcnet_dev* @PRIV(%struct.net_device* %16)
  store %struct.pcnet_dev* %17, %struct.pcnet_dev** %4, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = load %struct.pcnet_dev*, %struct.pcnet_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pcnet_dev, %struct.pcnet_dev* %19, i32 0, i32 0
  store %struct.pcmcia_device* %18, %struct.pcmcia_device** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 1
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %25 = load i32, i32* @CONF_AUTO_SET_IO, align 4
  %26 = or i32 %24, %25
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load %struct.net_device*, %struct.net_device** %5, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  store i32* @pcnet_netdev_ops, i32** %32, align 8
  %33 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %34 = call i32 @pcnet_config(%struct.pcmcia_device* %33)
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %15, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.net_device* @__alloc_ei_netdev(i32) #1

declare dso_local %struct.pcnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local i32 @pcnet_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
