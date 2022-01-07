; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_sa1100-flash.c_sa1100_mtd_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_sa1100-flash.c_sa1100_mtd_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.flash_platform_data = type { i32, i32 }
%struct.sa_info = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@part_probes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sa1100_mtd_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_mtd_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.flash_platform_data*, align 8
  %5 = alloca %struct.sa_info*, align 8
  %6 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.flash_platform_data* @dev_get_platdata(i32* %8)
  store %struct.flash_platform_data* %9, %struct.flash_platform_data** %4, align 8
  %10 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %11 = icmp ne %struct.flash_platform_data* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENODEV, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %17 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %18 = call %struct.sa_info* @sa1100_setup_mtd(%struct.platform_device* %16, %struct.flash_platform_data* %17)
  store %struct.sa_info* %18, %struct.sa_info** %5, align 8
  %19 = load %struct.sa_info*, %struct.sa_info** %5, align 8
  %20 = call i64 @IS_ERR(%struct.sa_info* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.sa_info*, %struct.sa_info** %5, align 8
  %24 = call i32 @PTR_ERR(%struct.sa_info* %23)
  store i32 %24, i32* %6, align 4
  br label %40

25:                                               ; preds = %15
  %26 = load %struct.sa_info*, %struct.sa_info** %5, align 8
  %27 = getelementptr inbounds %struct.sa_info, %struct.sa_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @part_probes, align 4
  %30 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %31 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.flash_platform_data*, %struct.flash_platform_data** %4, align 8
  %34 = getelementptr inbounds %struct.flash_platform_data, %struct.flash_platform_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @mtd_device_parse_register(i32 %28, i32 %29, i32* null, i32 %32, i32 %35)
  %37 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %38 = load %struct.sa_info*, %struct.sa_info** %5, align 8
  %39 = call i32 @platform_set_drvdata(%struct.platform_device* %37, %struct.sa_info* %38)
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %25, %22
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local %struct.flash_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.sa_info* @sa1100_setup_mtd(%struct.platform_device*, %struct.flash_platform_data*) #1

declare dso_local i64 @IS_ERR(%struct.sa_info*) #1

declare dso_local i32 @PTR_ERR(%struct.sa_info*) #1

declare dso_local i32 @mtd_device_parse_register(i32, i32, i32*, i32, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.sa_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
