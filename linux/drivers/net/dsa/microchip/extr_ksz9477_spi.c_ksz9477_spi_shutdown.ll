; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477_spi.c_ksz9477_spi_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477_spi.c_ksz9477_spi_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.ksz_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.ksz_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spi_device*)* @ksz9477_spi_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ksz9477_spi_shutdown(%struct.spi_device* %0) #0 {
  %2 = alloca %struct.spi_device*, align 8
  %3 = alloca %struct.ksz_device*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %2, align 8
  %4 = load %struct.spi_device*, %struct.spi_device** %2, align 8
  %5 = call %struct.ksz_device* @spi_get_drvdata(%struct.spi_device* %4)
  store %struct.ksz_device* %5, %struct.ksz_device** %3, align 8
  %6 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %7 = icmp ne %struct.ksz_device* %6, null
  br i1 %7, label %8, label %23

8:                                                ; preds = %1
  %9 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %10 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (%struct.ksz_device*)*, i32 (%struct.ksz_device*)** %12, align 8
  %14 = icmp ne i32 (%struct.ksz_device*)* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %8
  %16 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %17 = getelementptr inbounds %struct.ksz_device, %struct.ksz_device* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32 (%struct.ksz_device*)*, i32 (%struct.ksz_device*)** %19, align 8
  %21 = load %struct.ksz_device*, %struct.ksz_device** %3, align 8
  %22 = call i32 %20(%struct.ksz_device* %21)
  br label %23

23:                                               ; preds = %15, %8, %1
  ret void
}

declare dso_local %struct.ksz_device* @spi_get_drvdata(%struct.spi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
