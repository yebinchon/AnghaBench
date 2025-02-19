; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_tegra_emc_find_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_tegra_emc_find_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emc_timing = type { i64 }
%struct.tegra_emc = type { i32, i32, %struct.emc_timing* }

@.str = private unnamed_addr constant [24 x i8] c"no timing for rate %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.emc_timing* (%struct.tegra_emc*, i64)* @tegra_emc_find_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.emc_timing* @tegra_emc_find_timing(%struct.tegra_emc* %0, i64 %1) #0 {
  %3 = alloca %struct.emc_timing*, align 8
  %4 = alloca %struct.tegra_emc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.emc_timing*, align 8
  %7 = alloca i32, align 4
  store %struct.tegra_emc* %0, %struct.tegra_emc** %4, align 8
  store i64 %1, i64* %5, align 8
  store %struct.emc_timing* null, %struct.emc_timing** %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %33, %2
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %9, %12
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %16 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %15, i32 0, i32 2
  %17 = load %struct.emc_timing*, %struct.emc_timing** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %17, i64 %19
  %21 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %14
  %26 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %27 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %26, i32 0, i32 2
  %28 = load %struct.emc_timing*, %struct.emc_timing** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %28, i64 %30
  store %struct.emc_timing* %31, %struct.emc_timing** %6, align 8
  br label %36

32:                                               ; preds = %14
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %7, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %7, align 4
  br label %8

36:                                               ; preds = %25, %8
  %37 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  %38 = icmp ne %struct.emc_timing* %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %36
  %40 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %41 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %43)
  store %struct.emc_timing* null, %struct.emc_timing** %3, align 8
  br label %47

45:                                               ; preds = %36
  %46 = load %struct.emc_timing*, %struct.emc_timing** %6, align 8
  store %struct.emc_timing* %46, %struct.emc_timing** %3, align 8
  br label %47

47:                                               ; preds = %45, %39
  %48 = load %struct.emc_timing*, %struct.emc_timing** %3, align 8
  ret %struct.emc_timing* %48
}

declare dso_local i32 @dev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
