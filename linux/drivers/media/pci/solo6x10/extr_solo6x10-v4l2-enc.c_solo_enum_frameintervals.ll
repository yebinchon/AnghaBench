; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enum_frameintervals.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/solo6x10/extr_solo6x10-v4l2-enc.c_solo_enum_frameintervals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.v4l2_frmivalenum = type { i64, i64, %struct.TYPE_8__, i32, i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.solo_enc_dev = type { %struct.solo_dev* }
%struct.solo_dev = type { i64, i64, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@V4L2_FRMIVAL_TYPE_STEPWISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, %struct.v4l2_frmivalenum*)* @solo_enum_frameintervals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @solo_enum_frameintervals(%struct.file* %0, i8* %1, %struct.v4l2_frmivalenum* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.v4l2_frmivalenum*, align 8
  %8 = alloca %struct.solo_enc_dev*, align 8
  %9 = alloca %struct.solo_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.v4l2_frmivalenum* %2, %struct.v4l2_frmivalenum** %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = call %struct.solo_enc_dev* @video_drvdata(%struct.file* %10)
  store %struct.solo_enc_dev* %11, %struct.solo_enc_dev** %8, align 8
  %12 = load %struct.solo_enc_dev*, %struct.solo_enc_dev** %8, align 8
  %13 = getelementptr inbounds %struct.solo_enc_dev, %struct.solo_enc_dev* %12, i32 0, i32 0
  %14 = load %struct.solo_dev*, %struct.solo_dev** %13, align 8
  store %struct.solo_dev* %14, %struct.solo_dev** %9, align 8
  %15 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %16 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %19 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @solo_valid_pixfmt(i32 %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %108

26:                                               ; preds = %3
  %27 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %28 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %27, i32 0, i32 4
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %108

34:                                               ; preds = %26
  %35 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %36 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %39 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = ashr i64 %40, 1
  %42 = icmp ne i64 %37, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %34
  %44 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %48 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %46, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %43, %34
  %52 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %53 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %56 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %54, %57
  br i1 %58, label %68, label %59

59:                                               ; preds = %51
  %60 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %61 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %64 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = shl i64 %65, 1
  %67 = icmp ne i64 %62, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %59, %51
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %108

71:                                               ; preds = %59, %43
  %72 = load i32, i32* @V4L2_FRMIVAL_TYPE_STEPWISE, align 4
  %73 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %74 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %73, i32 0, i32 3
  store i32 %72, i32* %74, align 8
  %75 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %76 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i32 1, i32* %78, align 8
  %79 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %80 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %83 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i32 %81, i32* %85, align 4
  %86 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  store i32 15, i32* %89, align 8
  %90 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %91 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %94 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 1
  store i32 %92, i32* %96, align 4
  %97 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %98 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  %101 = load %struct.solo_dev*, %struct.solo_dev** %9, align 8
  %102 = getelementptr inbounds %struct.solo_dev, %struct.solo_dev* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.v4l2_frmivalenum*, %struct.v4l2_frmivalenum** %7, align 8
  %105 = getelementptr inbounds %struct.v4l2_frmivalenum, %struct.v4l2_frmivalenum* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 1
  store i32 %103, i32* %107, align 4
  store i32 0, i32* %4, align 4
  br label %108

108:                                              ; preds = %71, %68, %31, %23
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local %struct.solo_enc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i64 @solo_valid_pixfmt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
