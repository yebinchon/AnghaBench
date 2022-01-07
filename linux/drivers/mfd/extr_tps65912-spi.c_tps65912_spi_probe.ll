; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65912-spi.c_tps65912_spi_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_tps65912-spi.c_tps65912_spi_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32, i32 }
%struct.tps65912 = type { i32, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tps65912_regmap_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to initialize register map\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @tps65912_spi_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tps65912_spi_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.tps65912*, align 8
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %5 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %6 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %5, i32 0, i32 1
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.tps65912* @devm_kzalloc(i32* %6, i32 24, i32 %7)
  store %struct.tps65912* %8, %struct.tps65912** %4, align 8
  %9 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %10 = icmp ne %struct.tps65912* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %48

14:                                               ; preds = %1
  %15 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %16 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %17 = call i32 @spi_set_drvdata(%struct.spi_device* %15, %struct.tps65912* %16)
  %18 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %19 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %18, i32 0, i32 1
  %20 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %21 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %23 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %26 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %28 = call i32 @devm_regmap_init_spi(%struct.spi_device* %27, i32* @tps65912_regmap_config)
  %29 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %30 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %32 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @IS_ERR(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %14
  %37 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %38 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %42 = getelementptr inbounds %struct.tps65912, %struct.tps65912* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @PTR_ERR(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %48

45:                                               ; preds = %14
  %46 = load %struct.tps65912*, %struct.tps65912** %4, align 8
  %47 = call i32 @tps65912_device_init(%struct.tps65912* %46)
  store i32 %47, i32* %2, align 4
  br label %48

48:                                               ; preds = %45, %36, %11
  %49 = load i32, i32* %2, align 4
  ret i32 %49
}

declare dso_local %struct.tps65912* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.tps65912*) #1

declare dso_local i32 @devm_regmap_init_spi(%struct.spi_device*, i32*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @tps65912_device_init(%struct.tps65912*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
