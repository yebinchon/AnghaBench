; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_prepare_sg_miter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_alcor.c_alcor_prepare_sg_miter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alcor_sdmmc_host = type { i32, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32 }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alcor_sdmmc_host*)* @alcor_prepare_sg_miter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alcor_prepare_sg_miter(%struct.alcor_sdmmc_host* %0) #0 {
  %2 = alloca %struct.alcor_sdmmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_data*, align 8
  store %struct.alcor_sdmmc_host* %0, %struct.alcor_sdmmc_host** %2, align 8
  %5 = load i32, i32* @SG_MITER_ATOMIC, align 4
  store i32 %5, i32* %3, align 4
  %6 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %7 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %6, i32 0, i32 1
  %8 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  store %struct.mmc_data* %8, %struct.mmc_data** %4, align 8
  %9 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @MMC_DATA_READ, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load i32, i32* @SG_MITER_TO_SG, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %23

19:                                               ; preds = %1
  %20 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %23

23:                                               ; preds = %19, %15
  %24 = load %struct.alcor_sdmmc_host*, %struct.alcor_sdmmc_host** %2, align 8
  %25 = getelementptr inbounds %struct.alcor_sdmmc_host, %struct.alcor_sdmmc_host* %24, i32 0, i32 0
  %26 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @sg_miter_start(i32* %25, i32 %28, i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @sg_miter_start(i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
