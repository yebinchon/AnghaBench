; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_vidioc_s_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_fsl-viu.c_vidioc_s_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.viu_fh = type { %struct.viu_dev* }
%struct.viu_dev = type { %struct.v4l2_framebuffer, %struct.viu_fmt* }
%struct.viu_fmt = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @vidioc_s_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca %struct.viu_fh*, align 8
  %9 = alloca %struct.viu_dev*, align 8
  %10 = alloca %struct.v4l2_framebuffer*, align 8
  %11 = alloca %struct.viu_fmt*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = bitcast i8* %12 to %struct.viu_fh*
  store %struct.viu_fh* %13, %struct.viu_fh** %8, align 8
  %14 = load %struct.viu_fh*, %struct.viu_fh** %8, align 8
  %15 = getelementptr inbounds %struct.viu_fh, %struct.viu_fh* %14, i32 0, i32 0
  %16 = load %struct.viu_dev*, %struct.viu_dev** %15, align 8
  store %struct.viu_dev* %16, %struct.viu_dev** %9, align 8
  %17 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  store %struct.v4l2_framebuffer* %17, %struct.v4l2_framebuffer** %10, align 8
  %18 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %19 = call i32 @capable(i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %23 = call i32 @capable(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @EPERM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %70

28:                                               ; preds = %21, %3
  %29 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %10, align 8
  %30 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.viu_fmt* @format_by_fourcc(i32 %32)
  store %struct.viu_fmt* %33, %struct.viu_fmt** %11, align 8
  %34 = load %struct.viu_fmt*, %struct.viu_fmt** %11, align 8
  %35 = icmp eq %struct.viu_fmt* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %70

39:                                               ; preds = %28
  %40 = load %struct.viu_dev*, %struct.viu_dev** %9, align 8
  %41 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %40, i32 0, i32 0
  %42 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %10, align 8
  %43 = bitcast %struct.v4l2_framebuffer* %41 to i8*
  %44 = bitcast %struct.v4l2_framebuffer* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 4 %44, i64 12, i1 false)
  %45 = load %struct.viu_fmt*, %struct.viu_fmt** %11, align 8
  %46 = load %struct.viu_dev*, %struct.viu_dev** %9, align 8
  %47 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %46, i32 0, i32 1
  store %struct.viu_fmt* %45, %struct.viu_fmt** %47, align 8
  %48 = load %struct.viu_dev*, %struct.viu_dev** %9, align 8
  %49 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %39
  %55 = load %struct.viu_dev*, %struct.viu_dev** %9, align 8
  %56 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.viu_fmt*, %struct.viu_fmt** %11, align 8
  %61 = getelementptr inbounds %struct.viu_fmt, %struct.viu_fmt* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %59, %62
  %64 = sdiv i32 %63, 8
  %65 = load %struct.viu_dev*, %struct.viu_dev** %9, align 8
  %66 = getelementptr inbounds %struct.viu_dev, %struct.viu_dev* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  br label %69

69:                                               ; preds = %54, %39
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %36, %25
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.viu_fmt* @format_by_fourcc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
