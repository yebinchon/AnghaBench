; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_alloc_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/hdpvr/extr_hdpvr-video.c_hdpvr_alloc_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i32, i32, i32, i32, i32 }
%struct.hdpvr_buffer = type { i32, i32, %struct.urb*, %struct.hdpvr_device* }
%struct.urb = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"allocating %u buffers\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"cannot allocate buffer\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"cannot allocate usb transfer buffer\0A\00", align 1
@hdpvr_read_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@BUFSTAT_AVAILABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hdpvr_alloc_buffers(%struct.hdpvr_device* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdpvr_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.hdpvr_buffer*, align 8
  %10 = alloca %struct.urb*, align 8
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* @MSG_INFO, align 4
  %14 = load i32, i32* @hdpvr_debug, align 4
  %15 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %16 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %15, i32 0, i32 4
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @v4l2_dbg(i32 %13, i32 %14, i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %17)
  store i64 0, i64* %6, align 8
  br label %19

19:                                               ; preds = %97, %2
  %20 = load i64, i64* %6, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %100

23:                                               ; preds = %19
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.hdpvr_buffer* @kzalloc(i32 24, i32 %24)
  store %struct.hdpvr_buffer* %25, %struct.hdpvr_buffer** %9, align 8
  %26 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %9, align 8
  %27 = icmp ne %struct.hdpvr_buffer* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %30 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %29, i32 0, i32 4
  %31 = call i32 @v4l2_err(i32* %30, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %107

32:                                               ; preds = %23
  %33 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %34 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %9, align 8
  %35 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %34, i32 0, i32 3
  store %struct.hdpvr_device* %33, %struct.hdpvr_device** %35, align 8
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %36)
  store %struct.urb* %37, %struct.urb** %10, align 8
  %38 = load %struct.urb*, %struct.urb** %10, align 8
  %39 = icmp ne %struct.urb* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  br label %104

41:                                               ; preds = %32
  %42 = load %struct.urb*, %struct.urb** %10, align 8
  %43 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %9, align 8
  %44 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %43, i32 0, i32 2
  store %struct.urb* %42, %struct.urb** %44, align 8
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %46 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %49 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = load %struct.urb*, %struct.urb** %10, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 1
  %54 = call i32* @usb_alloc_coherent(i32 %47, i32 %50, i32 %51, i32* %53)
  store i32* %54, i32** %8, align 8
  %55 = load i32*, i32** %8, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %41
  %58 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %59 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %58, i32 0, i32 4
  %60 = call i32 @v4l2_err(i32* %59, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %101

61:                                               ; preds = %41
  %62 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %9, align 8
  %63 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %62, i32 0, i32 2
  %64 = load %struct.urb*, %struct.urb** %63, align 8
  %65 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %66 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %69 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %72 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @usb_rcvbulkpipe(i32 %70, i32 %73)
  %75 = load i32*, i32** %8, align 8
  %76 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %77 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @hdpvr_read_bulk_callback, align 4
  %80 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %9, align 8
  %81 = call i32 @usb_fill_bulk_urb(%struct.urb* %64, i32 %67, i32 %74, i32* %75, i32 %78, i32 %79, %struct.hdpvr_buffer* %80)
  %82 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %83 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %9, align 8
  %84 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %83, i32 0, i32 2
  %85 = load %struct.urb*, %struct.urb** %84, align 8
  %86 = getelementptr inbounds %struct.urb, %struct.urb* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  %89 = load i32, i32* @BUFSTAT_AVAILABLE, align 4
  %90 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %9, align 8
  %91 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  %92 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %9, align 8
  %93 = getelementptr inbounds %struct.hdpvr_buffer, %struct.hdpvr_buffer* %92, i32 0, i32 0
  %94 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %95 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %94, i32 0, i32 0
  %96 = call i32 @list_add_tail(i32* %93, i32* %95)
  br label %97

97:                                               ; preds = %61
  %98 = load i64, i64* %6, align 8
  %99 = add nsw i64 %98, 1
  store i64 %99, i64* %6, align 8
  br label %19

100:                                              ; preds = %19
  store i32 0, i32* %3, align 4
  br label %111

101:                                              ; preds = %57
  %102 = load %struct.urb*, %struct.urb** %10, align 8
  %103 = call i32 @usb_free_urb(%struct.urb* %102)
  br label %104

104:                                              ; preds = %101, %40
  %105 = load %struct.hdpvr_buffer*, %struct.hdpvr_buffer** %9, align 8
  %106 = call i32 @kfree(%struct.hdpvr_buffer* %105)
  br label %107

107:                                              ; preds = %104, %28
  %108 = load %struct.hdpvr_device*, %struct.hdpvr_device** %4, align 8
  %109 = call i32 @hdpvr_free_buffers(%struct.hdpvr_device* %108)
  %110 = load i32, i32* %7, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %107, %100
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i64) #1

declare dso_local %struct.hdpvr_buffer* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32* @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, i32, i32, i32*, i32, i32, %struct.hdpvr_buffer*) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @kfree(%struct.hdpvr_buffer*) #1

declare dso_local i32 @hdpvr_free_buffers(%struct.hdpvr_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
