; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-core.c_physmap_set_vpp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_physmap-core.c_physmap_set_vpp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i64 }
%struct.platform_device = type { i32 }
%struct.physmap_flash_data = type { i32 (%struct.platform_device*, i32)* }
%struct.physmap_flash_info = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i32)* @physmap_set_vpp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @physmap_set_vpp(%struct.map_info* %0, i32 %1) #0 {
  %3 = alloca %struct.map_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.physmap_flash_data*, align 8
  %7 = alloca %struct.physmap_flash_info*, align 8
  %8 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.map_info*, %struct.map_info** %3, align 8
  %10 = getelementptr inbounds %struct.map_info, %struct.map_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.platform_device*
  store %struct.platform_device* %12, %struct.platform_device** %5, align 8
  %13 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = call %struct.physmap_flash_data* @dev_get_platdata(i32* %14)
  store %struct.physmap_flash_data* %15, %struct.physmap_flash_data** %6, align 8
  %16 = load %struct.physmap_flash_data*, %struct.physmap_flash_data** %6, align 8
  %17 = getelementptr inbounds %struct.physmap_flash_data, %struct.physmap_flash_data* %16, i32 0, i32 0
  %18 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %17, align 8
  %19 = icmp ne i32 (%struct.platform_device*, i32)* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %23 = call %struct.physmap_flash_info* @platform_get_drvdata(%struct.platform_device* %22)
  store %struct.physmap_flash_info* %23, %struct.physmap_flash_info** %7, align 8
  %24 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %7, align 8
  %25 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %24, i32 0, i32 1
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load i32, i32* %4, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %43

30:                                               ; preds = %21
  %31 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %7, align 8
  %32 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = icmp eq i32 %34, 1
  br i1 %35, label %36, label %42

36:                                               ; preds = %30
  %37 = load %struct.physmap_flash_data*, %struct.physmap_flash_data** %6, align 8
  %38 = getelementptr inbounds %struct.physmap_flash_data, %struct.physmap_flash_data* %37, i32 0, i32 0
  %39 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %38, align 8
  %40 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %41 = call i32 %39(%struct.platform_device* %40, i32 1)
  br label %42

42:                                               ; preds = %36, %30
  br label %56

43:                                               ; preds = %21
  %44 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %7, align 8
  %45 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %45, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %43
  %50 = load %struct.physmap_flash_data*, %struct.physmap_flash_data** %6, align 8
  %51 = getelementptr inbounds %struct.physmap_flash_data, %struct.physmap_flash_data* %50, i32 0, i32 0
  %52 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %51, align 8
  %53 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %54 = call i32 %52(%struct.platform_device* %53, i32 0)
  br label %55

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %55, %42
  %57 = load %struct.physmap_flash_info*, %struct.physmap_flash_info** %7, align 8
  %58 = getelementptr inbounds %struct.physmap_flash_info, %struct.physmap_flash_info* %57, i32 0, i32 1
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %56, %20
  ret void
}

declare dso_local %struct.physmap_flash_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.physmap_flash_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
