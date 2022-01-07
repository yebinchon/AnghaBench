; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_korina.c_korina_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_korina.c_korina_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.korina_private = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@DMA_STAT_FINI = common dso_local global i32 0, align 4
@DMA_STAT_ERR = common dso_local global i32 0, align 4
@DMA_STAT_DONE = common dso_local global i32 0, align 4
@DMA_STAT_HALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @korina_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @korina_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.korina_private*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.korina_private* @netdev_priv(%struct.net_device* %5)
  store %struct.korina_private* %6, %struct.korina_private** %3, align 8
  %7 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %8 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %7, i32 0, i32 6
  %9 = call i32 @del_timer(i32* %8)
  %10 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %11 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @disable_irq(i32 %12)
  %14 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %15 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @disable_irq(i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = call i32 @korina_abort_tx(%struct.net_device* %18)
  %20 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %21 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %20, i32 0, i32 5
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @readl(i32* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @DMA_STAT_FINI, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DMA_STAT_ERR, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %32 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %31, i32 0, i32 5
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = call i32 @writel(i32 %30, i32* %34)
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @korina_abort_rx(%struct.net_device* %36)
  %38 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %39 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %38, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = call i32 @readl(i32* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @DMA_STAT_DONE, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @DMA_STAT_HALT, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @DMA_STAT_ERR, align 4
  %49 = or i32 %47, %48
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %52 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %51, i32 0, i32 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = call i32 @writel(i32 %50, i32* %54)
  %56 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %57 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %56, i32 0, i32 3
  %58 = call i32 @napi_disable(i32* %57)
  %59 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %60 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %59, i32 0, i32 2
  %61 = call i32 @cancel_work_sync(i32* %60)
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = call i32 @korina_free_ring(%struct.net_device* %62)
  %64 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %65 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = call i32 @free_irq(i32 %66, %struct.net_device* %67)
  %69 = load %struct.korina_private*, %struct.korina_private** %3, align 8
  %70 = getelementptr inbounds %struct.korina_private, %struct.korina_private* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %2, align 8
  %73 = call i32 @free_irq(i32 %71, %struct.net_device* %72)
  ret i32 0
}

declare dso_local %struct.korina_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @korina_abort_tx(%struct.net_device*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @korina_abort_rx(%struct.net_device*) #1

declare dso_local i32 @napi_disable(i32*) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @korina_free_ring(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
