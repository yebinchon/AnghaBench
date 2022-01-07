; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_v4l2_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_v4l2_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.uvc_fh* }
%struct.uvc_fh = type { i32, %struct.uvc_streaming*, i32, i32 }
%struct.uvc_streaming = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, i32 }

@UVC_TRACE_CALLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"uvc_v4l2_open\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UVC_HANDLE_PASSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @uvc_v4l2_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.uvc_streaming*, align 8
  %5 = alloca %struct.uvc_fh*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* @UVC_TRACE_CALLS, align 4
  %8 = call i32 @uvc_trace(i32 %7, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.file*, %struct.file** %3, align 8
  %10 = call %struct.uvc_streaming* @video_drvdata(%struct.file* %9)
  store %struct.uvc_streaming* %10, %struct.uvc_streaming** %4, align 8
  %11 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %12 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @usb_autopm_get_interface(i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %105

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.uvc_fh* @kzalloc(i32 24, i32 %22)
  store %struct.uvc_fh* %23, %struct.uvc_fh** %5, align 8
  %24 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %25 = icmp eq %struct.uvc_fh* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %21
  %27 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %28 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %27, i32 0, i32 2
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_autopm_put_interface(i32 %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %105

35:                                               ; preds = %21
  %36 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %37 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %42 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %41, i32 0, i32 2
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %35
  %48 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %49 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i32 @uvc_status_start(%struct.TYPE_2__* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %47
  %56 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %57 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %56, i32 0, i32 2
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = call i32 @mutex_unlock(i32* %59)
  %61 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %62 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @usb_autopm_put_interface(i32 %65)
  %67 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %68 = call i32 @kfree(%struct.uvc_fh* %67)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %2, align 4
  br label %105

70:                                               ; preds = %47
  br label %71

71:                                               ; preds = %70, %35
  %72 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %73 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %72, i32 0, i32 2
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = add nsw i64 %76, 1
  store i64 %77, i64* %75, align 8
  %78 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %79 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %78, i32 0, i32 2
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = call i32 @mutex_unlock(i32* %81)
  %83 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %84 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %83, i32 0, i32 3
  %85 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %86 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %85, i32 0, i32 1
  %87 = call i32 @v4l2_fh_init(i32* %84, i32* %86)
  %88 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %89 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %88, i32 0, i32 3
  %90 = call i32 @v4l2_fh_add(i32* %89)
  %91 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %92 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %95 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %97 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %98 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %97, i32 0, i32 1
  store %struct.uvc_streaming* %96, %struct.uvc_streaming** %98, align 8
  %99 = load i32, i32* @UVC_HANDLE_PASSIVE, align 4
  %100 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %101 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.uvc_fh*, %struct.uvc_fh** %5, align 8
  %103 = load %struct.file*, %struct.file** %3, align 8
  %104 = getelementptr inbounds %struct.file, %struct.file* %103, i32 0, i32 0
  store %struct.uvc_fh* %102, %struct.uvc_fh** %104, align 8
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %71, %55, %26, %19
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @uvc_trace(i32, i8*) #1

declare dso_local %struct.uvc_streaming* @video_drvdata(%struct.file*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local %struct.uvc_fh* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uvc_status_start(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.uvc_fh*) #1

declare dso_local i32 @v4l2_fh_init(i32*, i32*) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
