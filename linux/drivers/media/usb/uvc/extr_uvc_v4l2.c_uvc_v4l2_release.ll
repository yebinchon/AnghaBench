; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_v4l2_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_v4l2_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.uvc_fh* }
%struct.uvc_fh = type { i32, %struct.uvc_streaming* }
%struct.uvc_streaming = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@UVC_TRACE_CALLS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"uvc_v4l2_release\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @uvc_v4l2_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_v4l2_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.uvc_fh*, align 8
  %4 = alloca %struct.uvc_streaming*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %5 = load %struct.file*, %struct.file** %2, align 8
  %6 = getelementptr inbounds %struct.file, %struct.file* %5, i32 0, i32 0
  %7 = load %struct.uvc_fh*, %struct.uvc_fh** %6, align 8
  store %struct.uvc_fh* %7, %struct.uvc_fh** %3, align 8
  %8 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %9 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %8, i32 0, i32 1
  %10 = load %struct.uvc_streaming*, %struct.uvc_streaming** %9, align 8
  store %struct.uvc_streaming* %10, %struct.uvc_streaming** %4, align 8
  %11 = load i32, i32* @UVC_TRACE_CALLS, align 4
  %12 = call i32 @uvc_trace(i32 %11, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %14 = call i64 @uvc_has_privileges(%struct.uvc_fh* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %18 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %17, i32 0, i32 1
  %19 = call i32 @uvc_queue_release(i32* %18)
  br label %20

20:                                               ; preds = %16, %1
  %21 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %22 = call i32 @uvc_dismiss_privileges(%struct.uvc_fh* %21)
  %23 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %24 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %23, i32 0, i32 0
  %25 = call i32 @v4l2_fh_del(i32* %24)
  %26 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %27 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %26, i32 0, i32 0
  %28 = call i32 @v4l2_fh_exit(i32* %27)
  %29 = load %struct.uvc_fh*, %struct.uvc_fh** %3, align 8
  %30 = call i32 @kfree(%struct.uvc_fh* %29)
  %31 = load %struct.file*, %struct.file** %2, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  store %struct.uvc_fh* null, %struct.uvc_fh** %32, align 8
  %33 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %34 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = call i32 @mutex_lock(i32* %36)
  %38 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %39 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %42, -1
  store i64 %43, i64* %41, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %20
  %46 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %47 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = call i32 @uvc_status_stop(%struct.TYPE_2__* %48)
  br label %50

50:                                               ; preds = %45, %20
  %51 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %52 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load %struct.uvc_streaming*, %struct.uvc_streaming** %4, align 8
  %57 = getelementptr inbounds %struct.uvc_streaming, %struct.uvc_streaming* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @usb_autopm_put_interface(i32 %60)
  ret i32 0
}

declare dso_local i32 @uvc_trace(i32, i8*) #1

declare dso_local i64 @uvc_has_privileges(%struct.uvc_fh*) #1

declare dso_local i32 @uvc_queue_release(i32*) #1

declare dso_local i32 @uvc_dismiss_privileges(%struct.uvc_fh*) #1

declare dso_local i32 @v4l2_fh_del(i32*) #1

declare dso_local i32 @v4l2_fh_exit(i32*) #1

declare dso_local i32 @kfree(%struct.uvc_fh*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uvc_status_stop(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
