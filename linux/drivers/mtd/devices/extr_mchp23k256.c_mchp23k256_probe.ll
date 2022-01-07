; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mchp23k256.c_mchp23k256_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_mchp23k256.c_mchp23k256_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.spi_device = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }
%struct.mchp23k256_flash = type { %struct.TYPE_12__, %struct.TYPE_10__*, i32, %struct.spi_device* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__* }
%struct.flash_platform_data = type { i32, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mchp23k256_caps = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@MTD_RAM = common dso_local global i32 0, align 4
@MTD_CAP_RAM = common dso_local global i32 0, align 4
@mchp23k256_read = common dso_local global i32 0, align 4
@mchp23k256_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @mchp23k256_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mchp23k256_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.mchp23k256_flash*, align 8
  %5 = alloca %struct.flash_platform_data*, align 8
  %6 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %7 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %8 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %7, i32 0, i32 0
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.mchp23k256_flash* @devm_kzalloc(%struct.TYPE_11__* %8, i32 56, i32 %9)
  store %struct.mchp23k256_flash* %10, %struct.mchp23k256_flash** %4, align 8
  %11 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %12 = icmp ne %struct.mchp23k256_flash* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %115

16:                                               ; preds = %1
  %17 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %18 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %19 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %18, i32 0, i32 3
  store %struct.spi_device* %17, %struct.spi_device** %19, align 8
  %20 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %21 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %20, i32 0, i32 2
  %22 = call i32 @mutex_init(i32* %21)
  %23 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %24 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %25 = call i32 @spi_set_drvdata(%struct.spi_device* %23, %struct.mchp23k256_flash* %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = call i32 @mchp23k256_set_mode(%struct.spi_device* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %2, align 4
  br label %115

32:                                               ; preds = %16
  %33 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %34 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %33, i32 0, i32 0
  %35 = call %struct.flash_platform_data* @dev_get_platdata(%struct.TYPE_11__* %34)
  store %struct.flash_platform_data* %35, %struct.flash_platform_data** %5, align 8
  %36 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %37 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %36, i32 0, i32 0
  %38 = call %struct.TYPE_10__* @of_device_get_match_data(%struct.TYPE_11__* %37)
  %39 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %40 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %39, i32 0, i32 1
  store %struct.TYPE_10__* %38, %struct.TYPE_10__** %40, align 8
  %41 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %42 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %41, i32 0, i32 1
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = icmp ne %struct.TYPE_10__* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %32
  %46 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %47 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %46, i32 0, i32 1
  store %struct.TYPE_10__* @mchp23k256_caps, %struct.TYPE_10__** %47, align 8
  br label %48

48:                                               ; preds = %45, %32
  %49 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %50 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %49, i32 0, i32 0
  %51 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %52 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @mtd_set_of_node(%struct.TYPE_12__* %50, i32 %54)
  %56 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %57 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %56, i32 0, i32 0
  %58 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %59 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 6
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  store %struct.TYPE_11__* %57, %struct.TYPE_11__** %61, align 8
  %62 = load i32, i32* @MTD_RAM, align 4
  %63 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %64 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 5
  store i32 %62, i32* %65, align 4
  %66 = load i32, i32* @MTD_CAP_RAM, align 4
  %67 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %68 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 4
  store i32 %66, i32* %69, align 8
  %70 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %71 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i32 1, i32* %72, align 8
  %73 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %74 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %73, i32 0, i32 1
  %75 = load %struct.TYPE_10__*, %struct.TYPE_10__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %79 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load i32, i32* @mchp23k256_read, align 4
  %82 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %83 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load i32, i32* @mchp23k256_write, align 4
  %86 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %87 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.mchp23k256_flash*, %struct.mchp23k256_flash** %4, align 8
  %90 = getelementptr inbounds %struct.mchp23k256_flash, %struct.mchp23k256_flash* %89, i32 0, i32 0
  %91 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %92 = icmp ne %struct.flash_platform_data* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %48
  %94 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %95 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  br label %98

97:                                               ; preds = %48
  br label %98

98:                                               ; preds = %97, %93
  %99 = phi i32* [ %96, %93 ], [ null, %97 ]
  %100 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %101 = icmp ne %struct.flash_platform_data* %100, null
  br i1 %101, label %102, label %106

102:                                              ; preds = %98
  %103 = load %struct.flash_platform_data*, %struct.flash_platform_data** %5, align 8
  %104 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  br label %107

106:                                              ; preds = %98
  br label %107

107:                                              ; preds = %106, %102
  %108 = phi i32 [ %105, %102 ], [ 0, %106 ]
  %109 = call i32 @mtd_device_register(%struct.TYPE_12__* %90, i32* %99, i32 %108)
  store i32 %109, i32* %6, align 4
  %110 = load i32, i32* %6, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %107
  %113 = load i32, i32* %6, align 4
  store i32 %113, i32* %2, align 4
  br label %115

114:                                              ; preds = %107
  store i32 0, i32* %2, align 4
  br label %115

115:                                              ; preds = %114, %112, %30, %13
  %116 = load i32, i32* %2, align 4
  ret i32 %116
}

declare dso_local %struct.mchp23k256_flash* @devm_kzalloc(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.mchp23k256_flash*) #1

declare dso_local i32 @mchp23k256_set_mode(%struct.spi_device*) #1

declare dso_local %struct.flash_platform_data* @dev_get_platdata(%struct.TYPE_11__*) #1

declare dso_local %struct.TYPE_10__* @of_device_get_match_data(%struct.TYPE_11__*) #1

declare dso_local i32 @mtd_set_of_node(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_12__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
