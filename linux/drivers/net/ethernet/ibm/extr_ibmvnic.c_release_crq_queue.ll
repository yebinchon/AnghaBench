; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_release_crq_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_release_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, i32, %struct.vio_dev*, %struct.ibmvnic_crq_queue }
%struct.vio_dev = type { i32, i32, i32 }
%struct.ibmvnic_crq_queue = type { i32, i32*, i32 }

@.str = private unnamed_addr constant [15 x i8] c"Releasing CRQ\0A\00", align 1
@H_FREE_CRQ = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*)* @release_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_crq_queue(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_adapter*, align 8
  %3 = alloca %struct.ibmvnic_crq_queue*, align 8
  %4 = alloca %struct.vio_dev*, align 8
  %5 = alloca i64, align 8
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %2, align 8
  %6 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %6, i32 0, i32 3
  store %struct.ibmvnic_crq_queue* %7, %struct.ibmvnic_crq_queue** %3, align 8
  %8 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %8, i32 0, i32 2
  %10 = load %struct.vio_dev*, %struct.vio_dev** %9, align 8
  store %struct.vio_dev* %10, %struct.vio_dev** %4, align 8
  %11 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %3, align 8
  %12 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %63

16:                                               ; preds = %1
  %17 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %18 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @netdev_dbg(i32 %19, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %22 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %25 = call i32 @free_irq(i32 %23, %struct.ibmvnic_adapter* %24)
  %26 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %26, i32 0, i32 0
  %28 = call i32 @tasklet_kill(i32* %27)
  br label %29

29:                                               ; preds = %43, %16
  %30 = load i32, i32* @H_FREE_CRQ, align 4
  %31 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %32 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @plpar_hcall_norets(i32 %30, i32 %33)
  store i64 %34, i64* %5, align 8
  br label %35

35:                                               ; preds = %29
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @H_BUSY, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %43, label %39

39:                                               ; preds = %35
  %40 = load i64, i64* %5, align 8
  %41 = call i64 @H_IS_LONG_BUSY(i64 %40)
  %42 = icmp ne i64 %41, 0
  br label %43

43:                                               ; preds = %39, %35
  %44 = phi i1 [ true, %35 ], [ %42, %39 ]
  br i1 %44, label %29, label %45

45:                                               ; preds = %43
  %46 = load %struct.vio_dev*, %struct.vio_dev** %4, align 8
  %47 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %46, i32 0, i32 0
  %48 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %3, align 8
  %49 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %53 = call i32 @dma_unmap_single(i32* %47, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %3, align 8
  %55 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = ptrtoint i32* %56 to i64
  %58 = call i32 @free_page(i64 %57)
  %59 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %3, align 8
  %60 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.ibmvnic_crq_queue*, %struct.ibmvnic_crq_queue** %3, align 8
  %62 = getelementptr inbounds %struct.ibmvnic_crq_queue, %struct.ibmvnic_crq_queue* %61, i32 0, i32 0
  store i32 0, i32* %62, align 8
  br label %63

63:                                               ; preds = %45, %15
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i32 @free_irq(i32, %struct.ibmvnic_adapter*) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i64 @plpar_hcall_norets(i32, i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i64) #1

declare dso_local i32 @dma_unmap_single(i32*, i32, i32, i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
