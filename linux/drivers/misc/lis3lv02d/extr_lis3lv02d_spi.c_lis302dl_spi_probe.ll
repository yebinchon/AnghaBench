; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d_spi.c_lis302dl_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/lis3lv02d/extr_lis3lv02d_spi.c_lis302dl_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, %struct.spi_device* }
%struct.spi_device = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@SPI_MODE_0 = common dso_local global i32 0, align 4
@lis3_dev = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@lis3_spi_init = common dso_local global i32 0, align 4
@lis3_spi_read = common dso_local global i32 0, align 4
@lis3_spi_write = common dso_local global i32 0, align 4
@lis3lv02d_axis_normal = common dso_local global i32 0, align 4
@lis302dl_spi_dt_ids = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @lis302dl_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lis302dl_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 0
  store i32 8, i32* %6, align 4
  %7 = load i32, i32* @SPI_MODE_0, align 4
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %8, i32 0, i32 3
  store i32 %7, i32* %9, align 4
  %10 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %11 = call i32 @spi_setup(%struct.spi_device* %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  store %struct.spi_device* %17, %struct.spi_device** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lis3_dev, i32 0, i32 7), align 8
  %18 = load i32, i32* @lis3_spi_init, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lis3_dev, i32 0, i32 6), align 8
  %19 = load i32, i32* @lis3_spi_read, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lis3_dev, i32 0, i32 5), align 4
  %20 = load i32, i32* @lis3_spi_write, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lis3_dev, i32 0, i32 4), align 8
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lis3_dev, i32 0, i32 3), align 4
  %24 = load i32, i32* @lis3lv02d_axis_normal, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lis3_dev, i32 0, i32 2), align 8
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @lis3_dev, i32 0, i32 1), align 4
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = call i32 @spi_set_drvdata(%struct.spi_device* %29, %struct.TYPE_6__* @lis3_dev)
  %31 = call i32 @lis3lv02d_init_device(%struct.TYPE_6__* @lis3_dev)
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %16, %14
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.TYPE_6__*) #1

declare dso_local i32 @lis3lv02d_init_device(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
