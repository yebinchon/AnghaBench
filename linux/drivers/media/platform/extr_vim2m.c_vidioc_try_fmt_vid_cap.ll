; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vidioc_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_vim2m.c_vidioc_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }
%struct.vim2m_fmt = type { i32 }
%struct.vim2m_ctx = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@formats = common dso_local global %struct.TYPE_8__* null, align 8
@MEM2MEM_CAPTURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Fourcc format (0x%08x) invalid.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_format*)* @vidioc_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_try_fmt_vid_cap(%struct.file* %0, i8* %1, %struct.v4l2_format* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_format*, align 8
  %8 = alloca %struct.vim2m_fmt*, align 8
  %9 = alloca %struct.vim2m_ctx*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_format* %2, %struct.v4l2_format** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.vim2m_ctx* @file2ctx(%struct.file* %10)
  store %struct.vim2m_ctx* %11, %struct.vim2m_ctx** %9, align 8
  %12 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.vim2m_fmt* @find_format(i32 %16)
  store %struct.vim2m_fmt* %17, %struct.vim2m_fmt** %8, align 8
  %18 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** %8, align 8
  %19 = icmp ne %struct.vim2m_fmt* %18, null
  br i1 %19, label %35, label %20

20:                                               ; preds = %3
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** @formats, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 4
  store i32 %24, i32* %28, align 4
  %29 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %30 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.vim2m_fmt* @find_format(i32 %33)
  store %struct.vim2m_fmt* %34, %struct.vim2m_fmt** %8, align 8
  br label %35

35:                                               ; preds = %20, %3
  %36 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** %8, align 8
  %37 = getelementptr inbounds %struct.vim2m_fmt, %struct.vim2m_fmt* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @MEM2MEM_CAPTURE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %35
  %43 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %9, align 8
  %44 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %43, i32 0, i32 4
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %48 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 4
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @v4l2_err(i32* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %4, align 4
  br label %87

55:                                               ; preds = %35
  %56 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %9, align 8
  %57 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %60 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  store i32 %58, i32* %62, align 4
  %63 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %9, align 8
  %64 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %67 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  %70 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %9, align 8
  %71 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %72, i32* %76, align 4
  %77 = load %struct.vim2m_ctx*, %struct.vim2m_ctx** %9, align 8
  %78 = getelementptr inbounds %struct.vim2m_ctx, %struct.vim2m_ctx* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %7, align 8
  %85 = load %struct.vim2m_fmt*, %struct.vim2m_fmt** %8, align 8
  %86 = call i32 @vidioc_try_fmt(%struct.v4l2_format* %84, %struct.vim2m_fmt* %85)
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %55, %42
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local %struct.vim2m_ctx* @file2ctx(%struct.file*) #1

declare dso_local %struct.vim2m_fmt* @find_format(i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, i32) #1

declare dso_local i32 @vidioc_try_fmt(%struct.v4l2_format*, %struct.vim2m_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
