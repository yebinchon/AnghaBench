; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_uninit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/caif/extr_caif_spi.c_cfspi_uninit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cfspi = type { i32, i32, i32, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32*, i32*, i32, i32 }

@cfspi_list_lock = common dso_local global i32 0, align 4
@SPI_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cfspi_uninit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cfspi_uninit(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.cfspi*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.cfspi* @netdev_priv(%struct.net_device* %4)
  store %struct.cfspi* %5, %struct.cfspi** %3, align 8
  %6 = call i32 @spin_lock(i32* @cfspi_list_lock)
  %7 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %8 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %7, i32 0, i32 5
  %9 = call i32 @list_del(i32* %8)
  %10 = call i32 @spin_unlock(i32* @cfspi_list_lock)
  %11 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %12 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %11, i32 0, i32 4
  store i32* null, i32** %12, align 8
  %13 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %14 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %15 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %19 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @dma_free(%struct.cfspi* %13, i32 %17, i32 %21)
  %23 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %24 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %25 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %24, i32 0, i32 3
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %31 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @dma_free(%struct.cfspi* %23, i32 %29, i32 %35)
  %37 = load i32, i32* @SPI_TERMINATE, align 4
  %38 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %39 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %38, i32 0, i32 2
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %42 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %41, i32 0, i32 1
  %43 = call i32 @wake_up_interruptible(i32* %42)
  %44 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %45 = getelementptr inbounds %struct.cfspi, %struct.cfspi* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @destroy_workqueue(i32 %46)
  %48 = load %struct.cfspi*, %struct.cfspi** %3, align 8
  %49 = call i32 @dev_debugfs_rem(%struct.cfspi* %48)
  ret void
}

declare dso_local %struct.cfspi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dma_free(%struct.cfspi*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @dev_debugfs_rem(%struct.cfspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
