; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_emc_seq_update_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_emc_seq_update_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_emc = type { i32, i64 }

@EMC_TIMING_CONTROL = common dso_local global i64 0, align 8
@EMC_STATUS_UPDATE_TIMEOUT = common dso_local global i32 0, align 4
@EMC_STATUS = common dso_local global i64 0, align 8
@EMC_STATUS_TIMING_UPDATE_STALLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"timing update timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_emc*)* @emc_seq_update_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emc_seq_update_timing(%struct.tegra_emc* %0) #0 {
  %2 = alloca %struct.tegra_emc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tegra_emc* %0, %struct.tegra_emc** %2, align 8
  %5 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %6 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @EMC_TIMING_CONTROL, align 8
  %9 = add nsw i64 %7, %8
  %10 = call i32 @writel(i32 1, i64 %9)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %29, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @EMC_STATUS_UPDATE_TIMEOUT, align 4
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %32

15:                                               ; preds = %11
  %16 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %17 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @EMC_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @EMC_STATUS_TIMING_UPDATE_STALLED, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %15
  br label %37

27:                                               ; preds = %15
  %28 = call i32 @udelay(i32 1)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %3, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %3, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %34 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %26
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
