; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-jpeg/extr_jpeg-core.c_s5p_jpeg_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_jpeg_fmt = type { i64, i32 }
%struct.s5p_jpeg_ctx = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@S5P_JPEG_ENCODE = common dso_local global i64 0, align 8
@FMT_TYPE_OUTPUT = common dso_local global i32 0, align 4
@SJPEG_FMT_FLAG_ENC_OUTPUT = common dso_local global i32 0, align 4
@SJPEG_FMT_FLAG_ENC_CAPTURE = common dso_local global i32 0, align 4
@SJPEG_FMT_FLAG_DEC_OUTPUT = common dso_local global i32 0, align 4
@SJPEG_FMT_FLAG_DEC_CAPTURE = common dso_local global i32 0, align 4
@sjpeg_formats = common dso_local global %struct.s5p_jpeg_fmt* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.s5p_jpeg_fmt* (%struct.s5p_jpeg_ctx*, i64, i32)* @s5p_jpeg_find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.s5p_jpeg_fmt* @s5p_jpeg_find_format(%struct.s5p_jpeg_ctx* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.s5p_jpeg_fmt*, align 8
  %5 = alloca %struct.s5p_jpeg_ctx*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.s5p_jpeg_fmt*, align 8
  store %struct.s5p_jpeg_ctx* %0, %struct.s5p_jpeg_ctx** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %5, align 8
  %12 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @S5P_JPEG_ENCODE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @FMT_TYPE_OUTPUT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i32, i32* @SJPEG_FMT_FLAG_ENC_OUTPUT, align 4
  br label %24

22:                                               ; preds = %16
  %23 = load i32, i32* @SJPEG_FMT_FLAG_ENC_CAPTURE, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %9, align 4
  br label %36

26:                                               ; preds = %3
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @FMT_TYPE_OUTPUT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @SJPEG_FMT_FLAG_DEC_OUTPUT, align 4
  br label %34

32:                                               ; preds = %26
  %33 = load i32, i32* @SJPEG_FMT_FLAG_DEC_CAPTURE, align 4
  br label %34

34:                                               ; preds = %32, %30
  %35 = phi i32 [ %31, %30 ], [ %33, %32 ]
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %34, %24
  store i32 0, i32* %8, align 4
  br label %37

37:                                               ; preds = %75, %36
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** @sjpeg_formats, align 8
  %40 = call i32 @ARRAY_SIZE(%struct.s5p_jpeg_fmt* %39)
  %41 = icmp ult i32 %38, %40
  br i1 %41, label %42, label %78

42:                                               ; preds = %37
  %43 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** @sjpeg_formats, align 8
  %44 = load i32, i32* %8, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %43, i64 %45
  store %struct.s5p_jpeg_fmt* %46, %struct.s5p_jpeg_fmt** %10, align 8
  %47 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %10, align 8
  %48 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %74

52:                                               ; preds = %42
  %53 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %10, align 8
  %54 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %74

59:                                               ; preds = %52
  %60 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %10, align 8
  %61 = getelementptr inbounds %struct.s5p_jpeg_fmt, %struct.s5p_jpeg_fmt* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.s5p_jpeg_ctx*, %struct.s5p_jpeg_ctx** %5, align 8
  %64 = getelementptr inbounds %struct.s5p_jpeg_ctx, %struct.s5p_jpeg_ctx* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %62, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %59
  %73 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %10, align 8
  store %struct.s5p_jpeg_fmt* %73, %struct.s5p_jpeg_fmt** %4, align 8
  br label %79

74:                                               ; preds = %59, %52, %42
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %8, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %37

78:                                               ; preds = %37
  store %struct.s5p_jpeg_fmt* null, %struct.s5p_jpeg_fmt** %4, align 8
  br label %79

79:                                               ; preds = %78, %72
  %80 = load %struct.s5p_jpeg_fmt*, %struct.s5p_jpeg_fmt** %4, align 8
  ret %struct.s5p_jpeg_fmt* %80
}

declare dso_local i32 @ARRAY_SIZE(%struct.s5p_jpeg_fmt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
