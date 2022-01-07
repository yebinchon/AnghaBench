; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-core.c_physmap_flash_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-core.c_physmap_flash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.physmap_flash_info = type { i64, i64*, i32 }
%struct.physmap_flash_data = type { i32 (%struct.platform_device*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @physmap_flash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @physmap_flash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.physmap_flash_info*, align 8
  %5 = alloca %struct.physmap_flash_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.physmap_flash_info* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.physmap_flash_info* %9, %struct.physmap_flash_info** %4, align 8
  %10 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %11 = icmp ne %struct.physmap_flash_info* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

13:                                               ; preds = %1
  %14 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %15 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %43

18:                                               ; preds = %13
  %19 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %20 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @mtd_device_unregister(i64 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  store i32 %26, i32* %2, align 4
  br label %90

27:                                               ; preds = %18
  %28 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %29 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %32 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %30, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %27
  %38 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %39 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @mtd_concat_destroy(i64 %40)
  br label %42

42:                                               ; preds = %37, %27
  br label %43

43:                                               ; preds = %42, %13
  store i32 0, i32* %6, align 4
  br label %44

44:                                               ; preds = %69, %43
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %47 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %72

50:                                               ; preds = %44
  %51 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %52 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %51, i32 0, i32 1
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %50
  %60 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %4, align 8
  %61 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %60, i32 0, i32 1
  %62 = load i64*, i64** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @map_destroy(i64 %66)
  br label %68

68:                                               ; preds = %59, %50
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %6, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %6, align 4
  br label %44

72:                                               ; preds = %44
  %73 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %74 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 0
  %75 = call %struct.physmap_flash_data* @dev_get_platdata(i32* %74)
  store %struct.physmap_flash_data* %75, %struct.physmap_flash_data** %5, align 8
  %76 = load %struct.physmap_flash_data*, %struct.physmap_flash_data** %5, align 8
  %77 = icmp ne %struct.physmap_flash_data* %76, null
  br i1 %77, label %78, label %89

78:                                               ; preds = %72
  %79 = load %struct.physmap_flash_data*, %struct.physmap_flash_data** %5, align 8
  %80 = getelementptr inbounds %struct.physmap_flash_data, %struct.physmap_flash_data* %79, i32 0, i32 0
  %81 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %80, align 8
  %82 = icmp ne i32 (%struct.platform_device*)* %81, null
  br i1 %82, label %83, label %89

83:                                               ; preds = %78
  %84 = load %struct.physmap_flash_data*, %struct.physmap_flash_data** %5, align 8
  %85 = getelementptr inbounds %struct.physmap_flash_data, %struct.physmap_flash_data* %84, i32 0, i32 0
  %86 = load i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)** %85, align 8
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = call i32 %86(%struct.platform_device* %87)
  br label %89

89:                                               ; preds = %83, %78, %72
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %25, %12
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local %struct.physmap_flash_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mtd_device_unregister(i64) #1

declare dso_local i32 @mtd_concat_destroy(i64) #1

declare dso_local i32 @map_destroy(i64) #1

declare dso_local %struct.physmap_flash_data* @dev_get_platdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
