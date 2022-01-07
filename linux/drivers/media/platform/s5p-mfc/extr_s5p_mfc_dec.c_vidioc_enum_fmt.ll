; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_enum_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-mfc/extr_s5p_mfc_dec.c_vidioc_enum_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.file = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32 }
%struct.s5p_mfc_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@formats = common dso_local global %struct.TYPE_5__* null, align 8
@MFC_FMT_DEC = common dso_local global i64 0, align 8
@MFC_FMT_RAW = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.v4l2_fmtdesc*, i32)* @vidioc_enum_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_enum_fmt(%struct.file* %0, %struct.v4l2_fmtdesc* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.v4l2_fmtdesc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.s5p_mfc_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.v4l2_fmtdesc* %1, %struct.v4l2_fmtdesc** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.file*, %struct.file** %5, align 8
  %12 = call %struct.s5p_mfc_dev* @video_drvdata(%struct.file* %11)
  store %struct.s5p_mfc_dev* %12, %struct.s5p_mfc_dev** %8, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %13

13:                                               ; preds = %71, %3
  %14 = load i32, i32* %9, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @formats, align 8
  %16 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %15)
  %17 = icmp slt i32 %14, %16
  br i1 %17, label %18, label %74

18:                                               ; preds = %13
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %18
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @formats, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MFC_FMT_DEC, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %21
  br label %71

31:                                               ; preds = %21, %18
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %44, label %34

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** @formats, align 8
  %36 = load i32, i32* %9, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MFC_FMT_RAW, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %71

44:                                               ; preds = %34, %31
  %45 = load %struct.s5p_mfc_dev*, %struct.s5p_mfc_dev** %8, align 8
  %46 = getelementptr inbounds %struct.s5p_mfc_dev, %struct.s5p_mfc_dev* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** @formats, align 8
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %49, %55
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %44
  br label %71

59:                                               ; preds = %44
  br label %60

60:                                               ; preds = %59
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %64 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %74

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %58, %43, %30
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %9, align 4
  br label %13

74:                                               ; preds = %67, %13
  %75 = load i32, i32* %9, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @formats, align 8
  %77 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %76)
  %78 = icmp eq i32 %75, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %91

82:                                               ; preds = %74
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** @formats, align 8
  %84 = load i32, i32* %9, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.v4l2_fmtdesc*, %struct.v4l2_fmtdesc** %6, align 8
  %90 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 0, i32* %4, align 4
  br label %91

91:                                               ; preds = %82, %79
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local %struct.s5p_mfc_dev* @video_drvdata(%struct.file*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
