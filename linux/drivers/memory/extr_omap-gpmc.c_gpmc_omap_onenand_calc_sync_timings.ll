; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_omap_onenand_calc_sync_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_omap_onenand_calc_sync_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmc_timings = type { i32 }
%struct.gpmc_settings = type { i32 }
%struct.gpmc_device_timings = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpmc_timings*, %struct.gpmc_settings*, i32, i32)* @gpmc_omap_onenand_calc_sync_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpmc_omap_onenand_calc_sync_timings(%struct.gpmc_timings* %0, %struct.gpmc_settings* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.gpmc_timings*, align 8
  %6 = alloca %struct.gpmc_settings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.gpmc_device_timings, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.gpmc_timings* %0, %struct.gpmc_timings** %5, align 8
  store %struct.gpmc_settings* %1, %struct.gpmc_settings** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 15, i32* %10, align 4
  store i32 12, i32* %11, align 4
  store i32 20, i32* %12, align 4
  store i32 40, i32* %13, align 4
  store i32 30, i32* %14, align 4
  %22 = load i32, i32* %7, align 4
  switch i32 %22, label %26 [
    i32 104, label %23
    i32 83, label %24
    i32 66, label %25
  ]

23:                                               ; preds = %4
  store i32 9600, i32* %15, align 4
  store i32 3, i32* %16, align 4
  store i32 4, i32* %17, align 4
  store i32 2, i32* %18, align 4
  store i32 3, i32* %19, align 4
  store i32 6, i32* %20, align 4
  store i32 6, i32* %21, align 4
  br label %27

24:                                               ; preds = %4
  store i32 12000, i32* %15, align 4
  store i32 5, i32* %16, align 4
  store i32 4, i32* %17, align 4
  store i32 2, i32* %18, align 4
  store i32 6, i32* %19, align 4
  store i32 6, i32* %20, align 4
  store i32 9, i32* %21, align 4
  br label %27

25:                                               ; preds = %4
  store i32 15000, i32* %15, align 4
  store i32 6, i32* %16, align 4
  store i32 5, i32* %17, align 4
  store i32 2, i32* %18, align 4
  store i32 6, i32* %19, align 4
  store i32 6, i32* %20, align 4
  store i32 11, i32* %21, align 4
  br label %27

26:                                               ; preds = %4
  store i32 18500, i32* %15, align 4
  store i32 7, i32* %16, align 4
  store i32 7, i32* %17, align 4
  store i32 7, i32* %18, align 4
  store i32 9, i32* %19, align 4
  store i32 7, i32* %20, align 4
  store i32 15, i32* %21, align 4
  br label %27

27:                                               ; preds = %26, %25, %24, %23
  %28 = call i32 @memset(%struct.gpmc_device_timings* %9, i32 0, i32 76)
  %29 = load %struct.gpmc_settings*, %struct.gpmc_settings** %6, align 8
  %30 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %27
  %34 = call i32 @max(i32 12, i32 15)
  %35 = mul nsw i32 %34, 1000
  %36 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 0
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 1
  store i32 40000, i32* %37, align 4
  %38 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 2
  store i32 30000, i32* %38, align 4
  %39 = load i32, i32* %20, align 4
  %40 = mul nsw i32 %39, 1000
  %41 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 3
  store i32 %40, i32* %41, align 4
  br label %42

42:                                               ; preds = %33, %27
  %43 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 4
  store i32 1, i32* %43, align 4
  %44 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 5
  store i32 1, i32* %44, align 4
  %45 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 6
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 7
  store i32 1, i32* %46, align 4
  %47 = load i32, i32* %15, align 4
  %48 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 8
  store i32 %47, i32* %48, align 4
  %49 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 8
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 9
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 %52, 1000
  %54 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 10
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %17, align 4
  %56 = mul nsw i32 %55, 1000
  %57 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 11
  store i32 %56, i32* %57, align 4
  %58 = load i32, i32* %18, align 4
  %59 = mul nsw i32 %58, 1000
  %60 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 12
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %19, align 4
  %62 = mul nsw i32 %61, 1000
  %63 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 13
  store i32 %62, i32* %63, align 4
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, 1
  %66 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 14
  store i32 %65, i32* %66, align 4
  %67 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 15
  store i32 20000, i32* %67, align 4
  %68 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 15
  %69 = load i32, i32* %68, align 4
  %70 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 16
  store i32 %69, i32* %70, align 4
  %71 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 17
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* %21, align 4
  %73 = mul nsw i32 %72, 1000
  %74 = load i32, i32* %15, align 4
  %75 = add nsw i32 %73, %74
  %76 = getelementptr inbounds %struct.gpmc_device_timings, %struct.gpmc_device_timings* %9, i32 0, i32 18
  store i32 %75, i32* %76, align 4
  %77 = load %struct.gpmc_timings*, %struct.gpmc_timings** %5, align 8
  %78 = load %struct.gpmc_settings*, %struct.gpmc_settings** %6, align 8
  %79 = call i32 @gpmc_calc_timings(%struct.gpmc_timings* %77, %struct.gpmc_settings* %78, %struct.gpmc_device_timings* %9)
  ret void
}

declare dso_local i32 @memset(%struct.gpmc_device_timings*, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @gpmc_calc_timings(%struct.gpmc_timings*, %struct.gpmc_settings*, %struct.gpmc_device_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
