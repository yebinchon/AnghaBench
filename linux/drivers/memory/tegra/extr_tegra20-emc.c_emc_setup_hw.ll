; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20-emc.c_emc_setup_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20-emc.c_emc_setup_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_emc = type { i64, i32 }

@EMC_REFRESH_OVERFLOW_INT = common dso_local global i32 0, align 4
@EMC_CLKCHANGE_COMPLETE_INT = common dso_local global i32 0, align 4
@EMC_CFG_2 = common dso_local global i64 0, align 8
@EMC_CLKCHANGE_PD_ENABLE = common dso_local global i32 0, align 4
@EMC_CLKCHANGE_SR_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"bootloader didn't specify DRAM auto-suspend mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EMC_CLKCHANGE_REQ_ENABLE = common dso_local global i32 0, align 4
@EMC_INTMASK = common dso_local global i64 0, align 8
@EMC_INTSTATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_emc*)* @emc_setup_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emc_setup_hw(%struct.tegra_emc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_emc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.tegra_emc* %0, %struct.tegra_emc** %3, align 8
  %6 = load i32, i32* @EMC_REFRESH_OVERFLOW_INT, align 4
  %7 = load i32, i32* @EMC_CLKCHANGE_COMPLETE_INT, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %4, align 4
  %9 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @EMC_CFG_2, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @readl_relaxed(i64 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @EMC_CLKCHANGE_PD_ENABLE, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @EMC_CLKCHANGE_SR_ENABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %31, label %24

24:                                               ; preds = %19
  %25 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %56

31:                                               ; preds = %19, %1
  %32 = load i32, i32* @EMC_CLKCHANGE_REQ_ENABLE, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %37 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @EMC_CFG_2, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @writel_relaxed(i32 %35, i64 %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %44 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @EMC_INTMASK, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @writel_relaxed(i32 %42, i64 %47)
  %49 = load i32, i32* %4, align 4
  %50 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %51 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @EMC_INTSTATUS, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel_relaxed(i32 %49, i64 %54)
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %31, %24
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
