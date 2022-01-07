; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_omap_onenand_set_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_omap-gpmc.c_gpmc_omap_onenand_set_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.gpmc_onenand_info = type { i32, i32, i32 }
%struct.gpmc_timings = type { i32 }
%struct.gpmc_settings = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gpmc_omap_onenand_set_timings(%struct.device* %0, i32 %1, i32 %2, i32 %3, %struct.gpmc_onenand_info* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.gpmc_onenand_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.gpmc_timings, align 4
  %14 = alloca %struct.gpmc_settings, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.gpmc_onenand_info* %4, %struct.gpmc_onenand_info** %11, align 8
  %15 = load %struct.device*, %struct.device** %7, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpmc_read_settings_dt(i32 %17, %struct.gpmc_settings* %14)
  %19 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %14, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.gpmc_onenand_info*, %struct.gpmc_onenand_info** %11, align 8
  %22 = getelementptr inbounds %struct.gpmc_onenand_info, %struct.gpmc_onenand_info* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %14, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.gpmc_onenand_info*, %struct.gpmc_onenand_info** %11, align 8
  %26 = getelementptr inbounds %struct.gpmc_onenand_info, %struct.gpmc_onenand_info* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %14, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.gpmc_onenand_info*, %struct.gpmc_onenand_info** %11, align 8
  %30 = getelementptr inbounds %struct.gpmc_onenand_info, %struct.gpmc_onenand_info* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %14, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %5
  %35 = getelementptr inbounds %struct.gpmc_settings, %struct.gpmc_settings* %14, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 0, i32* %6, align 4
  br label %52

39:                                               ; preds = %34, %5
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @gpmc_omap_onenand_calc_sync_timings(%struct.gpmc_timings* %13, %struct.gpmc_settings* %14, i32 %40, i32 %41)
  %43 = load i32, i32* %8, align 4
  %44 = call i32 @gpmc_cs_program_settings(i32 %43, %struct.gpmc_settings* %14)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %39
  %48 = load i32, i32* %12, align 4
  store i32 %48, i32* %6, align 4
  br label %52

49:                                               ; preds = %39
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @gpmc_cs_set_timings(i32 %50, %struct.gpmc_timings* %13, %struct.gpmc_settings* %14)
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %49, %47, %38
  %53 = load i32, i32* %6, align 4
  ret i32 %53
}

declare dso_local i32 @gpmc_read_settings_dt(i32, %struct.gpmc_settings*) #1

declare dso_local i32 @gpmc_omap_onenand_calc_sync_timings(%struct.gpmc_timings*, %struct.gpmc_settings*, i32, i32) #1

declare dso_local i32 @gpmc_cs_program_settings(i32, %struct.gpmc_settings*) #1

declare dso_local i32 @gpmc_cs_set_timings(i32, %struct.gpmc_timings*, %struct.gpmc_settings*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
