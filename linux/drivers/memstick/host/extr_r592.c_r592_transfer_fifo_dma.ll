; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_transfer_fifo_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_r592.c_r592_transfer_fifo_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r592_device = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_7__ = type { i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@WRITE = common dso_local global i64 0, align 8
@R592_LFIFO_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"doing dma transfer\00", align 1
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"problem in dma_map_sg\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"DMA timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r592_device*)* @r592_transfer_fifo_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r592_transfer_fifo_dma(%struct.r592_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r592_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.r592_device* %0, %struct.r592_device** %3, align 8
  %7 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %8 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %13 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11, %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %116

21:                                               ; preds = %11
  %22 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %23 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %22, i32 0, i32 1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %4, align 4
  %28 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %29 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @WRITE, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @R592_LFIFO_SIZE, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %21
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %116

42:                                               ; preds = %21
  %43 = call i32 @dbg_verbose(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %45 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %47 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %46, i32 0, i32 3
  %48 = call i32 @reinit_completion(i32* %47)
  %49 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %50 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %49, i32 0, i32 2
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %54 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %53, i32 0, i32 1
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %42
  %60 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %63

61:                                               ; preds = %42
  %62 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi i32 [ %60, %59 ], [ %62, %61 ]
  %65 = call i32 @dma_map_sg(i32* %52, %struct.TYPE_8__* %56, i32 1, i32 %64)
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %76, label %68

68:                                               ; preds = %63
  %69 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %70 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = call i32 @sg_dma_len(%struct.TYPE_8__* %72)
  %74 = load i32, i32* @R592_LFIFO_SIZE, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %68, %63
  %77 = call i32 @message(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %116

80:                                               ; preds = %68
  %81 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @r592_start_dma(%struct.r592_device* %81, i32 %82)
  %84 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %85 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %84, i32 0, i32 3
  %86 = call i32 @msecs_to_jiffies(i32 1000)
  %87 = call i32 @wait_for_completion_timeout(i32* %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %95, label %89

89:                                               ; preds = %80
  %90 = call i32 @message(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  %91 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %92 = load i32, i32* @ETIMEDOUT, align 4
  %93 = sub nsw i32 0, %92
  %94 = call i32 @r592_stop_dma(%struct.r592_device* %91, i32 %93)
  br label %95

95:                                               ; preds = %89, %80
  %96 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %97 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %96, i32 0, i32 2
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %101 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %100, i32 0, i32 1
  %102 = load %struct.TYPE_7__*, %struct.TYPE_7__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 1
  %104 = load i32, i32* %6, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %95
  %107 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  br label %110

108:                                              ; preds = %95
  %109 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  %112 = call i32 @dma_unmap_sg(i32* %99, %struct.TYPE_8__* %103, i32 1, i32 %111)
  %113 = load %struct.r592_device*, %struct.r592_device** %3, align 8
  %114 = getelementptr inbounds %struct.r592_device, %struct.r592_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %110, %76, %39, %18
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @dbg_verbose(i8*) #1

declare dso_local i32 @reinit_completion(i32*) #1

declare dso_local i32 @dma_map_sg(i32*, %struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @sg_dma_len(%struct.TYPE_8__*) #1

declare dso_local i32 @message(i8*) #1

declare dso_local i32 @r592_start_dma(%struct.r592_device*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @r592_stop_dma(%struct.r592_device*, i32) #1

declare dso_local i32 @dma_unmap_sg(i32*, %struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
