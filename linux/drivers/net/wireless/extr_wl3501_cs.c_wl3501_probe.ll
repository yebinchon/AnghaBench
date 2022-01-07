; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/extr_wl3501_cs.c_wl3501_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32, %struct.net_device*, i32, %struct.TYPE_3__** }
%struct.net_device = type { i32, i32*, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.wl3501_card = type { %struct.TYPE_4__, %struct.pcmcia_device*, i32 }

@IO_DATA_PATH_WIDTH_8 = common dso_local global i32 0, align 4
@CONF_ENABLE_IRQ = common dso_local global i32 0, align 4
@wl3501_netdev_ops = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@wl3501_handler_def = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*)* @wl3501_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl3501_probe(%struct.pcmcia_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.wl3501_card*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %3, align 8
  %6 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %7 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %8, i64 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  store i32 16, i32* %11, align 4
  %12 = load i32, i32* @IO_DATA_PATH_WIDTH_8, align 4
  %13 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %14 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %13, i32 0, i32 3
  %15 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %15, i64 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  store i32 %12, i32* %18, align 4
  %19 = load i32, i32* @CONF_ENABLE_IRQ, align 4
  %20 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %21 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 8
  %22 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = call %struct.net_device* @alloc_etherdev(i32 24)
  store %struct.net_device* %24, %struct.net_device** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %4, align 8
  %26 = icmp ne %struct.net_device* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %1
  br label %58

28:                                               ; preds = %1
  %29 = load %struct.net_device*, %struct.net_device** %4, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 3
  store i32* @wl3501_netdev_ops, i32** %30, align 8
  %31 = load i32, i32* @HZ, align 4
  %32 = mul nsw i32 5, %31
  %33 = load %struct.net_device*, %struct.net_device** %4, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call %struct.wl3501_card* @netdev_priv(%struct.net_device* %35)
  store %struct.wl3501_card* %36, %struct.wl3501_card** %5, align 8
  %37 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %38 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %37, i32 0, i32 2
  %39 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %40 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32* %38, i32** %41, align 8
  %42 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %43 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %44 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %43, i32 0, i32 1
  store %struct.pcmcia_device* %42, %struct.pcmcia_device** %44, align 8
  %45 = load %struct.wl3501_card*, %struct.wl3501_card** %5, align 8
  %46 = getelementptr inbounds %struct.wl3501_card, %struct.wl3501_card* %45, i32 0, i32 0
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = getelementptr inbounds %struct.net_device, %struct.net_device* %47, i32 0, i32 2
  store %struct.TYPE_4__* %46, %struct.TYPE_4__** %48, align 8
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = getelementptr inbounds %struct.net_device, %struct.net_device* %49, i32 0, i32 1
  store i32* @wl3501_handler_def, i32** %50, align 8
  %51 = load %struct.net_device*, %struct.net_device** %4, align 8
  %52 = call i32 @netif_stop_queue(%struct.net_device* %51)
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %55 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %54, i32 0, i32 1
  store %struct.net_device* %53, %struct.net_device** %55, align 8
  %56 = load %struct.pcmcia_device*, %struct.pcmcia_device** %3, align 8
  %57 = call i32 @wl3501_config(%struct.pcmcia_device* %56)
  store i32 %57, i32* %2, align 4
  br label %61

58:                                               ; preds = %27
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %58, %28
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.wl3501_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @wl3501_config(%struct.pcmcia_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
