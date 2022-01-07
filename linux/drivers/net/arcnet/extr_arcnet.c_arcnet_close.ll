; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_arcnet_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_arcnet_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 (%struct.net_device*)*, i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)* }

@ARCNET_LED_EVENT_STOP = common dso_local global i32 0, align 4
@NOTXcmd = common dso_local global i32 0, align 4
@NORXcmd = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arcnet_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.arcnet_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %4)
  store %struct.arcnet_local* %5, %struct.arcnet_local** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = load i32, i32* @ARCNET_LED_EVENT_STOP, align 4
  %8 = call i32 @arcnet_led_event(%struct.net_device* %6, i32 %7)
  %9 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %10 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %9, i32 0, i32 2
  %11 = call i32 @del_timer_sync(i32* %10)
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = call i32 @netif_carrier_off(%struct.net_device* %14)
  %16 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %17 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %16, i32 0, i32 1
  %18 = call i32 @tasklet_kill(i32* %17)
  %19 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %20 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %21, align 8
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = call i32 %22(%struct.net_device* %23, i32 0)
  %25 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %26 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %27, align 8
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = load i32, i32* @NOTXcmd, align 4
  %31 = call i32 %28(%struct.net_device* %29, i32 %30)
  %32 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %33 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  %35 = load i32 (%struct.net_device*, i32)*, i32 (%struct.net_device*, i32)** %34, align 8
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i32, i32* @NORXcmd, align 4
  %38 = call i32 %35(%struct.net_device* %36, i32 %37)
  %39 = call i32 @mdelay(i32 1)
  %40 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %41 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = load i32 (%struct.net_device*)*, i32 (%struct.net_device*)** %42, align 8
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = call i32 %43(%struct.net_device* %44)
  %46 = load %struct.arcnet_local*, %struct.arcnet_local** %3, align 8
  %47 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @module_put(i32 %49)
  ret i32 0
}

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @arcnet_led_event(%struct.net_device*, i32) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
