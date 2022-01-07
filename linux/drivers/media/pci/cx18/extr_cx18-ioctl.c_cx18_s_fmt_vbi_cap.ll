; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_s_fmt_vbi_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-ioctl.c_cx18_s_fmt_vbi_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.cx18_open_id = type { %struct.cx18* }
%struct.cx18 = type { %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }

@EBUSY = common dso_local global i32 0, align 4
@vbi = common dso_local global i32 0, align 4
@s_raw_fmt = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VBI_CAPTURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @cx18_s_fmt_vbi_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx18_s_fmt_vbi_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.cx18_open_id*, align 8
  %9 = alloca %struct.cx18*, align 8
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = call %struct.cx18_open_id* @fh2id(i8* %11)
  store %struct.cx18_open_id* %12, %struct.cx18_open_id** %8, align 8
  %13 = load %struct.cx18_open_id*, %struct.cx18_open_id** %8, align 8
  %14 = getelementptr inbounds %struct.cx18_open_id, %struct.cx18_open_id* %13, i32 0, i32 0
  %15 = load %struct.cx18*, %struct.cx18** %14, align 8
  store %struct.cx18* %15, %struct.cx18** %9, align 8
  %16 = load %struct.cx18*, %struct.cx18** %9, align 8
  %17 = call i32 @cx18_raw_vbi(%struct.cx18* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %27, label %19

19:                                               ; preds = %3
  %20 = load %struct.cx18*, %struct.cx18** %9, align 8
  %21 = getelementptr inbounds %struct.cx18, %struct.cx18* %20, i32 0, i32 2
  %22 = call i64 @atomic_read(i32* %21)
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* @EBUSY, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %56

27:                                               ; preds = %19, %3
  %28 = load %struct.cx18*, %struct.cx18** %9, align 8
  %29 = getelementptr inbounds %struct.cx18, %struct.cx18* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @vbi, align 4
  %32 = load i32, i32* @s_raw_fmt, align 4
  %33 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %34 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = call i32 @v4l2_subdev_call(i32 %30, i32 %31, i32 %32, i32* %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %27
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %56

41:                                               ; preds = %27
  %42 = load %struct.cx18*, %struct.cx18** %9, align 8
  %43 = getelementptr inbounds %struct.cx18, %struct.cx18* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  store i64 0, i64* %46, align 8
  %47 = load i32, i32* @V4L2_BUF_TYPE_VBI_CAPTURE, align 4
  %48 = load %struct.cx18*, %struct.cx18** %9, align 8
  %49 = getelementptr inbounds %struct.cx18, %struct.cx18* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.file*, %struct.file** %5, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %55 = call i32 @cx18_g_fmt_vbi_cap(%struct.file* %52, i8* %53, %struct.v4l2_format* %54)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %41, %39, %24
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local %struct.cx18_open_id* @fh2id(i8*) #1

declare dso_local i32 @cx18_raw_vbi(%struct.cx18*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, i32*) #1

declare dso_local i32 @cx18_g_fmt_vbi_cap(%struct.file*, i8*, %struct.v4l2_format*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
