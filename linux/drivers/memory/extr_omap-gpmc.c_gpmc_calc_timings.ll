; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_calc_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_calc_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpmc_timings = type { i32 }
%struct.gpmc_settings = type { i64, i64, i64 }
%struct.gpmc_device_timings = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpmc_calc_timings(%struct.gpmc_timings* %0, %struct.gpmc_settings* %1, %struct.gpmc_device_timings* %2) #0 {
  %4 = alloca %struct.gpmc_timings*, align 8
  %5 = alloca %struct.gpmc_settings*, align 8
  %6 = alloca %struct.gpmc_device_timings*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gpmc_timings* %0, %struct.gpmc_timings** %4, align 8
  store %struct.gpmc_settings* %1, %struct.gpmc_settings** %5, align 8
  store %struct.gpmc_device_timings* %2, %struct.gpmc_device_timings** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.gpmc_settings*, %struct.gpmc_settings** %5, align 8
  %10 = icmp ne %struct.gpmc_settings* %9, null
  br i1 %10, label %11, label %30

11:                                               ; preds = %3
  %12 = load %struct.gpmc_settings*, %struct.gpmc_settings** %5, align 8
  %13 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 1, i32 0
  store i32 %17, i32* %7, align 4
  %18 = load %struct.gpmc_settings*, %struct.gpmc_settings** %5, align 8
  %19 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %11
  %23 = load %struct.gpmc_settings*, %struct.gpmc_settings** %5, align 8
  %24 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %11
  %28 = phi i1 [ true, %11 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  store i32 %29, i32* %8, align 4
  br label %30

30:                                               ; preds = %27, %3
  %31 = load %struct.gpmc_timings*, %struct.gpmc_timings** %4, align 8
  %32 = call i32 @memset(%struct.gpmc_timings* %31, i32 0, i32 4)
  %33 = load %struct.gpmc_timings*, %struct.gpmc_timings** %4, align 8
  %34 = load %struct.gpmc_device_timings*, %struct.gpmc_device_timings** %6, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @gpmc_calc_common_timings(%struct.gpmc_timings* %33, %struct.gpmc_device_timings* %34, i32 %35)
  %37 = load %struct.gpmc_settings*, %struct.gpmc_settings** %5, align 8
  %38 = icmp ne %struct.gpmc_settings* %37, null
  br i1 %38, label %39, label %49

39:                                               ; preds = %30
  %40 = load %struct.gpmc_settings*, %struct.gpmc_settings** %5, align 8
  %41 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.gpmc_timings*, %struct.gpmc_timings** %4, align 8
  %46 = load %struct.gpmc_device_timings*, %struct.gpmc_device_timings** %6, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @gpmc_calc_sync_read_timings(%struct.gpmc_timings* %45, %struct.gpmc_device_timings* %46, i32 %47)
  br label %54

49:                                               ; preds = %39, %30
  %50 = load %struct.gpmc_timings*, %struct.gpmc_timings** %4, align 8
  %51 = load %struct.gpmc_device_timings*, %struct.gpmc_device_timings** %6, align 8
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @gpmc_calc_async_read_timings(%struct.gpmc_timings* %50, %struct.gpmc_device_timings* %51, i32 %52)
  br label %54

54:                                               ; preds = %49, %44
  %55 = load %struct.gpmc_settings*, %struct.gpmc_settings** %5, align 8
  %56 = icmp ne %struct.gpmc_settings* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %54
  %58 = load %struct.gpmc_settings*, %struct.gpmc_settings** %5, align 8
  %59 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %57
  %63 = load %struct.gpmc_timings*, %struct.gpmc_timings** %4, align 8
  %64 = load %struct.gpmc_device_timings*, %struct.gpmc_device_timings** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @gpmc_calc_sync_write_timings(%struct.gpmc_timings* %63, %struct.gpmc_device_timings* %64, i32 %65)
  br label %72

67:                                               ; preds = %57, %54
  %68 = load %struct.gpmc_timings*, %struct.gpmc_timings** %4, align 8
  %69 = load %struct.gpmc_device_timings*, %struct.gpmc_device_timings** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @gpmc_calc_async_write_timings(%struct.gpmc_timings* %68, %struct.gpmc_device_timings* %69, i32 %70)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.gpmc_timings*, %struct.gpmc_timings** %4, align 8
  %74 = call i32 @gpmc_convert_ps_to_ns(%struct.gpmc_timings* %73)
  ret i32 0
}

declare dso_local i32 @memset(%struct.gpmc_timings*, i32, i32) #1

declare dso_local i32 @gpmc_calc_common_timings(%struct.gpmc_timings*, %struct.gpmc_device_timings*, i32) #1

declare dso_local i32 @gpmc_calc_sync_read_timings(%struct.gpmc_timings*, %struct.gpmc_device_timings*, i32) #1

declare dso_local i32 @gpmc_calc_async_read_timings(%struct.gpmc_timings*, %struct.gpmc_device_timings*, i32) #1

declare dso_local i32 @gpmc_calc_sync_write_timings(%struct.gpmc_timings*, %struct.gpmc_device_timings*, i32) #1

declare dso_local i32 @gpmc_calc_async_write_timings(%struct.gpmc_timings*, %struct.gpmc_device_timings*, i32) #1

declare dso_local i32 @gpmc_convert_ps_to_ns(%struct.gpmc_timings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
