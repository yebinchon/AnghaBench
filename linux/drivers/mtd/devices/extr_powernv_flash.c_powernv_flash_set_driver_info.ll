; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_powernv_flash.c_powernv_flash_set_driver_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_powernv_flash.c_powernv_flash_set_driver_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.mtd_info = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { %struct.device* }

@.str = private unnamed_addr constant [21 x i8] c"ibm,flash-block-size\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"couldn't get resource block size information\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"couldn't get resource size information\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c"%pOFP\00", align 1
@MTD_NORFLASH = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@powernv_flash_erase = common dso_local global i32 0, align 4
@powernv_flash_read = common dso_local global i32 0, align 4
@powernv_flash_write = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.mtd_info*)* @powernv_flash_set_driver_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @powernv_flash_set_driver_info(%struct.device* %0, %struct.mtd_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mtd_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.mtd_info* %1, %struct.mtd_info** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @of_property_read_u32(i32 %11, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %7)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %2
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %3, align 4
  br label %76

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @of_property_read_u64(i32 %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %3, align 4
  br label %76

30:                                               ; preds = %19
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = load %struct.device*, %struct.device** %4, align 8
  %34 = getelementptr inbounds %struct.device, %struct.device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @devm_kasprintf(%struct.device* %31, i32 %32, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %35)
  %37 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 11
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @MTD_NORFLASH, align 4
  %40 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 10
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @MTD_WRITEABLE, align 4
  %43 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 9
  store i32 %42, i32* %44, align 8
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %47 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 8
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %50 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 7
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %52 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %54 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @THIS_MODULE, align 4
  %56 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 6
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* @powernv_flash_erase, align 4
  %59 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %60 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 8
  %61 = load i32, i32* @powernv_flash_read, align 4
  %62 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %63 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 4
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* @powernv_flash_write, align 4
  %65 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %66 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 3
  store i32 %64, i32* %66, align 8
  %67 = load %struct.device*, %struct.device** %4, align 8
  %68 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %69 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store %struct.device* %67, %struct.device** %70, align 8
  %71 = load %struct.mtd_info*, %struct.mtd_info** %5, align 8
  %72 = load %struct.device*, %struct.device** %4, align 8
  %73 = getelementptr inbounds %struct.device, %struct.device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @mtd_set_of_node(%struct.mtd_info* %71, i32 %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %30, %26, %15
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @of_property_read_u32(i32, i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @of_property_read_u64(i32, i8*, i32*) #1

declare dso_local i32 @devm_kasprintf(%struct.device*, i32, i8*, i32) #1

declare dso_local i32 @mtd_set_of_node(%struct.mtd_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
