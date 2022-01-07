; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/spi/extr_gs1662.c_gs_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/spi/extr_gs1662.c_gs_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.spi_device = type { i32, i32, i32, i32, i32 }
%struct.gs = type { i64, i32, %struct.v4l2_subdev, %struct.spi_device* }
%struct.v4l2_subdev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@gs_ops = common dso_local global i32 0, align 4
@reg_fmt = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @gs_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gs_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gs*, align 8
  %6 = alloca %struct.v4l2_subdev*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.gs* @devm_kzalloc(i32* %8, i32 24, i32 %9)
  store %struct.gs* %10, %struct.gs** %5, align 8
  %11 = load %struct.gs*, %struct.gs** %5, align 8
  %12 = icmp ne %struct.gs* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = load %struct.gs*, %struct.gs** %5, align 8
  %19 = getelementptr inbounds %struct.gs, %struct.gs* %18, i32 0, i32 3
  store %struct.spi_device* %17, %struct.spi_device** %19, align 8
  %20 = load %struct.gs*, %struct.gs** %5, align 8
  %21 = getelementptr inbounds %struct.gs, %struct.gs* %20, i32 0, i32 2
  store %struct.v4l2_subdev* %21, %struct.v4l2_subdev** %6, align 8
  %22 = load i32, i32* @SPI_MODE_0, align 4
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %26 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %25, i32 0, i32 0
  store i32 -1, i32* %26, align 4
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %27, i32 0, i32 1
  store i32 10000000, i32* %28, align 4
  %29 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %30 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %29, i32 0, i32 2
  store i32 16, i32* %30, align 4
  %31 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %32 = call i32 @spi_setup(%struct.spi_device* %31)
  store i32 %32, i32* %4, align 4
  %33 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %6, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %35 = call i32 @v4l2_spi_subdev_init(%struct.v4l2_subdev* %33, %struct.spi_device* %34, i32* @gs_ops)
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @reg_fmt, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gs*, %struct.gs** %5, align 8
  %41 = getelementptr inbounds %struct.gs, %struct.gs* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 8
  %42 = load %struct.gs*, %struct.gs** %5, align 8
  %43 = getelementptr inbounds %struct.gs, %struct.gs* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = call i32 @gs_write_register(%struct.spi_device* %44, i32 0, i32 768)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %16, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local %struct.gs* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @v4l2_spi_subdev_init(%struct.v4l2_subdev*, %struct.spi_device*, i32*) #1

declare dso_local i32 @gs_write_register(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
