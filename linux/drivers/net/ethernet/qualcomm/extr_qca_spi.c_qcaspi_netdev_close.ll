; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_netdev_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qualcomm/extr_qca_spi.c_qcaspi_netdev_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qcaspi = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SPI_REG_INTR_ENABLE = common dso_local global i32 0, align 4
@wr_verify = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qcaspi_netdev_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcaspi_netdev_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.qcaspi*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.qcaspi* @netdev_priv(%struct.net_device* %4)
  store %struct.qcaspi* %5, %struct.qcaspi** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_stop_queue(%struct.net_device* %6)
  %8 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %9 = load i32, i32* @SPI_REG_INTR_ENABLE, align 4
  %10 = load i32, i32* @wr_verify, align 4
  %11 = call i32 @qcaspi_write_register(%struct.qcaspi* %8, i32 %9, i32 0, i32 %10)
  %12 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %13 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.qcaspi* %17)
  %19 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %20 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @kthread_stop(i32* %21)
  %23 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %24 = getelementptr inbounds %struct.qcaspi, %struct.qcaspi* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  %25 = load %struct.qcaspi*, %struct.qcaspi** %3, align 8
  %26 = call i32 @qcaspi_flush_tx_ring(%struct.qcaspi* %25)
  ret i32 0
}

declare dso_local %struct.qcaspi* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @qcaspi_write_register(%struct.qcaspi*, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.qcaspi*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i32 @qcaspi_flush_tx_ring(%struct.qcaspi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
