; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_streamparm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_v4l2-ioctl.c_v4l_print_streamparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_streamparm = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.v4l2_outputparm, %struct.v4l2_captureparm }
%struct.v4l2_outputparm = type { i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.v4l2_captureparm = type { i32, i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"type=%s\00", align 1
@v4l2_type_names = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [90 x i8] c", capability=0x%x, capturemode=0x%x, timeperframe=%d/%d, extendedmode=%d, readbuffers=%d\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [90 x i8] c", capability=0x%x, outputmode=0x%x, timeperframe=%d/%d, extendedmode=%d, writebuffers=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @v4l_print_streamparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v4l_print_streamparm(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.v4l2_streamparm*, align 8
  %6 = alloca %struct.v4l2_captureparm*, align 8
  %7 = alloca %struct.v4l2_outputparm*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.v4l2_streamparm*
  store %struct.v4l2_streamparm* %9, %struct.v4l2_streamparm** %5, align 8
  %10 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %11 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i32, i32* @v4l2_type_names, align 4
  %14 = call i32 @prt_names(i64 %12, i32 %13)
  %15 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %27, label %21

21:                                               ; preds = %2
  %22 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE_MPLANE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %21, %2
  %28 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store %struct.v4l2_captureparm* %30, %struct.v4l2_captureparm** %6, align 8
  %31 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %32 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %35 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %38 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %42 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %46 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.v4l2_captureparm*, %struct.v4l2_captureparm** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_captureparm, %struct.v4l2_captureparm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %40, i32 %44, i32 %47, i32 %50)
  br label %92

52:                                               ; preds = %21
  %53 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %64, label %58

58:                                               ; preds = %52
  %59 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %60 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %89

64:                                               ; preds = %58, %52
  %65 = load %struct.v4l2_streamparm*, %struct.v4l2_streamparm** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_streamparm, %struct.v4l2_streamparm* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  store %struct.v4l2_outputparm* %67, %struct.v4l2_outputparm** %7, align 8
  %68 = load %struct.v4l2_outputparm*, %struct.v4l2_outputparm** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_outputparm, %struct.v4l2_outputparm* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.v4l2_outputparm*, %struct.v4l2_outputparm** %7, align 8
  %72 = getelementptr inbounds %struct.v4l2_outputparm, %struct.v4l2_outputparm* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_outputparm*, %struct.v4l2_outputparm** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_outputparm, %struct.v4l2_outputparm* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.v4l2_outputparm*, %struct.v4l2_outputparm** %7, align 8
  %79 = getelementptr inbounds %struct.v4l2_outputparm, %struct.v4l2_outputparm* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.v4l2_outputparm*, %struct.v4l2_outputparm** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_outputparm, %struct.v4l2_outputparm* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.v4l2_outputparm*, %struct.v4l2_outputparm** %7, align 8
  %86 = getelementptr inbounds %struct.v4l2_outputparm, %struct.v4l2_outputparm* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.2, i64 0, i64 0), i32 %70, i32 %73, i32 %77, i32 %81, i32 %84, i32 %87)
  br label %91

89:                                               ; preds = %58
  %90 = call i32 (i8*, ...) @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %64
  br label %92

92:                                               ; preds = %91, %27
  ret void
}

declare dso_local i32 @pr_cont(i8*, ...) #1

declare dso_local i32 @prt_names(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
