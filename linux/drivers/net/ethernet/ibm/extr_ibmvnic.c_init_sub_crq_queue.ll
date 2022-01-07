; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_sub_crq_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/extr_ibmvnic.c_init_sub_crq_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ibmvnic_sub_crq_queue = type { i32, %union.sub_crq*, i32, i32, i32, i32, i32, %struct.ibmvnic_adapter* }
%union.sub_crq = type { i32 }
%struct.ibmvnic_adapter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Couldn't allocate crq queue messages page\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Couldn't map crq queue messages page\0A\00", align 1
@H_RESOURCE = common dso_local global i32 0, align 4
@H_CLOSED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Partner adapter not ready, waiting.\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error %d registering sub-crq\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"sub-crq initialized, num %lx, hw_irq=%lx, irq=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ibmvnic_sub_crq_queue* (%struct.ibmvnic_adapter*)* @init_sub_crq_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ibmvnic_sub_crq_queue* @init_sub_crq_queue(%struct.ibmvnic_adapter* %0) #0 {
  %2 = alloca %struct.ibmvnic_sub_crq_queue*, align 8
  %3 = alloca %struct.ibmvnic_adapter*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.ibmvnic_sub_crq_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.ibmvnic_adapter* %0, %struct.ibmvnic_adapter** %3, align 8
  %7 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.ibmvnic_sub_crq_queue* @kzalloc(i32 48, i32 %11)
  store %struct.ibmvnic_sub_crq_queue* %12, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %13 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %14 = icmp ne %struct.ibmvnic_sub_crq_queue* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store %struct.ibmvnic_sub_crq_queue* null, %struct.ibmvnic_sub_crq_queue** %2, align 8
  br label %134

16:                                               ; preds = %1
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = load i32, i32* @__GFP_ZERO, align 4
  %19 = or i32 %17, %18
  %20 = call i64 @__get_free_pages(i32 %19, i32 2)
  %21 = inttoptr i64 %20 to %union.sub_crq*
  %22 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %23 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %22, i32 0, i32 1
  store %union.sub_crq* %21, %union.sub_crq** %23, align 8
  %24 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %25 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %24, i32 0, i32 1
  %26 = load %union.sub_crq*, %union.sub_crq** %25, align 8
  %27 = icmp ne %union.sub_crq* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %16
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %131

31:                                               ; preds = %16
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %34 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %33, i32 0, i32 1
  %35 = load %union.sub_crq*, %union.sub_crq** %34, align 8
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = mul nsw i32 4, %36
  %38 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %39 = call i32 @dma_map_single(%struct.device* %32, %union.sub_crq* %35, i32 %37, i32 %38)
  %40 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %41 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 8
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %44 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @dma_mapping_error(%struct.device* %42, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %31
  %49 = load %struct.device*, %struct.device** %4, align 8
  %50 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %49, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  br label %125

51:                                               ; preds = %31
  %52 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %53 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %58 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = mul nsw i32 4, %60
  %62 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %63 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %62, i32 0, i32 5
  %64 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %65 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %64, i32 0, i32 4
  %66 = call i32 @h_reg_sub_crq(i32 %56, i32 %59, i32 %61, i32* %63, i32* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @H_RESOURCE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %51
  %71 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %72 = call i32 @ibmvnic_reset_crq(%struct.ibmvnic_adapter* %71)
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %70, %51
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @H_CLOSED, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %73
  %78 = load %struct.device*, %struct.device** %4, align 8
  %79 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %78, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %88

80:                                               ; preds = %73
  %81 = load i32, i32* %6, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load %struct.device*, %struct.device** %4, align 8
  %85 = load i32, i32* %6, align 4
  %86 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %84, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i32 %85)
  br label %116

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %77
  %89 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %90 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %91 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %90, i32 0, i32 7
  store %struct.ibmvnic_adapter* %89, %struct.ibmvnic_adapter** %91, align 8
  %92 = load i32, i32* @PAGE_SIZE, align 4
  %93 = mul nsw i32 4, %92
  %94 = sext i32 %93 to i64
  %95 = udiv i64 %94, 4
  %96 = trunc i64 %95 to i32
  %97 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %98 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %97, i32 0, i32 0
  store i32 %96, i32* %98, align 8
  %99 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %100 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %99, i32 0, i32 6
  %101 = call i32 @spin_lock_init(i32* %100)
  %102 = load %struct.ibmvnic_adapter*, %struct.ibmvnic_adapter** %3, align 8
  %103 = getelementptr inbounds %struct.ibmvnic_adapter, %struct.ibmvnic_adapter* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %106 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %105, i32 0, i32 5
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %109 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %112 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @netdev_dbg(i32 %104, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %110, i32 %113)
  %115 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  store %struct.ibmvnic_sub_crq_queue* %115, %struct.ibmvnic_sub_crq_queue** %2, align 8
  br label %134

116:                                              ; preds = %83
  %117 = load %struct.device*, %struct.device** %4, align 8
  %118 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %119 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* @PAGE_SIZE, align 4
  %122 = mul nsw i32 4, %121
  %123 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  %124 = call i32 @dma_unmap_single(%struct.device* %117, i32 %120, i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %116, %48
  %126 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %127 = getelementptr inbounds %struct.ibmvnic_sub_crq_queue, %struct.ibmvnic_sub_crq_queue* %126, i32 0, i32 1
  %128 = load %union.sub_crq*, %union.sub_crq** %127, align 8
  %129 = ptrtoint %union.sub_crq* %128 to i64
  %130 = call i32 @free_pages(i64 %129, i32 2)
  br label %131

131:                                              ; preds = %125, %28
  %132 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %5, align 8
  %133 = call i32 @kfree(%struct.ibmvnic_sub_crq_queue* %132)
  store %struct.ibmvnic_sub_crq_queue* null, %struct.ibmvnic_sub_crq_queue** %2, align 8
  br label %134

134:                                              ; preds = %131, %88, %15
  %135 = load %struct.ibmvnic_sub_crq_queue*, %struct.ibmvnic_sub_crq_queue** %2, align 8
  ret %struct.ibmvnic_sub_crq_queue* %135
}

declare dso_local %struct.ibmvnic_sub_crq_queue* @kzalloc(i32, i32) #1

declare dso_local i64 @__get_free_pages(i32, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @dma_map_single(%struct.device*, %union.sub_crq*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i32) #1

declare dso_local i32 @h_reg_sub_crq(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @ibmvnic_reset_crq(%struct.ibmvnic_adapter*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dma_unmap_single(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @free_pages(i64, i32) #1

declare dso_local i32 @kfree(%struct.ibmvnic_sub_crq_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
