; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium-octeon.c_octeon_mmc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium-octeon.c_octeon_mmc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.cvm_mmc_host = type { i64, i64* }

@CAVIUM_MAX_MMC = common dso_local global i32 0, align 4
@MIO_EMM_DMA_CFG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @octeon_mmc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @octeon_mmc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.cvm_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.cvm_mmc_host* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.cvm_mmc_host* %7, %struct.cvm_mmc_host** %3, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %31, %1
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @CAVIUM_MAX_MMC, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %34

12:                                               ; preds = %8
  %13 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %14 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %12
  %22 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %23 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %22, i32 0, i32 1
  %24 = load i64*, i64** %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @cvm_mmc_of_slot_remove(i64 %28)
  br label %30

30:                                               ; preds = %21, %12
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %8

34:                                               ; preds = %8
  %35 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %36 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %39 = call i64 @MIO_EMM_DMA_CFG(%struct.cvm_mmc_host* %38)
  %40 = add nsw i64 %37, %39
  %41 = call i32 @readq(i64 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* @MIO_EMM_DMA_CFG_EN, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %48 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %51 = call i64 @MIO_EMM_DMA_CFG(%struct.cvm_mmc_host* %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @writeq(i32 %46, i64 %52)
  %54 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %55 = call i32 @octeon_mmc_set_shared_power(%struct.cvm_mmc_host* %54, i32 0)
  ret i32 0
}

declare dso_local %struct.cvm_mmc_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @cvm_mmc_of_slot_remove(i64) #1

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @MIO_EMM_DMA_CFG(%struct.cvm_mmc_host*) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @octeon_mmc_set_shared_power(%struct.cvm_mmc_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
