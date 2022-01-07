; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_emc_seq_wait_clkchange.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_emc_seq_wait_clkchange.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_emc = type { i32, i64 }

@EMC_STATUS_UPDATE_TIMEOUT = common dso_local global i32 0, align 4
@EMC_INTSTATUS = common dso_local global i64 0, align 8
@EMC_INTSTATUS_CLKCHANGE_COMPLETE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"clock change timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_emc*)* @emc_seq_wait_clkchange to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emc_seq_wait_clkchange(%struct.tegra_emc* %0) #0 {
  %2 = alloca %struct.tegra_emc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.tegra_emc* %0, %struct.tegra_emc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %23, %1
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @EMC_STATUS_UPDATE_TIMEOUT, align 4
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %26

9:                                                ; preds = %5
  %10 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %11 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @EMC_INTSTATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @readl(i64 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @EMC_INTSTATUS_CLKCHANGE_COMPLETE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %9
  br label %31

21:                                               ; preds = %9
  %22 = call i32 @udelay(i32 1)
  br label %23

23:                                               ; preds = %21
  %24 = load i32, i32* %3, align 4
  %25 = add i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %5

26:                                               ; preds = %5
  %27 = load %struct.tegra_emc*, %struct.tegra_emc** %2, align 8
  %28 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %20
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
