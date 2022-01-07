; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_s_fbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/saa7134/extr_saa7134-video.c_saa7134_s_fbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_framebuffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.saa7134_dev = type { %struct.v4l2_framebuffer, %struct.saa7134_format* }
%struct.saa7134_format = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@CAP_SYS_RAWIO = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_framebuffer*)* @saa7134_s_fbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7134_s_fbuf(%struct.file* %0, i8* %1, %struct.v4l2_framebuffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_framebuffer*, align 8
  %8 = alloca %struct.saa7134_dev*, align 8
  %9 = alloca %struct.saa7134_format*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_framebuffer* %2, %struct.v4l2_framebuffer** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.saa7134_dev* @video_drvdata(%struct.file* %10)
  store %struct.saa7134_dev* %11, %struct.saa7134_dev** %8, align 8
  %12 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %13 = call i32 @capable(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @CAP_SYS_RAWIO, align 4
  %17 = call i32 @capable(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = load i32, i32* @EPERM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %64

22:                                               ; preds = %15, %3
  %23 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %24 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.saa7134_format* @format_by_fourcc(i32 %26)
  store %struct.saa7134_format* %27, %struct.saa7134_format** %9, align 8
  %28 = load %struct.saa7134_format*, %struct.saa7134_format** %9, align 8
  %29 = icmp eq %struct.saa7134_format* null, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %64

33:                                               ; preds = %22
  %34 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %35 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %34, i32 0, i32 0
  %36 = load %struct.v4l2_framebuffer*, %struct.v4l2_framebuffer** %7, align 8
  %37 = bitcast %struct.v4l2_framebuffer* %35 to i8*
  %38 = bitcast %struct.v4l2_framebuffer* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %37, i8* align 4 %38, i64 12, i1 false)
  %39 = load %struct.saa7134_format*, %struct.saa7134_format** %9, align 8
  %40 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %41 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %40, i32 0, i32 1
  store %struct.saa7134_format* %39, %struct.saa7134_format** %41, align 8
  %42 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %43 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp eq i32 0, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %33
  %49 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %50 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.saa7134_format*, %struct.saa7134_format** %9, align 8
  %55 = getelementptr inbounds %struct.saa7134_format, %struct.saa7134_format* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = mul nsw i32 %53, %56
  %58 = sdiv i32 %57, 8
  %59 = load %struct.saa7134_dev*, %struct.saa7134_dev** %8, align 8
  %60 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.v4l2_framebuffer, %struct.v4l2_framebuffer* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 8
  br label %63

63:                                               ; preds = %48, %33
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %30, %19
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local %struct.saa7134_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.saa7134_format* @format_by_fourcc(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
