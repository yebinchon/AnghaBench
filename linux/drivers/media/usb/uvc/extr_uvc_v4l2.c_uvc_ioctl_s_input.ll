; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_s_input.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/uvc/extr_uvc_v4l2.c_uvc_ioctl_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.uvc_fh = type { %struct.uvc_video_chain* }
%struct.uvc_video_chain = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }

@UVC_QUIRK_IGNORE_SELECTOR_UNIT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@UVC_SET_CUR = common dso_local global i32 0, align 4
@UVC_SU_INPUT_SELECT_CONTROL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @uvc_ioctl_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvc_ioctl_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.uvc_fh*, align 8
  %9 = alloca %struct.uvc_video_chain*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.uvc_fh*
  store %struct.uvc_fh* %13, %struct.uvc_fh** %8, align 8
  %14 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %15 = getelementptr inbounds %struct.uvc_fh, %struct.uvc_fh* %14, i32 0, i32 0
  %16 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %15, align 8
  store %struct.uvc_video_chain* %16, %struct.uvc_video_chain** %9, align 8
  %17 = load %struct.uvc_fh*, %struct.uvc_fh** %8, align 8
  %18 = call i32 @uvc_acquire_privileges(%struct.uvc_fh* %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* %10, align 4
  store i32 %22, i32* %4, align 4
  br label %74

23:                                               ; preds = %3
  %24 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %25 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = icmp eq %struct.TYPE_3__* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %30 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @UVC_QUIRK_IGNORE_SELECTOR_UNIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %28, %23
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %74

43:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %74

44:                                               ; preds = %28
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %47 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp uge i32 %45, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %74

55:                                               ; preds = %44
  %56 = load i32, i32* %7, align 4
  %57 = add i32 %56, 1
  store i32 %57, i32* %11, align 4
  %58 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %59 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = load i32, i32* @UVC_SET_CUR, align 4
  %62 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %63 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.uvc_video_chain*, %struct.uvc_video_chain** %9, align 8
  %68 = getelementptr inbounds %struct.uvc_video_chain, %struct.uvc_video_chain* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @UVC_SU_INPUT_SELECT_CONTROL, align 4
  %73 = call i32 @uvc_query_ctrl(%struct.TYPE_4__* %60, i32 %61, i32 %66, i32 %71, i32 %72, i32* %11, i32 1)
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %55, %52, %43, %40, %21
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @uvc_acquire_privileges(%struct.uvc_fh*) #1

declare dso_local i32 @uvc_query_ctrl(%struct.TYPE_4__*, i32, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
