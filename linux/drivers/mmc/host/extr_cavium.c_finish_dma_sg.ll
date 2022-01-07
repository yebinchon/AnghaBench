; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_finish_dma_sg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_cavium.c_finish_dma_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cvm_mmc_host = type { i32, i64 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i64 }

@MIO_EMM_DMA_FIFO_CFG_COUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%u requests still pending\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cvm_mmc_host*, %struct.mmc_data*)* @finish_dma_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @finish_dma_sg(%struct.cvm_mmc_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.cvm_mmc_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cvm_mmc_host* %0, %struct.cvm_mmc_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %7 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %8 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %11 = call i64 @MIO_EMM_DMA_FIFO_CFG(%struct.cvm_mmc_host* %10)
  %12 = add nsw i64 %9, %11
  %13 = call i32 @readq(i64 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @MIO_EMM_DMA_FIFO_CFG_COUNT, align 4
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @FIELD_GET(i32 %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %21 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %25

25:                                               ; preds = %19, %2
  %26 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %27 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %30 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = mul nsw i32 %28, %31
  %33 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %34 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 5
  store i64 0, i64* %36, align 8
  %37 = call i32 @BIT_ULL(i32 16)
  %38 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %42 = call i64 @MIO_EMM_DMA_FIFO_CFG(%struct.cvm_mmc_host* %41)
  %43 = add nsw i64 %40, %42
  %44 = call i32 @writeq(i32 %37, i64 %43)
  %45 = load %struct.cvm_mmc_host*, %struct.cvm_mmc_host** %3, align 8
  %46 = getelementptr inbounds %struct.cvm_mmc_host, %struct.cvm_mmc_host* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %49 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %52 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %55 = call i32 @get_dma_dir(%struct.mmc_data* %54)
  %56 = call i32 @dma_unmap_sg(i32 %47, i32 %50, i32 %53, i32 %55)
  ret i32 1
}

declare dso_local i32 @readq(i64) #1

declare dso_local i64 @MIO_EMM_DMA_FIFO_CFG(%struct.cvm_mmc_host*) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @writeq(i32, i64) #1

declare dso_local i32 @BIT_ULL(i32) #1

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @get_dma_dir(%struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
