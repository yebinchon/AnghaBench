; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, %struct.TYPE_10__, i32, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.coda_ctx = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64*, i64* }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@CODA_MAX_FORMATS = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_CONTINUOUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @coda_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @coda_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.coda_ctx*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call %struct.coda_ctx* @fh_to_ctx(i8* %10)
  store %struct.coda_ctx* %11, %struct.coda_ctx** %8, align 8
  %12 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %13 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %106

19:                                               ; preds = %3
  %20 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %21 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %33, label %24

24:                                               ; preds = %19
  %25 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %26 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %24
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %106

33:                                               ; preds = %24, %19
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %68, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @CODA_MAX_FORMATS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %71

38:                                               ; preds = %34
  %39 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %40 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %43 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %41, %50
  br i1 %51, label %66, label %52

52:                                               ; preds = %38
  %53 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %54 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.coda_ctx*, %struct.coda_ctx** %8, align 8
  %57 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %9, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %55, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %52, %38
  br label %71

67:                                               ; preds = %52
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %34

71:                                               ; preds = %66, %34
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* @CODA_MAX_FORMATS, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %71
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %106

78:                                               ; preds = %71
  %79 = load i32, i32* @V4L2_FRMIVAL_TYPE_CONTINUOUS, align 4
  %80 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %80, i32 0, i32 2
  store i32 %79, i32* %81, align 8
  %82 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 1
  store i32 65535, i32* %89, align 4
  %90 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %91 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 0
  store i32 65536, i32* %93, align 8
  %94 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %95 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  %98 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %99 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 8
  %102 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %103 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  store i32 1, i32* %105, align 4
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %78, %75, %30, %16
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local %struct.coda_ctx* @fh_to_ctx(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
