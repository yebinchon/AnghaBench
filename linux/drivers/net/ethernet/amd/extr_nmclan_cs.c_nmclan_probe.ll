; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_nmclan_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_nmclan_cs.c_nmclan_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, i32, i32, %struct.TYPE_4__**, %struct.net_device*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { i32, i32*, i32* }
%struct.TYPE_5__ = type { i32, i32, %struct.pcmcia_device* }

@.str = private unnamed_addr constant [17 x i8] c"nmclan_attach()\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@IO_DATA_PATH_WIDTH_AUTO = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@PRESENT_OPTION = common dso_local global i32 0, align 4
@AM2150_MAX_TX_FRAMES = common dso_local global i32 0, align 4
@mace_netdev_ops = common dso_local global i32 0, align 4
@netdev_ethtool_ops = common dso_local global i32 0, align 4
@TX_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @nmclan_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nmclan_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.net_device*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 5
  %8 = call i32 @dev_dbg(i32* %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = call %struct.net_device* @alloc_etherdev(i32 16)
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call %struct.TYPE_5__* @netdev_priv(%struct.net_device* %16)
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %4, align 8
  %18 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store %struct.pcmcia_device* %18, %struct.pcmcia_device** %20, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 4
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = call i32 @spin_lock_init(i32* %25)
  %27 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %28 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %27, i32 0, i32 3
  %29 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %29, i64 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store i32 32, i32* %32, align 4
  %33 = load i32, i32* @IO_DATA_PATH_WIDTH_AUTO, align 4
  %34 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %35 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %34, i32 0, i32 3
  %36 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %36, i64 0
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %33
  store i32 %41, i32* %39, align 4
  %42 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %43 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %44 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 8
  %47 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %48 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load i32, i32* @PRESENT_OPTION, align 4
  %50 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %51 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* @AM2150_MAX_TX_FRAMES, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 2
  store i32* @mace_netdev_ops, i32** %56, align 8
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 1
  store i32* @netdev_ethtool_ops, i32** %58, align 8
  %59 = load i32, i32* @TX_TIMEOUT, align 4
  %60 = load %struct.net_device*, %struct.net_device** %5, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %63 = call i32 @nmclan_config(%struct.pcmcia_device* %62)
  store i32 %63, i32* %2, align 4
  br label %64

64:                                               ; preds = %15, %12
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.TYPE_5__* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @nmclan_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
