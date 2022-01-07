; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20-emc.c_emc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20-emc.c_emc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_emc = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [41 x i8] c"failed to reparent to backup source: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to change pll_m rate: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to reparent to pll_m: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"failed to change emc rate: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_emc*, i64)* @emc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emc_init(%struct.tegra_emc* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tegra_emc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tegra_emc* %0, %struct.tegra_emc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %8 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @clk_set_parent(i32 %9, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %2
  %17 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %18 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %6, align 4
  store i32 %22, i32* %3, align 4
  br label %71

23:                                               ; preds = %2
  %24 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @clk_set_rate(i32 %26, i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %23
  %32 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %33 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @dev_err(i32 %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %71

38:                                               ; preds = %23
  %39 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %40 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %43 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @clk_set_parent(i32 %41, i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* %6, align 4
  store i32 %54, i32* %3, align 4
  br label %71

55:                                               ; preds = %38
  %56 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %57 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @clk_set_rate(i32 %58, i64 %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %55
  %64 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %65 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %71

70:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %70, %63, %48, %31, %16
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @clk_set_parent(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
