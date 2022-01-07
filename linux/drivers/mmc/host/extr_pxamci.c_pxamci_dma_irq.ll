; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_dma_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_dma_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxamci_host = type { i32, %struct.TYPE_2__*, i32, i64, i32, %struct.dma_chan*, %struct.dma_chan* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dma_chan = type { i32 }
%struct.dma_tx_state = type { i32 }

@MMC_DATA_READ = common dso_local global i32 0, align 4
@DMA_COMPLETE = common dso_local global i32 0, align 4
@BUF_PART_FULL = common dso_local global i32 0, align 4
@MMC_PRTBUF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"%s: DMA error on %s channel\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"tx\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @pxamci_dma_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pxamci_dma_irq(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.pxamci_host*, align 8
  %4 = alloca %struct.dma_tx_state, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_chan*, align 8
  %7 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.pxamci_host*
  store %struct.pxamci_host* %9, %struct.pxamci_host** %3, align 8
  %10 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %11 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %10, i32 0, i32 0
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %15 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = icmp ne %struct.TYPE_2__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  br label %81

19:                                               ; preds = %1
  %20 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %21 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @MMC_DATA_READ, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %30 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %29, i32 0, i32 6
  %31 = load %struct.dma_chan*, %struct.dma_chan** %30, align 8
  store %struct.dma_chan* %31, %struct.dma_chan** %6, align 8
  br label %36

32:                                               ; preds = %19
  %33 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %34 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %33, i32 0, i32 5
  %35 = load %struct.dma_chan*, %struct.dma_chan** %34, align 8
  store %struct.dma_chan* %35, %struct.dma_chan** %6, align 8
  br label %36

36:                                               ; preds = %32, %28
  %37 = load %struct.dma_chan*, %struct.dma_chan** %6, align 8
  %38 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %39 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @dmaengine_tx_status(%struct.dma_chan* %37, i32 %40, %struct.dma_tx_state* %4)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @DMA_COMPLETE, align 4
  %44 = icmp eq i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %36
  %49 = load i32, i32* @BUF_PART_FULL, align 4
  %50 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %51 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %50, i32 0, i32 3
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @MMC_PRTBUF, align 8
  %54 = add nsw i64 %52, %53
  %55 = call i32 @writel(i32 %49, i64 %54)
  br label %80

56:                                               ; preds = %36
  %57 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %58 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @mmc_hostname(i32 %59)
  %61 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %62 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %61, i32 0, i32 1
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MMC_DATA_READ, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %71 = call i32 @pr_err(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %60, i8* %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  %74 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %75 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  store i32 %73, i32* %77, align 4
  %78 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %79 = call i32 @pxamci_data_done(%struct.pxamci_host* %78, i32 0)
  br label %80

80:                                               ; preds = %56, %48
  br label %81

81:                                               ; preds = %80, %18
  %82 = load %struct.pxamci_host*, %struct.pxamci_host** %3, align 8
  %83 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %82, i32 0, i32 0
  %84 = load i64, i64* %7, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dmaengine_tx_status(%struct.dma_chan*, i32, %struct.dma_tx_state*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pr_err(i8*, i32, i8*) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @pxamci_data_done(%struct.pxamci_host*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
