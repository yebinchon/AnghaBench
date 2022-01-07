; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/netup_unidvb/extr_netup_unidvb_spi.c_netup_spi_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/netup_unidvb/extr_netup_unidvb_spi.c_netup_spi_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netup_unidvb_dev = type { %struct.netup_spi* }
%struct.netup_spi = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NETUP_SPI_CTRL_IRQ = common dso_local global i32 0, align 4
@NETUP_SPI_CTRL_IMASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netup_spi_release(%struct.netup_unidvb_dev* %0) #0 {
  %2 = alloca %struct.netup_unidvb_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.netup_spi*, align 8
  store %struct.netup_unidvb_dev* %0, %struct.netup_unidvb_dev** %2, align 8
  %6 = load %struct.netup_unidvb_dev*, %struct.netup_unidvb_dev** %2, align 8
  %7 = getelementptr inbounds %struct.netup_unidvb_dev, %struct.netup_unidvb_dev* %6, i32 0, i32 0
  %8 = load %struct.netup_spi*, %struct.netup_spi** %7, align 8
  store %struct.netup_spi* %8, %struct.netup_spi** %5, align 8
  %9 = load %struct.netup_spi*, %struct.netup_spi** %5, align 8
  %10 = icmp ne %struct.netup_spi* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %54

12:                                               ; preds = %1
  %13 = load %struct.netup_spi*, %struct.netup_spi** %5, align 8
  %14 = getelementptr inbounds %struct.netup_spi, %struct.netup_spi* %13, i32 0, i32 1
  %15 = load i64, i64* %4, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load %struct.netup_spi*, %struct.netup_spi** %5, align 8
  %18 = getelementptr inbounds %struct.netup_spi, %struct.netup_spi* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @readw(i32* %20)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* @NETUP_SPI_CTRL_IRQ, align 4
  %24 = or i32 %22, %23
  %25 = load %struct.netup_spi*, %struct.netup_spi** %5, align 8
  %26 = getelementptr inbounds %struct.netup_spi, %struct.netup_spi* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @writew(i32 %24, i32* %28)
  %30 = load %struct.netup_spi*, %struct.netup_spi** %5, align 8
  %31 = getelementptr inbounds %struct.netup_spi, %struct.netup_spi* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = call i32 @readw(i32* %33)
  store i32 %34, i32* %3, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* @NETUP_SPI_CTRL_IMASK, align 4
  %37 = xor i32 %36, -1
  %38 = and i32 %35, %37
  %39 = load %struct.netup_spi*, %struct.netup_spi** %5, align 8
  %40 = getelementptr inbounds %struct.netup_spi, %struct.netup_spi* %39, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @writew(i32 %38, i32* %42)
  %44 = load %struct.netup_spi*, %struct.netup_spi** %5, align 8
  %45 = getelementptr inbounds %struct.netup_spi, %struct.netup_spi* %44, i32 0, i32 1
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load %struct.netup_spi*, %struct.netup_spi** %5, align 8
  %49 = getelementptr inbounds %struct.netup_spi, %struct.netup_spi* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @spi_unregister_master(i32 %50)
  %52 = load %struct.netup_unidvb_dev*, %struct.netup_unidvb_dev** %2, align 8
  %53 = getelementptr inbounds %struct.netup_unidvb_dev, %struct.netup_unidvb_dev* %52, i32 0, i32 0
  store %struct.netup_spi* null, %struct.netup_spi** %53, align 8
  br label %54

54:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readw(i32*) #1

declare dso_local i32 @writew(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @spi_unregister_master(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
