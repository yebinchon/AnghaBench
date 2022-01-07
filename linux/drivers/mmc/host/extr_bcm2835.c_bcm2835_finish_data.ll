; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_finish_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_finish_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i32, i32, i64, i64, %struct.mmc_data*, %struct.TYPE_2__* }
%struct.mmc_data = type { i32, i32, i32, i64 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@SDHCFG_DATA_IRPT_EN = common dso_local global i32 0, align 4
@SDHCFG_BLOCK_IRPT_EN = common dso_local global i32 0, align 4
@SDHCFG = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"Finished early - HSTS %08x\0A\00", align 1
@SDHSTS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*)* @bcm2835_finish_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_finish_data(%struct.bcm2835_host* %0) #0 {
  %2 = alloca %struct.bcm2835_host*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %2, align 8
  %5 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %6 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %3, align 8
  %9 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %10 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %9, i32 0, i32 4
  %11 = load %struct.mmc_data*, %struct.mmc_data** %10, align 8
  store %struct.mmc_data* %11, %struct.mmc_data** %4, align 8
  %12 = load i32, i32* @SDHCFG_DATA_IRPT_EN, align 4
  %13 = load i32, i32* @SDHCFG_BLOCK_IRPT_EN, align 4
  %14 = or i32 %12, %13
  %15 = xor i32 %14, -1
  %16 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %17 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, %15
  store i32 %19, i32* %17, align 8
  %20 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %21 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %24 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SDHCFG, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %29, i32 0, i32 3
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %1
  br label %42

34:                                               ; preds = %1
  %35 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = mul nsw i32 %37, %40
  br label %42

42:                                               ; preds = %34, %33
  %43 = phi i32 [ 0, %33 ], [ %41, %34 ]
  %44 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %45 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %47 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %46, i32 0, i32 1
  store i32 1, i32* %47, align 4
  %48 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %49 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %42
  %53 = load %struct.device*, %struct.device** %3, align 8
  %54 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %55 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SDHSTS, align 8
  %58 = add nsw i64 %56, %57
  %59 = call i32 @readl(i64 %58)
  %60 = call i32 @dev_dbg(%struct.device* %53, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %64

61:                                               ; preds = %42
  %62 = load %struct.bcm2835_host*, %struct.bcm2835_host** %2, align 8
  %63 = call i32 @bcm2835_transfer_complete(%struct.bcm2835_host* %62)
  br label %64

64:                                               ; preds = %61, %52
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @bcm2835_transfer_complete(%struct.bcm2835_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
