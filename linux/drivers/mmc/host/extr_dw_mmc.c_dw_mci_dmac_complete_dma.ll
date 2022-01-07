; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_dmac_complete_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_dmac_complete_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i64, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32, %struct.mmc_data* }
%struct.TYPE_4__ = type { i32 (%struct.dw_mci*)* }
%struct.TYPE_3__ = type { i32 }
%struct.mmc_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"DMA complete\0A\00", align 1
@TRANS_MODE_EDMAC = common dso_local global i64 0, align 8
@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EVENT_XFER_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @dw_mci_dmac_complete_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_dmac_complete_dma(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.dw_mci*
  store %struct.dw_mci* %6, %struct.dw_mci** %3, align 8
  %7 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %8 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %7, i32 0, i32 6
  %9 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  store %struct.mmc_data* %9, %struct.mmc_data** %4, align 8
  %10 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %11 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @dev_vdbg(i32 %12, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %15 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TRANS_MODE_EDMAC, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %1
  %20 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %21 = icmp ne %struct.mmc_data* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %19
  %23 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %24 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @MMC_DATA_READ, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %22
  %30 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %31 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %30, i32 0, i32 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @mmc_dev(i32 %34)
  %36 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %40 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %43 = call i32 @dma_sync_sg_for_cpu(i32 %35, i32 %38, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %29, %22, %19, %1
  %45 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %46 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %45, i32 0, i32 3
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32 (%struct.dw_mci*)*, i32 (%struct.dw_mci*)** %48, align 8
  %50 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %51 = call i32 %49(%struct.dw_mci* %50)
  %52 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %53 = icmp ne %struct.mmc_data* %52, null
  br i1 %53, label %54, label %62

54:                                               ; preds = %44
  %55 = load i32, i32* @EVENT_XFER_COMPLETE, align 4
  %56 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %57 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %56, i32 0, i32 2
  %58 = call i32 @set_bit(i32 %55, i32* %57)
  %59 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %60 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %59, i32 0, i32 1
  %61 = call i32 @tasklet_schedule(i32* %60)
  br label %62

62:                                               ; preds = %54, %44
  ret void
}

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @dma_sync_sg_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
