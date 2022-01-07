; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_set_ios.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i64, i64 }
%struct.bcm2835_host = type { i64, i32, i64, i32 }

@SDHCFG_WIDE_EXT_BUS = common dso_local global i32 0, align 4
@MMC_BUS_WIDTH_4 = common dso_local global i64 0, align 8
@SDHCFG_WIDE_INT_BUS = common dso_local global i32 0, align 4
@SDHCFG_SLOW_CARD = common dso_local global i32 0, align 4
@SDHCFG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @bcm2835_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.bcm2835_host*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %6 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %7 = call %struct.bcm2835_host* @mmc_priv(%struct.mmc_host* %6)
  store %struct.bcm2835_host* %7, %struct.bcm2835_host** %5, align 8
  %8 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %9 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %8, i32 0, i32 1
  %10 = call i32 @mutex_lock(i32* %9)
  %11 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %2
  %16 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %20 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %15, %2
  %24 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %25 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @bcm2835_set_clock(%struct.bcm2835_host* %24, i64 %27)
  %29 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %33 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %23, %15
  %35 = load i32, i32* @SDHCFG_WIDE_EXT_BUS, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %38 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %42 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @MMC_BUS_WIDTH_4, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load i32, i32* @SDHCFG_WIDE_EXT_BUS, align 4
  %48 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %49 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %46, %34
  %53 = load i32, i32* @SDHCFG_WIDE_INT_BUS, align 4
  %54 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %55 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = or i32 %56, %53
  store i32 %57, i32* %55, align 8
  %58 = load i32, i32* @SDHCFG_SLOW_CARD, align 4
  %59 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %60 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %64 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %67 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SDHCFG, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @writel(i32 %65, i64 %70)
  %72 = load %struct.bcm2835_host*, %struct.bcm2835_host** %5, align 8
  %73 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %72, i32 0, i32 1
  %74 = call i32 @mutex_unlock(i32* %73)
  ret void
}

declare dso_local %struct.bcm2835_host* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bcm2835_set_clock(%struct.bcm2835_host*, i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
