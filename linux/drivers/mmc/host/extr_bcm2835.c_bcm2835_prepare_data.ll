; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_prepare_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_bcm2835.c_bcm2835_prepare_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcm2835_host = type { i32, i64, i32, i32, i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i64 }
%struct.mmc_command = type { %struct.mmc_data* }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@SDHBCT = common dso_local global i64 0, align 8
@SDHBLC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcm2835_host*, %struct.mmc_command*)* @bcm2835_prepare_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcm2835_prepare_data(%struct.bcm2835_host* %0, %struct.mmc_command* %1) #0 {
  %3 = alloca %struct.bcm2835_host*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  store %struct.bcm2835_host* %0, %struct.bcm2835_host** %3, align 8
  store %struct.mmc_command* %1, %struct.mmc_command** %4, align 8
  %7 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %8 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  %9 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  store %struct.mmc_data* %9, %struct.mmc_data** %5, align 8
  %10 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %11 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %10, i32 0, i32 5
  %12 = load %struct.mmc_data*, %struct.mmc_data** %11, align 8
  %13 = call i32 @WARN_ON(%struct.mmc_data* %12)
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %16 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %15, i32 0, i32 5
  store %struct.mmc_data* %14, %struct.mmc_data** %16, align 8
  %17 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %18 = icmp ne %struct.mmc_data* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  br label %84

20:                                               ; preds = %2
  %21 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %22 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %24 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %23, i32 0, i32 5
  %25 = load %struct.mmc_data*, %struct.mmc_data** %24, align 8
  %26 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %25, i32 0, i32 5
  store i64 0, i64* %26, align 8
  %27 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %28 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %63, label %31

31:                                               ; preds = %20
  %32 = load i32, i32* @SG_MITER_ATOMIC, align 4
  store i32 %32, i32* %6, align 4
  %33 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MMC_DATA_READ, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %31
  %40 = load i32, i32* @SG_MITER_TO_SG, align 4
  %41 = load i32, i32* %6, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %6, align 4
  br label %47

43:                                               ; preds = %31
  %44 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %39
  %48 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %49 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %48, i32 0, i32 3
  %50 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %54 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @sg_miter_start(i32* %49, i32 %52, i32 %55, i32 %56)
  %58 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %59 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %62 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %47, %20
  %64 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %65 = call i32 @bcm2835_set_transfer_irqs(%struct.bcm2835_host* %64)
  %66 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %67 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %70 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @SDHBCT, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @writel(i32 %68, i64 %73)
  %75 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %76 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.bcm2835_host*, %struct.bcm2835_host** %3, align 8
  %79 = getelementptr inbounds %struct.bcm2835_host, %struct.bcm2835_host* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @SDHBLC, align 8
  %82 = add nsw i64 %80, %81
  %83 = call i32 @writel(i32 %77, i64 %82)
  br label %84

84:                                               ; preds = %63, %19
  ret void
}

declare dso_local i32 @WARN_ON(%struct.mmc_data*) #1

declare dso_local i32 @sg_miter_start(i32*, i32, i32, i32) #1

declare dso_local i32 @bcm2835_set_transfer_irqs(%struct.bcm2835_host*) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
