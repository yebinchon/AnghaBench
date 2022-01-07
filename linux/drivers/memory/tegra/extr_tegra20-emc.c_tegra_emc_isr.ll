; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20-emc.c_tegra_emc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20-emc.c_tegra_emc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_emc = type { i64, i32, i32 }

@EMC_REFRESH_OVERFLOW_INT = common dso_local global i32 0, align 4
@EMC_CLKCHANGE_COMPLETE_INT = common dso_local global i32 0, align 4
@EMC_INTSTATUS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"refresh request overflow timeout\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @tegra_emc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_emc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.tegra_emc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.tegra_emc*
  store %struct.tegra_emc* %10, %struct.tegra_emc** %6, align 8
  %11 = load i32, i32* @EMC_REFRESH_OVERFLOW_INT, align 4
  %12 = load i32, i32* @EMC_CLKCHANGE_COMPLETE_INT, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %7, align 4
  %14 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %15 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EMC_INTSTATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl_relaxed(i64 %18)
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %54

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @EMC_CLKCHANGE_COMPLETE_INT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %26
  %32 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %33 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %32, i32 0, i32 2
  %34 = call i32 @complete(i32* %33)
  br label %35

35:                                               ; preds = %31, %26
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* @EMC_REFRESH_OVERFLOW_INT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %42 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dev_err_ratelimited(i32 %43, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %40, %35
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.tegra_emc*, %struct.tegra_emc** %6, align 8
  %48 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @EMC_INTSTATUS, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel_relaxed(i32 %46, i64 %51)
  %53 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %45, %24
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
