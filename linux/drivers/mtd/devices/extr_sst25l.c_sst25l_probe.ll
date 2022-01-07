; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_sst25l.c_sst25l_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i32 }
%struct.flash_info = type { i32, i32, i32, i32 }
%struct.sst25l_flash = type { %struct.TYPE_4__, i32, %struct.spi_device* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.flash_platform_data = type { i32, i32*, i64 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MTD_NORFLASH = common dso_local global i32 0, align 4
@MTD_CAP_NORFLASH = common dso_local global i32 0, align 4
@sst25l_erase = common dso_local global i32 0, align 4
@sst25l_read = common dso_local global i32 0, align 4
@sst25l_write = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s (%lld KiB)\0A\00", align 1
@.str.1 = private unnamed_addr constant [92 x i8] c"mtd .name = %s, .size = 0x%llx (%lldMiB) .erasesize = 0x%.8x (%uKiB) .numeraseregions = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.spi_device*)* @sst25l_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst25l_probe(%struct.spi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.spi_device*, align 8
  %4 = alloca %struct.flash_info*, align 8
  %5 = alloca %struct.sst25l_flash*, align 8
  %6 = alloca %struct.flash_platform_data*, align 8
  %7 = alloca i32, align 4
  store %struct.spi_device* %0, %struct.spi_device** %3, align 8
  %8 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %9 = call %struct.flash_info* @sst25l_match_device(%struct.spi_device* %8)
  store %struct.flash_info* %9, %struct.flash_info** %4, align 8
  %10 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %11 = icmp ne %struct.flash_info* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %175

15:                                               ; preds = %1
  %16 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %17 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %16, i32 0, i32 0
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.sst25l_flash* @devm_kzalloc(i32* %17, i32 80, i32 %18)
  store %struct.sst25l_flash* %19, %struct.sst25l_flash** %5, align 8
  %20 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %21 = icmp ne %struct.sst25l_flash* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %15
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %175

25:                                               ; preds = %15
  %26 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %27 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %28 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %27, i32 0, i32 2
  store %struct.spi_device* %26, %struct.spi_device** %28, align 8
  %29 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %30 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %29, i32 0, i32 1
  %31 = call i32 @mutex_init(i32* %30)
  %32 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %33 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %34 = call i32 @spi_set_drvdata(%struct.spi_device* %32, %struct.sst25l_flash* %33)
  %35 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %36 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %35, i32 0, i32 0
  %37 = call %struct.flash_platform_data* @dev_get_platdata(i32* %36)
  store %struct.flash_platform_data* %37, %struct.flash_platform_data** %6, align 8
  %38 = load %struct.flash_platform_data*, %struct.flash_platform_data** %6, align 8
  %39 = icmp ne %struct.flash_platform_data* %38, null
  br i1 %39, label %40, label %52

40:                                               ; preds = %25
  %41 = load %struct.flash_platform_data*, %struct.flash_platform_data** %6, align 8
  %42 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.flash_platform_data*, %struct.flash_platform_data** %6, align 8
  %47 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %50 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  store i64 %48, i64* %51, align 8
  br label %52

52:                                               ; preds = %45, %40, %25
  %53 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %54 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %53, i32 0, i32 0
  %55 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %56 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 11
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i32* %54, i32** %58, align 8
  %59 = load i32, i32* @MTD_NORFLASH, align 4
  %60 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %61 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 10
  store i32 %59, i32* %62, align 8
  %63 = load i32, i32* @MTD_CAP_NORFLASH, align 4
  %64 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %65 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 9
  store i32 %63, i32* %66, align 4
  %67 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %68 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %71 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  store i32 %69, i32* %72, align 8
  %73 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %74 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %77 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  store i32 %75, i32* %78, align 4
  %79 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %80 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %83 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %86 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %89 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = mul nsw i32 %87, %90
  %92 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %93 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 3
  store i32 %91, i32* %94, align 4
  %95 = load i32, i32* @sst25l_erase, align 4
  %96 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %97 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 8
  store i32 %95, i32* %98, align 8
  %99 = load i32, i32* @sst25l_read, align 4
  %100 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %101 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 7
  store i32 %99, i32* %102, align 4
  %103 = load i32, i32* @sst25l_write, align 4
  %104 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %105 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 6
  store i32 %103, i32* %106, align 8
  %107 = load %struct.spi_device*, %struct.spi_device** %3, align 8
  %108 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %107, i32 0, i32 0
  %109 = load %struct.flash_info*, %struct.flash_info** %4, align 8
  %110 = getelementptr inbounds %struct.flash_info, %struct.flash_info* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %113 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = sext i32 %115 to i64
  %117 = ashr i64 %116, 10
  %118 = call i32 @dev_info(i32* %108, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %111, i64 %117)
  %119 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %120 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 5
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %124 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %129 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = ashr i32 %131, 20
  %133 = sext i32 %132 to i64
  %134 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %135 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %139 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = sdiv i32 %141, 1024
  %143 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %144 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @pr_debug(i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.1, i64 0, i64 0), i64 %122, i64 %127, i64 %133, i32 %137, i32 %142, i32 %146)
  %148 = load %struct.sst25l_flash*, %struct.sst25l_flash** %5, align 8
  %149 = getelementptr inbounds %struct.sst25l_flash, %struct.sst25l_flash* %148, i32 0, i32 0
  %150 = load %struct.flash_platform_data*, %struct.flash_platform_data** %6, align 8
  %151 = icmp ne %struct.flash_platform_data* %150, null
  br i1 %151, label %152, label %156

152:                                              ; preds = %52
  %153 = load %struct.flash_platform_data*, %struct.flash_platform_data** %6, align 8
  %154 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %153, i32 0, i32 1
  %155 = load i32*, i32** %154, align 8
  br label %157

156:                                              ; preds = %52
  br label %157

157:                                              ; preds = %156, %152
  %158 = phi i32* [ %155, %152 ], [ null, %156 ]
  %159 = load %struct.flash_platform_data*, %struct.flash_platform_data** %6, align 8
  %160 = icmp ne %struct.flash_platform_data* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %157
  %162 = load %struct.flash_platform_data*, %struct.flash_platform_data** %6, align 8
  %163 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  br label %166

165:                                              ; preds = %157
  br label %166

166:                                              ; preds = %165, %161
  %167 = phi i32 [ %164, %161 ], [ 0, %165 ]
  %168 = call i32 @mtd_device_register(%struct.TYPE_4__* %149, i32* %158, i32 %167)
  store i32 %168, i32* %7, align 4
  %169 = load i32, i32* %7, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166
  %172 = load i32, i32* @ENODEV, align 4
  %173 = sub nsw i32 0, %172
  store i32 %173, i32* %2, align 4
  br label %175

174:                                              ; preds = %166
  store i32 0, i32* %2, align 4
  br label %175

175:                                              ; preds = %174, %171, %22, %12
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local %struct.flash_info* @sst25l_match_device(%struct.spi_device*) #1

declare dso_local %struct.sst25l_flash* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spi_set_drvdata(%struct.spi_device*, %struct.sst25l_flash*) #1

declare dso_local %struct.flash_platform_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i64, i64, i32, i32, i32) #1

declare dso_local i32 @mtd_device_register(%struct.TYPE_4__*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
