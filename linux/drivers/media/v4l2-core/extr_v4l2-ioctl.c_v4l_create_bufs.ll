; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_create_bufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_create_bufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_ioctl_ops = type { i32 (%struct.file*, i8*, %struct.v4l2_create_buffers*)* }
%struct.file = type opaque
%struct.v4l2_create_buffers = type opaque
%struct.file.0 = type { i32 }
%struct.v4l2_create_buffers.1 = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@capabilities = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_PRIV_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_ioctl_ops*, %struct.file.0*, i8*, i8*)* @v4l_create_bufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l_create_bufs(%struct.v4l2_ioctl_ops* %0, %struct.file.0* %1, i8* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.v4l2_ioctl_ops*, align 8
  %7 = alloca %struct.file.0*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.v4l2_create_buffers.1*, align 8
  %11 = alloca i32, align 4
  store %struct.v4l2_ioctl_ops* %0, %struct.v4l2_ioctl_ops** %6, align 8
  store %struct.file.0* %1, %struct.file.0** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = bitcast i8* %12 to %struct.v4l2_create_buffers.1*
  store %struct.v4l2_create_buffers.1* %13, %struct.v4l2_create_buffers.1** %10, align 8
  %14 = load %struct.file.0*, %struct.file.0** %7, align 8
  %15 = load %struct.v4l2_create_buffers.1*, %struct.v4l2_create_buffers.1** %10, align 8
  %16 = getelementptr inbounds %struct.v4l2_create_buffers.1, %struct.v4l2_create_buffers.1* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @check_fmt(%struct.file.0* %14, i64 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %62

24:                                               ; preds = %4
  %25 = load %struct.v4l2_create_buffers.1*, %struct.v4l2_create_buffers.1** %10, align 8
  %26 = load i32, i32* @capabilities, align 4
  %27 = call i32 @CLEAR_AFTER_FIELD(%struct.v4l2_create_buffers.1* %25, i32 %26)
  %28 = load %struct.v4l2_create_buffers.1*, %struct.v4l2_create_buffers.1** %10, align 8
  %29 = getelementptr inbounds %struct.v4l2_create_buffers.1, %struct.v4l2_create_buffers.1* %28, i32 0, i32 0
  %30 = call i32 @v4l_sanitize_format(%struct.TYPE_6__* %29)
  %31 = load %struct.v4l2_ioctl_ops*, %struct.v4l2_ioctl_ops** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_ioctl_ops, %struct.v4l2_ioctl_ops* %31, i32 0, i32 0
  %33 = load i32 (%struct.file*, i8*, %struct.v4l2_create_buffers*)*, i32 (%struct.file*, i8*, %struct.v4l2_create_buffers*)** %32, align 8
  %34 = load %struct.file.0*, %struct.file.0** %7, align 8
  %35 = bitcast %struct.file.0* %34 to %struct.file*
  %36 = load i8*, i8** %8, align 8
  %37 = load %struct.v4l2_create_buffers.1*, %struct.v4l2_create_buffers.1** %10, align 8
  %38 = bitcast %struct.v4l2_create_buffers.1* %37 to %struct.v4l2_create_buffers*
  %39 = call i32 %33(%struct.file* %35, i8* %36, %struct.v4l2_create_buffers* %38)
  store i32 %39, i32* %11, align 4
  %40 = load %struct.v4l2_create_buffers.1*, %struct.v4l2_create_buffers.1** %10, align 8
  %41 = getelementptr inbounds %struct.v4l2_create_buffers.1, %struct.v4l2_create_buffers.1* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %53, label %46

46:                                               ; preds = %24
  %47 = load %struct.v4l2_create_buffers.1*, %struct.v4l2_create_buffers.1** %10, align 8
  %48 = getelementptr inbounds %struct.v4l2_create_buffers.1, %struct.v4l2_create_buffers.1* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %46, %24
  %54 = load i32, i32* @V4L2_PIX_FMT_PRIV_MAGIC, align 4
  %55 = load %struct.v4l2_create_buffers.1*, %struct.v4l2_create_buffers.1** %10, align 8
  %56 = getelementptr inbounds %struct.v4l2_create_buffers.1, %struct.v4l2_create_buffers.1* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  store i32 %54, i32* %59, align 8
  br label %60

60:                                               ; preds = %53, %46
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %22
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local i32 @check_fmt(%struct.file.0*, i64) #1

declare dso_local i32 @CLEAR_AFTER_FIELD(%struct.v4l2_create_buffers.1*, i32) #1

declare dso_local i32 @v4l_sanitize_format(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
