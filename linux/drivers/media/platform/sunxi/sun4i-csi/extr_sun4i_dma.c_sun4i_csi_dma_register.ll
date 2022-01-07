; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_dma_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sunxi/sun4i-csi/extr_sun4i_dma.c_sun4i_csi_dma_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sun4i_csi = type { i32, i32, i32, i32**, i32, i32, %struct.vb2_queue }
%struct.vb2_queue = type { i32, i32, i32, i32, i32*, i32*, %struct.sun4i_csi*, i32*, i32, i32 }

@CSI_MAX_BUFFER = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i32 0, align 4
@VB2_MMAP = common dso_local global i32 0, align 4
@sun4i_csi_qops = common dso_local global i32 0, align 4
@vb2_dma_contig_memops = common dso_local global i32 0, align 4
@V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"failed to initialize VB2 queue\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Couldn't register the v4l2 device\0A\00", align 1
@sun4i_csi_irq = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Couldn't register our interrupt\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sun4i_csi_dma_register(%struct.sun4i_csi* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sun4i_csi*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vb2_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.sun4i_csi* %0, %struct.sun4i_csi** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %10 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %9, i32 0, i32 6
  store %struct.vb2_queue* %10, %struct.vb2_queue** %6, align 8
  %11 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %12 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %11, i32 0, i32 5
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %15 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %14, i32 0, i32 0
  %16 = call i32 @mutex_init(i32* %15)
  %17 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %18 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %17, i32 0, i32 4
  %19 = call i32 @INIT_LIST_HEAD(i32* %18)
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %31, %2
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @CSI_MAX_BUFFER, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %20
  %25 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %26 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %25, i32 0, i32 3
  %27 = load i32**, i32*** %26, align 8
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %8, align 4
  br label %20

34:                                               ; preds = %20
  %35 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %36 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %35, i32 0, i32 0
  store i32 3, i32* %36, align 8
  %37 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 4
  %38 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %39 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %38, i32 0, i32 9
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @VB2_MMAP, align 4
  %41 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %42 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %41, i32 0, i32 8
  store i32 %40, i32* %42, align 8
  %43 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %44 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %43, i32 0, i32 0
  %45 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %46 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %45, i32 0, i32 7
  store i32* %44, i32** %46, align 8
  %47 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %48 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %49 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %48, i32 0, i32 6
  store %struct.sun4i_csi* %47, %struct.sun4i_csi** %49, align 8
  %50 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %51 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %50, i32 0, i32 1
  store i32 4, i32* %51, align 4
  %52 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %53 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %52, i32 0, i32 5
  store i32* @sun4i_csi_qops, i32** %53, align 8
  %54 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %55 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %54, i32 0, i32 4
  store i32* @vb2_dma_contig_memops, i32** %55, align 8
  %56 = load i32, i32* @V4L2_BUF_FLAG_TIMESTAMP_MONOTONIC, align 4
  %57 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %58 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %57, i32 0, i32 3
  store i32 %56, i32* %58, align 4
  %59 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %60 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %63 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %65 = call i32 @vb2_queue_init(%struct.vb2_queue* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %34
  %69 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %70 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_err(i32 %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %114

73:                                               ; preds = %34
  %74 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %75 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %78 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %77, i32 0, i32 1
  %79 = call i32 @v4l2_device_register(i32 %76, i32* %78)
  store i32 %79, i32* %7, align 4
  %80 = load i32, i32* %7, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %73
  %83 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %84 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @dev_err(i32 %85, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %111

87:                                               ; preds = %73
  %88 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %89 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @sun4i_csi_irq, align 4
  %93 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %94 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @dev_name(i32 %95)
  %97 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %98 = call i32 @devm_request_irq(i32 %90, i32 %91, i32 %92, i32 0, i32 %96, %struct.sun4i_csi* %97)
  store i32 %98, i32* %7, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %87
  %102 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %103 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i32 @dev_err(i32 %104, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %107

106:                                              ; preds = %87
  store i32 0, i32* %3, align 4
  br label %119

107:                                              ; preds = %101
  %108 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %109 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %108, i32 0, i32 1
  %110 = call i32 @v4l2_device_unregister(i32* %109)
  br label %111

111:                                              ; preds = %107, %82
  %112 = load %struct.vb2_queue*, %struct.vb2_queue** %6, align 8
  %113 = call i32 @vb2_queue_release(%struct.vb2_queue* %112)
  br label %114

114:                                              ; preds = %111, %68
  %115 = load %struct.sun4i_csi*, %struct.sun4i_csi** %4, align 8
  %116 = getelementptr inbounds %struct.sun4i_csi, %struct.sun4i_csi* %115, i32 0, i32 0
  %117 = call i32 @mutex_destroy(i32* %116)
  %118 = load i32, i32* %7, align 4
  store i32 %118, i32* %3, align 4
  br label %119

119:                                              ; preds = %114, %106
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @vb2_queue_init(%struct.vb2_queue*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @v4l2_device_register(i32, i32*) #1

declare dso_local i32 @devm_request_irq(i32, i32, i32, i32, i32, %struct.sun4i_csi*) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @vb2_queue_release(%struct.vb2_queue*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
