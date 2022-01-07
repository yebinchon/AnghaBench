; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-spi.c_vsc73xx_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_vitesse-vsc73xx-spi.c_vsc73xx_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.vsc73xx_spi = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32*, %struct.vsc73xx_spi*, %struct.device* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vsc73xx_spi_ops = common dso_local global i32 0, align 4
@SPI_MODE_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"spi setup failed.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @vsc73xx_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc73xx_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.vsc73xx_spi*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 2
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vsc73xx_spi* @devm_kzalloc(%struct.device* %9, i32 32, i32 %10)
  store %struct.vsc73xx_spi* %11, %struct.vsc73xx_spi** %5, align 8
  %12 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %5, align 8
  %13 = icmp ne %struct.vsc73xx_spi* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %1
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %56

17:                                               ; preds = %1
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %5, align 8
  %20 = call i32 @spi_set_drvdata(%struct.spi_device* %18, %struct.vsc73xx_spi* %19)
  %21 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %22 = call i32 @spi_dev_get(%struct.spi_device* %21)
  %23 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %5, align 8
  %24 = getelementptr inbounds %struct.vsc73xx_spi, %struct.vsc73xx_spi* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %5, align 8
  %27 = getelementptr inbounds %struct.vsc73xx_spi, %struct.vsc73xx_spi* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  store %struct.device* %25, %struct.device** %28, align 8
  %29 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %5, align 8
  %30 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %5, align 8
  %31 = getelementptr inbounds %struct.vsc73xx_spi, %struct.vsc73xx_spi* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  store %struct.vsc73xx_spi* %29, %struct.vsc73xx_spi** %32, align 8
  %33 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %5, align 8
  %34 = getelementptr inbounds %struct.vsc73xx_spi, %struct.vsc73xx_spi* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32* @vsc73xx_spi_ops, i32** %35, align 8
  %36 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %5, align 8
  %37 = getelementptr inbounds %struct.vsc73xx_spi, %struct.vsc73xx_spi* %36, i32 0, i32 1
  %38 = call i32 @mutex_init(i32* %37)
  %39 = load i32, i32* @SPI_MODE_0, align 4
  %40 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %41 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %43 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %42, i32 0, i32 0
  store i32 8, i32* %43, align 4
  %44 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %45 = call i32 @spi_setup(%struct.spi_device* %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %17
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %17
  %53 = load %struct.vsc73xx_spi*, %struct.vsc73xx_spi** %5, align 8
  %54 = getelementptr inbounds %struct.vsc73xx_spi, %struct.vsc73xx_spi* %53, i32 0, i32 0
  %55 = call i32 @vsc73xx_probe(%struct.TYPE_2__* %54)
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %48, %14
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.vsc73xx_spi* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.vsc73xx_spi*) #1

declare dso_local i32 @spi_dev_get(%struct.spi_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spi_setup(%struct.spi_device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @vsc73xx_probe(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
