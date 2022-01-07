; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_grcan.c_grcan_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_grcan.c_grcan_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.grcan_priv = type { i32, i32, i32, %struct.TYPE_2__, i32, i32, i32, i64, i32 }
%struct.TYPE_2__ = type { i32*, i64, i32 }

@CAN_STATE_STOPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @grcan_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @grcan_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.grcan_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.grcan_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.grcan_priv* %6, %struct.grcan_priv** %3, align 8
  %7 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %8 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %7, i32 0, i32 8
  %9 = call i32 @napi_disable(i32* %8)
  %10 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %11 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %10, i32 0, i32 4
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %15 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %17 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %16, i32 0, i32 7
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %1
  %21 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %22 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %21, i32 0, i32 6
  %23 = call i32 @del_timer_sync(i32* %22)
  %24 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %25 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %24, i32 0, i32 5
  %26 = call i32 @del_timer_sync(i32* %25)
  br label %27

27:                                               ; preds = %20, %1
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @netif_stop_queue(%struct.net_device* %28)
  %30 = load %struct.net_device*, %struct.net_device** %2, align 8
  %31 = call i32 @grcan_stop_hardware(%struct.net_device* %30)
  %32 = load i32, i32* @CAN_STATE_STOPPED, align 4
  %33 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %34 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %37 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %36, i32 0, i32 4
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = getelementptr inbounds %struct.net_device, %struct.net_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i32 @free_irq(i32 %42, %struct.net_device* %43)
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @close_candev(%struct.net_device* %45)
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = call i32 @grcan_free_dma_buffers(%struct.net_device* %47)
  %49 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %50 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %53 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32* null, i32** %54, align 8
  %55 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %56 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @kfree(i32 %57)
  %59 = load %struct.grcan_priv*, %struct.grcan_priv** %3, align 8
  %60 = getelementptr inbounds %struct.grcan_priv, %struct.grcan_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @kfree(i32 %61)
  ret i32 0
}

declare dso_local %struct.grcan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @grcan_stop_hardware(%struct.net_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @close_candev(%struct.net_device*) #1

declare dso_local i32 @grcan_free_dma_buffers(%struct.net_device*) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
