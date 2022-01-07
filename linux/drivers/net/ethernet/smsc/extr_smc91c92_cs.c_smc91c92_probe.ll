; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc91c92_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc91c92_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { %struct.net_device*, i32 }
%struct.net_device = type { i32, i32*, i32* }
%struct.smc_private = type { %struct.TYPE_2__, i32, %struct.pcmcia_device* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, %struct.net_device* }

@.str = private unnamed_addr constant [19 x i8] c"smc91c92_attach()\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@smc_netdev_ops = common dso_local global i32 0, align 4
@ethtool_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@mdio_read = common dso_local global i32 0, align 4
@mdio_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @smc91c92_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smc91c92_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.smc_private*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 1
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %9 = call %struct.net_device* @alloc_etherdev(i32 40)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.smc_private* @netdev_priv(%struct.net_device* %16)
  store %struct.smc_private* %17, %struct.smc_private** %4, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %20 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %19, i32 0, i32 2
  store %struct.pcmcia_device* %18, %struct.pcmcia_device** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 0
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %25 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.net_device*, %struct.net_device** %5, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 2
  store i32* @smc_netdev_ops, i32** %28, align 8
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 1
  store i32* @ethtool_ops, i32** %30, align 8
  %31 = load i32, i32* @TX_TIMEOUT, align 4
  %32 = load %struct.net_device*, %struct.net_device** %5, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %36 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 4
  store %struct.net_device* %34, %struct.net_device** %37, align 8
  %38 = load i32, i32* @mdio_read, align 4
  %39 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %40 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @mdio_write, align 4
  %43 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %44 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %47 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store i32 31, i32* %48, align 8
  %49 = load %struct.smc_private*, %struct.smc_private** %4, align 8
  %50 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 31, i32* %51, align 4
  %52 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %53 = call i32 @smc91c92_config(%struct.pcmcia_device* %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %15, %12
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @smc91c92_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
