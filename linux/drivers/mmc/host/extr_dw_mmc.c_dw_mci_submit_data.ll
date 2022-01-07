; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_submit_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_submit_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, i64, i64, i32, i64, i64, i32*, i32, %struct.mmc_data*, i32 }
%struct.mmc_data = type { i32, i64, i32*, i32, i32 }

@SG_MITER_ATOMIC = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@DW_MCI_RECV_STATUS = common dso_local global i32 0, align 4
@DW_MCI_SEND_STATUS = common dso_local global i32 0, align 4
@SG_MITER_TO_SG = common dso_local global i32 0, align 4
@SG_MITER_FROM_SG = common dso_local global i32 0, align 4
@RINTSTS = common dso_local global i32 0, align 4
@SDMMC_INT_TXDR = common dso_local global i32 0, align 4
@SDMMC_INT_RXDR = common dso_local global i32 0, align 4
@INTMASK = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@SDMMC_CTRL_DMA_ENABLE = common dso_local global i32 0, align 4
@FIFOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.mmc_data*)* @dw_mci_submit_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_submit_data(%struct.dw_mci* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %8 = load i32, i32* @SG_MITER_ATOMIC, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @EINPROGRESS, align 4
  %10 = sub nsw i32 0, %9
  %11 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %14 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %13, i32 0, i32 8
  %15 = load %struct.mmc_data*, %struct.mmc_data** %14, align 8
  %16 = call i32 @WARN_ON(%struct.mmc_data* %15)
  %17 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %18 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %17, i32 0, i32 6
  store i32* null, i32** %18, align 8
  %19 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %20 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %21 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %20, i32 0, i32 8
  store %struct.mmc_data* %19, %struct.mmc_data** %21, align 8
  %22 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @MMC_DATA_READ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load i32, i32* @DW_MCI_RECV_STATUS, align 4
  %30 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %31 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %30, i32 0, i32 9
  store i32 %29, i32* %31, align 8
  br label %36

32:                                               ; preds = %2
  %33 = load i32, i32* @DW_MCI_SEND_STATUS, align 4
  %34 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %35 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %34, i32 0, i32 9
  store i32 %33, i32* %35, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %38 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %39 = call i32 @dw_mci_ctrl_thld(%struct.dw_mci* %37, %struct.mmc_data* %38)
  %40 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %41 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %42 = call i64 @dw_mci_submit_data_dma(%struct.dw_mci* %40, %struct.mmc_data* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %136

44:                                               ; preds = %36
  %45 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %46 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %45, i32 0, i32 8
  %47 = load %struct.mmc_data*, %struct.mmc_data** %46, align 8
  %48 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @MMC_DATA_READ, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* @SG_MITER_TO_SG, align 4
  %55 = load i32, i32* %6, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %6, align 4
  br label %61

57:                                               ; preds = %44
  %58 = load i32, i32* @SG_MITER_FROM_SG, align 4
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %63 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %62, i32 0, i32 7
  %64 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %65 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %64, i32 0, i32 2
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %68 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %6, align 4
  %71 = call i32 @sg_miter_start(i32* %63, i32* %66, i32 %69, i32 %70)
  %72 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %73 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %76 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %75, i32 0, i32 6
  store i32* %74, i32** %76, align 8
  %77 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %78 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %77, i32 0, i32 5
  store i64 0, i64* %78, align 8
  %79 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %80 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %79, i32 0, i32 4
  store i64 0, i64* %80, align 8
  %81 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %82 = load i32, i32* @RINTSTS, align 4
  %83 = load i32, i32* @SDMMC_INT_TXDR, align 4
  %84 = load i32, i32* @SDMMC_INT_RXDR, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @mci_writel(%struct.dw_mci* %81, i32 %82, i32 %85)
  %87 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %88 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %87, i32 0, i32 3
  %89 = load i64, i64* %5, align 8
  %90 = call i32 @spin_lock_irqsave(i32* %88, i64 %89)
  %91 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %92 = load i32, i32* @INTMASK, align 4
  %93 = call i32 @mci_readl(%struct.dw_mci* %91, i32 %92)
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* @SDMMC_INT_TXDR, align 4
  %95 = load i32, i32* @SDMMC_INT_RXDR, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* %7, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %7, align 4
  %99 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %100 = load i32, i32* @INTMASK, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @mci_writel(%struct.dw_mci* %99, i32 %100, i32 %101)
  %103 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %104 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %103, i32 0, i32 3
  %105 = load i64, i64* %5, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32* %104, i64 %105)
  %107 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %108 = load i32, i32* @CTRL, align 4
  %109 = call i32 @mci_readl(%struct.dw_mci* %107, i32 %108)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* @SDMMC_CTRL_DMA_ENABLE, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %7, align 4
  %114 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %115 = load i32, i32* @CTRL, align 4
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @mci_writel(%struct.dw_mci* %114, i32 %115, i32 %116)
  %118 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %119 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %61
  %123 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %124 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %125 = call i32 @dw_mci_adjust_fifoth(%struct.dw_mci* %123, %struct.mmc_data* %124)
  br label %133

126:                                              ; preds = %61
  %127 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %128 = load i32, i32* @FIFOTH, align 4
  %129 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %130 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @mci_writel(%struct.dw_mci* %127, i32 %128, i32 %131)
  br label %133

133:                                              ; preds = %126, %122
  %134 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %135 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  br label %142

136:                                              ; preds = %36
  %137 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %138 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %141 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %140, i32 0, i32 1
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %136, %133
  ret void
}

declare dso_local i32 @WARN_ON(%struct.mmc_data*) #1

declare dso_local i32 @dw_mci_ctrl_thld(%struct.dw_mci*, %struct.mmc_data*) #1

declare dso_local i64 @dw_mci_submit_data_dma(%struct.dw_mci*, %struct.mmc_data*) #1

declare dso_local i32 @sg_miter_start(i32*, i32*, i32, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mci_readl(%struct.dw_mci*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dw_mci_adjust_fifoth(%struct.dw_mci*, %struct.mmc_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
