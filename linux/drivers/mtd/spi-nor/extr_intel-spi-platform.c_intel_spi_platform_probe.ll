; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi-platform.c_intel_spi_platform_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_intel-spi-platform.c_intel_spi_platform_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.intel_spi_boardinfo = type { i32 }
%struct.intel_spi = type { i32 }
%struct.resource = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@IORESOURCE_MEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @intel_spi_platform_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_spi_platform_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.intel_spi_boardinfo*, align 8
  %5 = alloca %struct.intel_spi*, align 8
  %6 = alloca %struct.resource*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.intel_spi_boardinfo* @dev_get_platdata(i32* %8)
  store %struct.intel_spi_boardinfo* %9, %struct.intel_spi_boardinfo** %4, align 8
  %10 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %4, align 8
  %11 = icmp ne %struct.intel_spi_boardinfo* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load i32, i32* @IORESOURCE_MEM, align 4
  %18 = call %struct.resource* @platform_get_resource(%struct.platform_device* %16, i32 %17, i32 0)
  store %struct.resource* %18, %struct.resource** %6, align 8
  %19 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %20 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %19, i32 0, i32 0
  %21 = load %struct.resource*, %struct.resource** %6, align 8
  %22 = load %struct.intel_spi_boardinfo*, %struct.intel_spi_boardinfo** %4, align 8
  %23 = call %struct.intel_spi* @intel_spi_probe(i32* %20, %struct.resource* %21, %struct.intel_spi_boardinfo* %22)
  store %struct.intel_spi* %23, %struct.intel_spi** %5, align 8
  %24 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %25 = call i64 @IS_ERR(%struct.intel_spi* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %15
  %28 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %29 = call i32 @PTR_ERR(%struct.intel_spi* %28)
  store i32 %29, i32* %2, align 4
  br label %34

30:                                               ; preds = %15
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = load %struct.intel_spi*, %struct.intel_spi** %5, align 8
  %33 = call i32 @platform_set_drvdata(%struct.platform_device* %31, %struct.intel_spi* %32)
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %30, %27, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local %struct.intel_spi_boardinfo* @dev_get_platdata(i32*) #1

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.intel_spi* @intel_spi_probe(i32*, %struct.resource*, %struct.intel_spi_boardinfo*) #1

declare dso_local i64 @IS_ERR(%struct.intel_spi*) #1

declare dso_local i32 @PTR_ERR(%struct.intel_spi*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.intel_spi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
