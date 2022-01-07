; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_release_sub_crq_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_release_sub_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.device }
%struct.device = type { i32 }
%struct.ibmvnic_sub_crq_queue = type { i64, i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Releasing sub-CRQ\0A\00", align 1
@H_FREE_SUB_CRQ = common dso_local global i32 0, align 4
@H_BUSY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"Failed to release sub-CRQ %16lx, rc = %ld\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvnic_adapter*, %struct.ibmvnic_sub_crq_queue*, i32)* @release_sub_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_sub_crq_queue(%struct.ibmvnic_adapter* %0, %struct.ibmvnic_sub_crq_queue* %1, i32 %2) #0 {
  %4 = alloca %struct.ibmvnic_adapter*, align 8
  %5 = alloca %struct.ibmvnic_sub_crq_queue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i64, align 8
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %4, align 8
  store %struct.ibmvnic_sub_crq_queue* %1, %struct.ibmvnic_sub_crq_queue** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %10 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.device* %12, %struct.device** %7, align 8
  %13 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %14 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @netdev_dbg(i32 %15, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %54

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %39, %19
  %21 = load i32, i32* @H_FREE_SUB_CRQ, align 4
  %22 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %28 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @plpar_hcall_norets(i32 %21, i32 %26, i32 %29)
  store i64 %30, i64* %8, align 8
  br label %31

31:                                               ; preds = %20
  %32 = load i64, i64* %8, align 8
  %33 = load i64, i64* @H_BUSY, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %8, align 8
  %37 = call i64 @H_IS_LONG_BUSY(i64 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %35, %31
  %40 = phi i1 [ true, %31 ], [ %38, %35 ]
  br i1 %40, label %20, label %41

41:                                               ; preds = %39
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %41
  %45 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %4, align 8
  %46 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %49 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @netdev_err(i32 %47, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i32 %50, i64 %51)
  br label %53

53:                                               ; preds = %44, %41
  br label %54

54:                                               ; preds = %53, %3
  %55 = load %struct.device*, %struct.device** %7, align 8
  %56 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %57 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = mul nsw i32 4, %59
  %61 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %62 = call i32 @dma_unmap_single(%struct.device* %55, i32 %58, i32 %60, i32 %61)
  %63 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %64 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @free_pages(i64 %65, i32 2)
  %67 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %68 = call i32 @kfree(%struct.ibmvnic_sub_crq_queue* %67)
  ret void
}

declare dso_local i32 @netdev_dbg(i32, i8*) #1

declare dso_local i64 @plpar_hcall_norets(i32, i32, i32) #1

declare dso_local i64 @H_IS_LONG_BUSY(i64) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i64) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @kfree(%struct.ibmvnic_sub_crq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
