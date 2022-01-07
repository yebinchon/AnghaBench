; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_alloc_urb_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_video.c_uvc_alloc_urb_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvc_streaming = type { i32, %struct.TYPE_2__*, %struct.uvc_urb* }
%struct.TYPE_2__ = type { i32 }
%struct.uvc_urb = type { %struct.uvc_streaming*, i32, i32 }

@UVC_MAX_PACKETS = common dso_local global i32 0, align 4
@UVC_URBS = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@UVC_TRACE_VIDEO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"Allocated %u URB buffers of %ux%u bytes each.\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"Failed to allocate URB buffers (%u bytes per packet).\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvc_streaming*, i32, i32, i32)* @uvc_alloc_urb_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_alloc_urb_buffers(%struct.uvc_streaming* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvc_streaming*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.uvc_urb*, align 8
  store %struct.uvc_streaming* %0, %struct.uvc_streaming** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %14 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %4
  %18 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %19 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = udiv i32 %20, %21
  store i32 %22, i32* %5, align 4
  br label %102

23:                                               ; preds = %4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @DIV_ROUND_UP(i32 %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @UVC_MAX_PACKETS, align 4
  %29 = icmp ugt i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* @UVC_MAX_PACKETS, align 4
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %30, %23
  br label %33

33:                                               ; preds = %95, %32
  %34 = load i32, i32* %10, align 4
  %35 = icmp ugt i32 %34, 1
  br i1 %35, label %36, label %98

36:                                               ; preds = %33
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %80, %36
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* @UVC_URBS, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %83

41:                                               ; preds = %37
  %42 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %43 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %42, i32 0, i32 2
  %44 = load %struct.uvc_urb*, %struct.uvc_urb** %43, align 8
  %45 = load i32, i32* %11, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %44, i64 %46
  store %struct.uvc_urb* %47, %struct.uvc_urb** %12, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = mul i32 %48, %49
  %51 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %52 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %54 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %59 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* @__GFP_NOWARN, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.uvc_urb*, %struct.uvc_urb** %12, align 8
  %65 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %64, i32 0, i32 2
  %66 = call i32 @usb_alloc_coherent(i32 %57, i32 %60, i32 %63, i32* %65)
  %67 = load %struct.uvc_urb*, %struct.uvc_urb** %12, align 8
  %68 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.uvc_urb*, %struct.uvc_urb** %12, align 8
  %70 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %41
  %74 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %75 = call i32 @uvc_free_urb_buffers(%struct.uvc_streaming* %74)
  br label %83

76:                                               ; preds = %41
  %77 = load %struct.uvc_streaming*, %struct.uvc_streaming** %6, align 8
  %78 = load %struct.uvc_urb*, %struct.uvc_urb** %12, align 8
  %79 = getelementptr inbounds %struct.uvc_urb, %struct.uvc_urb* %78, i32 0, i32 0
  store %struct.uvc_streaming* %77, %struct.uvc_streaming** %79, align 8
  br label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %11, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %11, align 4
  br label %37

83:                                               ; preds = %73, %37
  %84 = load i32, i32* %11, align 4
  %85 = load i32, i32* @UVC_URBS, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %94

87:                                               ; preds = %83
  %88 = load i32, i32* @UVC_TRACE_VIDEO, align 4
  %89 = load i32, i32* @UVC_URBS, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %8, align 4
  %92 = call i32 (i32, i8*, i32, ...) @uvc_trace(i32 %88, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %89, i32 %90, i32 %91)
  %93 = load i32, i32* %10, align 4
  store i32 %93, i32* %5, align 4
  br label %102

94:                                               ; preds = %83
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %10, align 4
  %97 = udiv i32 %96, 2
  store i32 %97, i32* %10, align 4
  br label %33

98:                                               ; preds = %33
  %99 = load i32, i32* @UVC_TRACE_VIDEO, align 4
  %100 = load i32, i32* %8, align 4
  %101 = call i32 (i32, i8*, i32, ...) @uvc_trace(i32 %99, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), i32 %100)
  store i32 0, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %87, %17
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @usb_alloc_coherent(i32, i32, i32, i32*) #1

declare dso_local i32 @uvc_free_urb_buffers(%struct.uvc_streaming*) #1

declare dso_local i32 @uvc_trace(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
