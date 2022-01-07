; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_emc_read_current_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_emc_read_current_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_emc = type { i64 }
%struct.emc_timing = type { i64, i64, i64, i64, i64, i64, i8*, i8** }

@emc_burst_regs = common dso_local global i64* null, align 8
@EMC_CFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tegra_emc*, %struct.emc_timing*)* @emc_read_current_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emc_read_current_timing(%struct.tegra_emc* %0, %struct.emc_timing* %1) #0 {
  %3 = alloca %struct.tegra_emc*, align 8
  %4 = alloca %struct.emc_timing*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_emc* %0, %struct.tegra_emc** %3, align 8
  store %struct.emc_timing* %1, %struct.emc_timing** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %28, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i64*, i64** @emc_burst_regs, align 8
  %9 = call i32 @ARRAY_SIZE(i64* %8)
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %11, label %31

11:                                               ; preds = %6
  %12 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64*, i64** @emc_burst_regs, align 8
  %16 = load i32, i32* %5, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %14, %19
  %21 = call i8* @readl(i64 %20)
  %22 = load %struct.emc_timing*, %struct.emc_timing** %4, align 8
  %23 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %22, i32 0, i32 7
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  store i8* %21, i8** %27, align 8
  br label %28

28:                                               ; preds = %11
  %29 = load i32, i32* %5, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %6

31:                                               ; preds = %6
  %32 = load %struct.tegra_emc*, %struct.tegra_emc** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_emc, %struct.tegra_emc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @EMC_CFG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i8* @readl(i64 %36)
  %38 = load %struct.emc_timing*, %struct.emc_timing** %4, align 8
  %39 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %38, i32 0, i32 6
  store i8* %37, i8** %39, align 8
  %40 = load %struct.emc_timing*, %struct.emc_timing** %4, align 8
  %41 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.emc_timing*, %struct.emc_timing** %4, align 8
  %43 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.emc_timing*, %struct.emc_timing** %4, align 8
  %45 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.emc_timing*, %struct.emc_timing** %4, align 8
  %47 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.emc_timing*, %struct.emc_timing** %4, align 8
  %49 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.emc_timing*, %struct.emc_timing** %4, align 8
  %51 = getelementptr inbounds %struct.emc_timing, %struct.emc_timing* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i8* @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
