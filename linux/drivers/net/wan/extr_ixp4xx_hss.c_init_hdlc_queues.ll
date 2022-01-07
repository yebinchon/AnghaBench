; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_init_hdlc_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wan/extr_ixp4xx_hss.c_init_hdlc_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { %struct.TYPE_8__**, %struct.TYPE_9__*, %struct.TYPE_8__**, %struct.TYPE_8__**, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i8* }
%struct.desc = type { i32, i32 }

@ports_open = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@POOL_ALLOC_SIZE = common dso_local global i32 0, align 4
@dma_pool = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@RX_DESCS = common dso_local global i32 0, align 4
@RX_SIZE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.port*)* @init_hdlc_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_hdlc_queues(%struct.port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.desc*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca i8*, align 8
  store %struct.port* %0, %struct.port** %3, align 8
  %8 = load i32, i32* @ports_open, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @DRV_NAME, align 4
  %12 = load %struct.port*, %struct.port** %3, align 8
  %13 = getelementptr inbounds %struct.port, %struct.port* %12, i32 0, i32 1
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i32, i32* @POOL_ALLOC_SIZE, align 4
  %17 = call i32 @dma_pool_create(i32 %11, i32* %15, i32 %16, i32 32, i32 0)
  store i32 %17, i32* @dma_pool, align 4
  %18 = load i32, i32* @dma_pool, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %10
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %107

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* @dma_pool, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load %struct.port*, %struct.port** %3, align 8
  %28 = getelementptr inbounds %struct.port, %struct.port* %27, i32 0, i32 4
  %29 = call %struct.TYPE_8__** @dma_pool_alloc(i32 %25, i32 %26, i32* %28)
  %30 = load %struct.port*, %struct.port** %3, align 8
  %31 = getelementptr inbounds %struct.port, %struct.port* %30, i32 0, i32 3
  store %struct.TYPE_8__** %29, %struct.TYPE_8__*** %31, align 8
  %32 = icmp ne %struct.TYPE_8__** %29, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %107

36:                                               ; preds = %24
  %37 = load %struct.port*, %struct.port** %3, align 8
  %38 = getelementptr inbounds %struct.port, %struct.port* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %38, align 8
  %40 = load i32, i32* @POOL_ALLOC_SIZE, align 4
  %41 = call i32 @memset(%struct.TYPE_8__** %39, i32 0, i32 %40)
  %42 = load %struct.port*, %struct.port** %3, align 8
  %43 = getelementptr inbounds %struct.port, %struct.port* %42, i32 0, i32 0
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %43, align 8
  %45 = call i32 @memset(%struct.TYPE_8__** %44, i32 0, i32 8)
  %46 = load %struct.port*, %struct.port** %3, align 8
  %47 = getelementptr inbounds %struct.port, %struct.port* %46, i32 0, i32 2
  %48 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %47, align 8
  %49 = call i32 @memset(%struct.TYPE_8__** %48, i32 0, i32 8)
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %103, %36
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @RX_DESCS, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %106

54:                                               ; preds = %50
  %55 = load %struct.port*, %struct.port** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call %struct.desc* @rx_desc_ptr(%struct.port* %55, i32 %56)
  store %struct.desc* %57, %struct.desc** %5, align 8
  %58 = load i32, i32* @RX_SIZE, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.TYPE_8__* @kmalloc(i32 %58, i32 %59)
  store %struct.TYPE_8__* %60, %struct.TYPE_8__** %6, align 8
  %61 = icmp ne %struct.TYPE_8__* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %107

65:                                               ; preds = %54
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %67 = bitcast %struct.TYPE_8__* %66 to i8*
  store i8* %67, i8** %7, align 8
  %68 = load i32, i32* @RX_SIZE, align 4
  %69 = load %struct.desc*, %struct.desc** %5, align 8
  %70 = getelementptr inbounds %struct.desc, %struct.desc* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.port*, %struct.port** %3, align 8
  %72 = getelementptr inbounds %struct.port, %struct.port* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load i8*, i8** %7, align 8
  %76 = load i32, i32* @RX_SIZE, align 4
  %77 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %78 = call i32 @dma_map_single(i32* %74, i8* %75, i32 %76, i32 %77)
  %79 = load %struct.desc*, %struct.desc** %5, align 8
  %80 = getelementptr inbounds %struct.desc, %struct.desc* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  %81 = load %struct.port*, %struct.port** %3, align 8
  %82 = getelementptr inbounds %struct.port, %struct.port* %81, i32 0, i32 1
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load %struct.desc*, %struct.desc** %5, align 8
  %86 = getelementptr inbounds %struct.desc, %struct.desc* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @dma_mapping_error(i32* %84, i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %65
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %92 = call i32 @free_buffer(%struct.TYPE_8__* %91)
  %93 = load i32, i32* @EIO, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %2, align 4
  br label %107

95:                                               ; preds = %65
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %97 = load %struct.port*, %struct.port** %3, align 8
  %98 = getelementptr inbounds %struct.port, %struct.port* %97, i32 0, i32 0
  %99 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %98, align 8
  %100 = load i32, i32* %4, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %99, i64 %101
  store %struct.TYPE_8__* %96, %struct.TYPE_8__** %102, align 8
  br label %103

103:                                              ; preds = %95
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %4, align 4
  br label %50

106:                                              ; preds = %50
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %106, %90, %62, %33, %20
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @dma_pool_create(i32, i32*, i32, i32, i32) #1

declare dso_local %struct.TYPE_8__** @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @memset(%struct.TYPE_8__**, i32, i32) #1

declare dso_local %struct.desc* @rx_desc_ptr(%struct.port*, i32) #1

declare dso_local %struct.TYPE_8__* @kmalloc(i32, i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i32, i32) #1

declare dso_local i64 @dma_mapping_error(i32*, i32) #1

declare dso_local i32 @free_buffer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
