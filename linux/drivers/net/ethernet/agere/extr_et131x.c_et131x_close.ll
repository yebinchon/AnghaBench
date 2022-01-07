; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.et131x_adapter = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@FMP_ADAPTER_INTERRUPT_IN_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @et131x_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @et131x_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.et131x_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.et131x_adapter* @netdev_priv(%struct.net_device* %4)
  store %struct.et131x_adapter* %5, %struct.et131x_adapter** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @et131x_down(%struct.net_device* %6)
  %8 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %9 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %8, i32 0, i32 3
  %10 = call i32 @napi_disable(i32* %9)
  %11 = load i32, i32* @FMP_ADAPTER_INTERRUPT_IN_USE, align 4
  %12 = xor i32 %11, -1
  %13 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = and i32 %15, %12
  store i32 %16, i32* %14, align 8
  %17 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %17, i32 0, i32 1
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = call i32 @free_irq(i32 %21, %struct.net_device* %22)
  %24 = load %struct.et131x_adapter*, %struct.et131x_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %24, i32 0, i32 0
  %26 = call i32 @del_timer_sync(i32* %25)
  ret i32 %26
}

declare dso_local %struct.et131x_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @et131x_down(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
