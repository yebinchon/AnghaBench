; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_dma_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/rcar-vin/extr_rcar-dma.c_rvin_dma_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rvin_dev = type { i32, i32, i32**, i32, i32, i32, i32, %struct.vb2_queue }
%struct.vb2_queue = type { i32, i32, i32, i32, i32, i32*, i32*, %struct.rvin_dev*, i32*, i32 }

@STOPPED = common dso_local global i32 0, align 4
@HW_BUFFER_NUM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@VB2_READ = common dso_local global i32 0, align 4
@VB2_DMABUF = common dso_local global i32 0, align 4
@rvin_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to initialize VB2 queue\0A\00", align 1
@rvin_irq = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@KBUILD_MODNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to request irq\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rvin_dma_register(%struct.rvin_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rvin_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.rvin_dev* %0, %struct.rvin_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %9, i32 0, i32 7
  store %struct.vb2_queue* %10, %struct.vb2_queue** %6, align 8
  %11 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %14, i32 0, i32 6
  %16 = call i32 @v4l2_device_register(i32 %13, i32* %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %3, align 4
  br label %109

21:                                               ; preds = %2
  %22 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %23 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %22, i32 0, i32 1
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %26 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %25, i32 0, i32 5
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %29 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %28, i32 0, i32 4
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load i32, i32* @STOPPED, align 4
  %32 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %33 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %32, i32 0, i32 3
  store i32 %31, i32* %33, align 8
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %45, %21
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @HW_BUFFER_NUM, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %48

38:                                               ; preds = %34
  %39 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %40 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %39, i32 0, i32 2
  %41 = load i32**, i32*** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32*, i32** %41, i64 %43
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %38
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %7, align 4
  br label %34

48:                                               ; preds = %34
  %49 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  %50 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %51 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load i32, i32* @VB2_MMAP, align 4
  %53 = load i32, i32* @VB2_READ, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @VB2_DMABUF, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %58 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %60 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %59, i32 0, i32 1
  %61 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %62 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %61, i32 0, i32 8
  store i32* %60, i32** %62, align 8
  %63 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %65 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %64, i32 0, i32 7
  store %struct.rvin_dev* %63, %struct.rvin_dev** %65, align 8
  %66 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %67 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %66, i32 0, i32 1
  store i32 4, i32* %67, align 4
  %68 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %69 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %68, i32 0, i32 6
  store i32* @rvin_qops, i32** %69, align 8
  %70 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %71 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %70, i32 0, i32 5
  store i32* @vb2_dma_contig_memops, i32** %71, align 8
  %72 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %73 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %74 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %73, i32 0, i32 4
  store i32 %72, i32* %74, align 8
  %75 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %76 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %75, i32 0, i32 2
  store i32 4, i32* %76, align 8
  %77 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %78 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %81 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %80, i32 0, i32 3
  store i32 %79, i32* %81, align 4
  %82 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %83 = call i32 @vb2_queue_init(%struct.vb2_queue* %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %48
  %87 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %88 = call i32 @vin_err(%struct.rvin_dev* %87, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %105

89:                                               ; preds = %48
  %90 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %91 = getelementptr inbounds %struct.rvin_dev, %struct.rvin_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %5, align 4
  %94 = load i32, i32* @rvin_irq, align 4
  %95 = load i32, i32* @IRQF_SHARED, align 4
  %96 = load i32, i32* @KBUILD_MODNAME, align 4
  %97 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %98 = call i32 @devm_request_irq(i32 %92, i32 %93, i32 %94, i32 %95, i32 %96, %struct.rvin_dev* %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %89
  %102 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %103 = call i32 @vin_err(%struct.rvin_dev* %102, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %105

104:                                              ; preds = %89
  store i32 0, i32* %3, align 4
  br label %109

105:                                              ; preds = %101, %86
  %106 = load %struct.rvin_dev*, %struct.rvin_dev** %4, align 8
  %107 = call i32 @rvin_dma_unregister(%struct.rvin_dev* %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %105, %104, %19
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @v4l2_device_register(i32, i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @vin_err(%struct.rvin_dev*, i8*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.rvin_dev*) #1

declare dso_local i32 @rvin_dma_unregister(%struct.rvin_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
