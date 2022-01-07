; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/8390/extr_axnet_cs.c_axnet_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.axnet_dev = type { i32, %struct.pcmcia_device* }
%struct.pcmcia_device = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"axnet_close('%s')\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @axnet_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @axnet_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.axnet_dev*, align 8
  %4 = alloca %struct.pcmcia_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.axnet_dev* @PRIV(%struct.net_device* %5)
  store %struct.axnet_dev* %6, %struct.axnet_dev** %3, align 8
  %7 = load %struct.axnet_dev*, %struct.axnet_dev** %3, align 8
  %8 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %7, i32 0, i32 1
  %9 = load %struct.pcmcia_device*, %struct.pcmcia_device** %8, align 8
  store %struct.pcmcia_device* %9, %struct.pcmcia_device** %4, align 8
  %10 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %11 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %10, i32 0, i32 1
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_dbg(i32* %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = call i32 @ax_close(%struct.net_device* %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = call i32 @free_irq(i32 %20, %struct.net_device* %21)
  %23 = load %struct.pcmcia_device*, %struct.pcmcia_device** %4, align 8
  %24 = getelementptr inbounds %struct.pcmcia_device, %struct.pcmcia_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = call i32 @netif_stop_queue(%struct.net_device* %27)
  %29 = load %struct.axnet_dev*, %struct.axnet_dev** %3, align 8
  %30 = getelementptr inbounds %struct.axnet_dev, %struct.axnet_dev* %29, i32 0, i32 0
  %31 = call i32 @del_timer_sync(i32* %30)
  ret i32 0
}

declare dso_local %struct.axnet_dev* @PRIV(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @ax_close(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
