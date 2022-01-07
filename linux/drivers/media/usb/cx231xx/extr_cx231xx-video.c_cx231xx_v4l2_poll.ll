; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-video.c_cx231xx_v4l2_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx231xx_fh* }
%struct.cx231xx_fh = type { i64, i32, %struct.TYPE_2__, %struct.cx231xx* }
%struct.TYPE_2__ = type { i32 }
%struct.cx231xx = type { i32 }

@EPOLLERR = common dso_local global i32 0, align 4
@EPOLLPRI = common dso_local global i32 0, align 4
@EPOLLIN = common dso_local global i32 0, align 4
@EPOLLRDNORM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32*)* @cx231xx_v4l2_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_v4l2_poll(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx231xx_fh*, align 8
  %8 = alloca %struct.cx231xx*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @poll_requested_events(i32* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %14, align 8
  store %struct.cx231xx_fh* %15, %struct.cx231xx_fh** %7, align 8
  %16 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %17 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %16, i32 0, i32 3
  %18 = load %struct.cx231xx*, %struct.cx231xx** %17, align 8
  store %struct.cx231xx* %18, %struct.cx231xx** %8, align 8
  store i32 0, i32* %9, align 4
  %19 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %20 = call i32 @check_dev(%struct.cx231xx* %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @EPOLLERR, align 4
  store i32 %24, i32* %3, align 4
  br label %91

25:                                               ; preds = %2
  %26 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %27 = call i32 @res_get(%struct.cx231xx_fh* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %25
  %34 = load i32, i32* @EPOLLERR, align 4
  store i32 %34, i32* %3, align 4
  br label %91

35:                                               ; preds = %25
  %36 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %37 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %36, i32 0, i32 2
  %38 = call i64 @v4l2_event_pending(%struct.TYPE_2__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load i32, i32* @EPOLLPRI, align 4
  %42 = load i32, i32* %9, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %9, align 4
  br label %51

44:                                               ; preds = %35
  %45 = load %struct.file*, %struct.file** %4, align 8
  %46 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %47 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @poll_wait(%struct.file* %45, i32* %48, i32* %49)
  br label %51

51:                                               ; preds = %44, %40
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* @EPOLLIN, align 4
  %54 = load i32, i32* @EPOLLRDNORM, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %3, align 4
  br label %91

60:                                               ; preds = %51
  %61 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %62 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %63 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %72, label %66

66:                                               ; preds = %60
  %67 = load i64, i64* @V4L2_BUF_TYPE_VBI_CAPTURE, align 8
  %68 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %69 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp eq i64 %67, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %66, %60
  %73 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %74 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %73, i32 0, i32 0
  %75 = call i32 @mutex_lock(i32* %74)
  %76 = load %struct.file*, %struct.file** %4, align 8
  %77 = load %struct.cx231xx_fh*, %struct.cx231xx_fh** %7, align 8
  %78 = getelementptr inbounds %struct.cx231xx_fh, %struct.cx231xx_fh* %77, i32 0, i32 1
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @videobuf_poll_stream(%struct.file* %76, i32* %78, i32* %79)
  %81 = load i32, i32* %9, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %9, align 4
  %83 = load %struct.cx231xx*, %struct.cx231xx** %8, align 8
  %84 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %3, align 4
  br label %91

87:                                               ; preds = %66
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @EPOLLERR, align 4
  %90 = or i32 %88, %89
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %72, %58, %33, %23
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @poll_requested_events(i32*) #1

declare dso_local i32 @check_dev(%struct.cx231xx*) #1

declare dso_local i32 @res_get(%struct.cx231xx_fh*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @v4l2_event_pending(%struct.TYPE_2__*) #1

declare dso_local i32 @poll_wait(%struct.file*, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @videobuf_poll_stream(%struct.file*, i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
