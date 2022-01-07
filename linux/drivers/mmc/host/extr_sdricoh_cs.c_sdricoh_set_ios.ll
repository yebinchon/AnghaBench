; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdricoh_cs.c_sdricoh_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i64 }
%struct.sdricoh_host = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"set_ios\0A\00", align 1
@MMC_POWER_ON = common dso_local global i64 0, align 8
@R228_POWER = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@R224_MODE = common dso_local global i32 0, align 4
@MMC_POWER_UP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @sdricoh_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdricoh_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.sdricoh_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.sdricoh_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.sdricoh_host* %7, %struct.sdricoh_host** %5, align 8
  %8 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %9 = getelementptr inbounds %struct.sdricoh_host, %struct.sdricoh_host* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MMC_POWER_ON, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %38

17:                                               ; preds = %2
  %18 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %19 = load i32, i32* @R228_POWER, align 4
  %20 = call i32 @sdricoh_writel(%struct.sdricoh_host* %18, i32 %19, i32 49376)
  %21 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %22 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %28 = load i32, i32* @R224_MODE, align 4
  %29 = call i32 @sdricoh_writel(%struct.sdricoh_host* %27, i32 %28, i32 33555200)
  %30 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %31 = load i32, i32* @R228_POWER, align 4
  %32 = call i32 @sdricoh_writel(%struct.sdricoh_host* %30, i32 %31, i32 16608)
  br label %37

33:                                               ; preds = %17
  %34 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %35 = load i32, i32* @R224_MODE, align 4
  %36 = call i32 @sdricoh_writel(%struct.sdricoh_host* %34, i32 %35, i32 33555264)
  br label %37

37:                                               ; preds = %33, %26
  br label %52

38:                                               ; preds = %2
  %39 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MMC_POWER_UP, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %46 = load i32, i32* @R224_MODE, align 4
  %47 = call i32 @sdricoh_writel(%struct.sdricoh_host* %45, i32 %46, i32 33555232)
  %48 = load %struct.sdricoh_host*, %struct.sdricoh_host** %5, align 8
  %49 = load i32, i32* @R228_POWER, align 4
  %50 = call i32 @sdricoh_writel(%struct.sdricoh_host* %48, i32 %49, i32 224)
  br label %51

51:                                               ; preds = %44, %38
  br label %52

52:                                               ; preds = %51, %37
  ret void
}

declare dso_local %struct.sdricoh_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @sdricoh_writel(%struct.sdricoh_host*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
