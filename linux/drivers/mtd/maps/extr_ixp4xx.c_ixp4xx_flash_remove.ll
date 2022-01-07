; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_ixp4xx.c_ixp4xx_flash_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_ixp4xx.c_ixp4xx_flash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.flash_platform_data = type { i32 (...)* }
%struct.ixp4xx_flash_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ixp4xx_flash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixp4xx_flash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.flash_platform_data*, align 8
  %5 = alloca %struct.ixp4xx_flash_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.flash_platform_data* @dev_get_platdata(i32* %7)
  store %struct.flash_platform_data* %8, %struct.flash_platform_data** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.ixp4xx_flash_info* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.ixp4xx_flash_info* %10, %struct.ixp4xx_flash_info** %5, align 8
  %11 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %12 = icmp ne %struct.ixp4xx_flash_info* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %16 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %14
  %20 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %21 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @mtd_device_unregister(i64 %22)
  %24 = load %struct.ixp4xx_flash_info*, %struct.ixp4xx_flash_info** %5, align 8
  %25 = getelementptr inbounds %struct.ixp4xx_flash_info, %struct.ixp4xx_flash_info* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @map_destroy(i64 %26)
  br label %28

28:                                               ; preds = %19, %14
  %29 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %30 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %29, i32 0, i32 0
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = icmp ne i32 (...)* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %35 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %34, i32 0, i32 0
  %36 = load i32 (...)*, i32 (...)** %35, align 8
  %37 = call i32 (...) %36()
  br label %38

38:                                               ; preds = %33, %28
  store i32 0, i32* %2, align 4
  br label %39

39:                                               ; preds = %38, %13
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.flash_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.ixp4xx_flash_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mtd_device_unregister(i64) #1

declare dso_local i32 @map_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
