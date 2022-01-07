; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_data_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_data_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxamci_host = type { %struct.TYPE_4__*, i32, %struct.mmc_data*, i32, %struct.dma_chan*, %struct.dma_chan* }
%struct.TYPE_4__ = type { i64 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_chan = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@STAT_READ_TIME_OUT = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@STAT_CRC_READ_ERROR = common dso_local global i32 0, align 4
@STAT_CRC_WRITE_ERROR = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@DATA_TRAN_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxamci_host*, i32)* @pxamci_data_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxamci_data_done(%struct.pxamci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxamci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_data*, align 8
  %7 = alloca %struct.dma_chan*, align 8
  store %struct.pxamci_host* %0, %struct.pxamci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %9 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %8, i32 0, i32 2
  %10 = load %struct.mmc_data*, %struct.mmc_data** %9, align 8
  store %struct.mmc_data* %10, %struct.mmc_data** %6, align 8
  %11 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %12 = icmp ne %struct.mmc_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %117

14:                                               ; preds = %2
  %15 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %16 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @MMC_DATA_READ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %14
  %22 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %23 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %22, i32 0, i32 5
  %24 = load %struct.dma_chan*, %struct.dma_chan** %23, align 8
  store %struct.dma_chan* %24, %struct.dma_chan** %7, align 8
  br label %29

25:                                               ; preds = %14
  %26 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %27 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %26, i32 0, i32 4
  %28 = load %struct.dma_chan*, %struct.dma_chan** %27, align 8
  store %struct.dma_chan* %28, %struct.dma_chan** %7, align 8
  br label %29

29:                                               ; preds = %25, %21
  %30 = load %struct.dma_chan*, %struct.dma_chan** %7, align 8
  %31 = getelementptr inbounds %struct.dma_chan, %struct.dma_chan* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %39 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %42 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @dma_unmap_sg(i32 %34, i32 %37, i32 %40, i32 %43)
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @STAT_READ_TIME_OUT, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %29
  %50 = load i32, i32* @ETIMEDOUT, align 4
  %51 = sub nsw i32 0, %50
  %52 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %53 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 4
  br label %67

54:                                               ; preds = %29
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @STAT_CRC_READ_ERROR, align 4
  %57 = load i32, i32* @STAT_CRC_WRITE_ERROR, align 4
  %58 = or i32 %56, %57
  %59 = and i32 %55, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %54
  %62 = load i32, i32* @EILSEQ, align 4
  %63 = sub nsw i32 0, %62
  %64 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %65 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %61, %54
  br label %67

67:                                               ; preds = %66, %49
  %68 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %69 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %82, label %72

72:                                               ; preds = %67
  %73 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %74 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %77 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = mul nsw i32 %75, %78
  %80 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %81 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %85

82:                                               ; preds = %67
  %83 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  %84 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %83, i32 0, i32 1
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %72
  %86 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %87 = load i32, i32* @DATA_TRAN_DONE, align 4
  %88 = call i32 @pxamci_disable_irq(%struct.pxamci_host* %86, i32 %87)
  %89 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %90 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %89, i32 0, i32 2
  store %struct.mmc_data* null, %struct.mmc_data** %90, align 8
  %91 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %92 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %85
  %98 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %99 = call i32 @pxamci_stop_clock(%struct.pxamci_host* %98)
  %100 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %101 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %102 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %101, i32 0, i32 0
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %107 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @pxamci_start_cmd(%struct.pxamci_host* %100, i64 %105, i32 %108)
  br label %116

110:                                              ; preds = %85
  %111 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %112 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %113 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %112, i32 0, i32 0
  %114 = load %struct.TYPE_4__*, %struct.TYPE_4__** %113, align 8
  %115 = call i32 @pxamci_finish_request(%struct.pxamci_host* %111, %struct.TYPE_4__* %114)
  br label %116

116:                                              ; preds = %110, %97
  store i32 1, i32* %3, align 4
  br label %117

117:                                              ; preds = %116, %13
  %118 = load i32, i32* %3, align 4
  ret i32 %118
}

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @pxamci_disable_irq(%struct.pxamci_host*, i32) #1

declare dso_local i32 @pxamci_stop_clock(%struct.pxamci_host*) #1

declare dso_local i32 @pxamci_start_cmd(%struct.pxamci_host*, i64, i32) #1

declare dso_local i32 @pxamci_finish_request(%struct.pxamci_host*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
