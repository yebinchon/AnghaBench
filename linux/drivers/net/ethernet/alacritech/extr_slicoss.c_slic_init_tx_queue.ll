; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_init_tx_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/alacritech/extr_slicoss.c_slic_init_tx_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slic_device = type { i32, %struct.TYPE_2__*, %struct.slic_tx_queue }
%struct.TYPE_2__ = type { i32 }
%struct.slic_tx_queue = type { i32, %struct.slic_tx_buffer*, i32, i64, i64 }
%struct.slic_tx_buffer = type { i32, %struct.slic_tx_desc* }
%struct.slic_tx_desc = type { i8*, i64, i32, i8* }

@SLIC_NUM_TX_DESCS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"slic_pool\00", align 1
@SLIC_TX_DESC_ALIGN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to create dma pool\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to alloc pool chunk (%i)\0A\00", align 1
@SLIC_CMD_XMT_REQ = common dso_local global i32 0, align 4
@SLIC_CMD_TYPE_DUMB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slic_device*)* @slic_init_tx_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @slic_init_tx_queue(%struct.slic_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slic_device*, align 8
  %4 = alloca %struct.slic_tx_queue*, align 8
  %5 = alloca %struct.slic_tx_buffer*, align 8
  %6 = alloca %struct.slic_tx_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.slic_device* %0, %struct.slic_device** %3, align 8
  %9 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %10 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %9, i32 0, i32 2
  store %struct.slic_tx_queue* %10, %struct.slic_tx_queue** %4, align 8
  %11 = load i32, i32* @SLIC_NUM_TX_DESCS, align 4
  %12 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %13 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %15 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %14, i32 0, i32 4
  store i64 0, i64* %15, align 8
  %16 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %17 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %19 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call %struct.slic_tx_buffer* @kcalloc(i32 %20, i32 16, i32 %21)
  %23 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %24 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %23, i32 0, i32 1
  store %struct.slic_tx_buffer* %22, %struct.slic_tx_buffer** %24, align 8
  %25 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %26 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %25, i32 0, i32 1
  %27 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %26, align 8
  %28 = icmp ne %struct.slic_tx_buffer* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %138

32:                                               ; preds = %1
  %33 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %34 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* @SLIC_TX_DESC_ALIGN, align 4
  %38 = call i32 @dma_pool_create(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* %36, i32 32, i32 %37, i32 4096)
  %39 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %40 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %42 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %52, label %45

45:                                               ; preds = %32
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %49 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 (i32, i8*, ...) @netdev_err(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %132

52:                                               ; preds = %32
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %101, %52
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %56 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp ult i32 %54, %57
  br i1 %58, label %59, label %104

59:                                               ; preds = %53
  %60 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %61 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %60, i32 0, i32 1
  %62 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %61, align 8
  %63 = load i32, i32* %7, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %62, i64 %64
  store %struct.slic_tx_buffer* %65, %struct.slic_tx_buffer** %5, align 8
  %66 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %67 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %5, align 8
  %71 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %70, i32 0, i32 0
  %72 = call %struct.slic_tx_desc* @dma_pool_zalloc(i32 %68, i32 %69, i32* %71)
  store %struct.slic_tx_desc* %72, %struct.slic_tx_desc** %6, align 8
  %73 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %6, align 8
  %74 = icmp ne %struct.slic_tx_desc* %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %59
  %76 = load %struct.slic_device*, %struct.slic_device** %3, align 8
  %77 = getelementptr inbounds %struct.slic_device, %struct.slic_device* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 (i32, i8*, ...) @netdev_err(i32 %78, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %8, align 4
  br label %105

83:                                               ; preds = %59
  %84 = load i32, i32* %7, align 4
  %85 = add i32 %84, 1
  %86 = call i8* @cpu_to_le32(i32 %85)
  %87 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %6, align 8
  %88 = getelementptr inbounds %struct.slic_tx_desc, %struct.slic_tx_desc* %87, i32 0, i32 3
  store i8* %86, i8** %88, align 8
  %89 = load i32, i32* @SLIC_CMD_XMT_REQ, align 4
  %90 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %6, align 8
  %91 = getelementptr inbounds %struct.slic_tx_desc, %struct.slic_tx_desc* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %6, align 8
  %93 = getelementptr inbounds %struct.slic_tx_desc, %struct.slic_tx_desc* %92, i32 0, i32 1
  store i64 0, i64* %93, align 8
  %94 = load i32, i32* @SLIC_CMD_TYPE_DUMB, align 4
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %6, align 8
  %97 = getelementptr inbounds %struct.slic_tx_desc, %struct.slic_tx_desc* %96, i32 0, i32 0
  store i8* %95, i8** %97, align 8
  %98 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %6, align 8
  %99 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %5, align 8
  %100 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %99, i32 0, i32 1
  store %struct.slic_tx_desc* %98, %struct.slic_tx_desc** %100, align 8
  br label %101

101:                                              ; preds = %83
  %102 = load i32, i32* %7, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %53

104:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %138

105:                                              ; preds = %75
  br label %106

106:                                              ; preds = %110, %105
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %7, align 4
  %109 = icmp ne i32 %107, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %106
  %111 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %112 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %111, i32 0, i32 1
  %113 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %112, align 8
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %113, i64 %115
  store %struct.slic_tx_buffer* %116, %struct.slic_tx_buffer** %5, align 8
  %117 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %118 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %5, align 8
  %121 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %120, i32 0, i32 1
  %122 = load %struct.slic_tx_desc*, %struct.slic_tx_desc** %121, align 8
  %123 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %5, align 8
  %124 = getelementptr inbounds %struct.slic_tx_buffer, %struct.slic_tx_buffer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @dma_pool_free(i32 %119, %struct.slic_tx_desc* %122, i32 %125)
  br label %106

127:                                              ; preds = %106
  %128 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %129 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @dma_pool_destroy(i32 %130)
  br label %132

132:                                              ; preds = %127, %45
  %133 = load %struct.slic_tx_queue*, %struct.slic_tx_queue** %4, align 8
  %134 = getelementptr inbounds %struct.slic_tx_queue, %struct.slic_tx_queue* %133, i32 0, i32 1
  %135 = load %struct.slic_tx_buffer*, %struct.slic_tx_buffer** %134, align 8
  %136 = call i32 @kfree(%struct.slic_tx_buffer* %135)
  %137 = load i32, i32* %8, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %132, %104, %29
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local %struct.slic_tx_buffer* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @dma_pool_create(i8*, i32*, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local %struct.slic_tx_desc* @dma_pool_zalloc(i32, i32, i32*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dma_pool_free(i32, %struct.slic_tx_desc*, i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @kfree(%struct.slic_tx_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
