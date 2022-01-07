; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_find_format_by_index.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_find_format_by_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_format = type { i64, i32 }
%struct.venus_inst = type { i32 }

@vdec_formats = common dso_local global %struct.venus_format* null, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.venus_format* (%struct.venus_inst*, i32, i64)* @find_format_by_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.venus_format* @find_format_by_index(%struct.venus_inst* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.venus_format*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.venus_format*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %13 = load %struct.venus_format*, %struct.venus_format** @vdec_formats, align 8
  store %struct.venus_format* %13, %struct.venus_format** %8, align 8
  %14 = load %struct.venus_format*, %struct.venus_format** @vdec_formats, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.venus_format* %14)
  store i32 %15, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ugt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store %struct.venus_format* null, %struct.venus_format** %4, align 8
  br label %79

20:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %66, %20
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %21
  %26 = load %struct.venus_format*, %struct.venus_format** %8, align 8
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %26, i64 %28
  %30 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %7, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %66

35:                                               ; preds = %25
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %49, label %39

39:                                               ; preds = %35
  %40 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %41 = load %struct.venus_format*, %struct.venus_format** %8, align 8
  %42 = load i32, i32* %10, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %41, i64 %43
  %45 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @venus_helper_check_codec(%struct.venus_inst* %40, i32 %46)
  %48 = icmp ne i64 %47, 0
  br label %49

49:                                               ; preds = %39, %35
  %50 = phi i1 [ true, %35 ], [ %48, %39 ]
  %51 = zext i1 %50 to i32
  store i32 %51, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %69

59:                                               ; preds = %55, %49
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load i32, i32* %11, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %62, %59
  br label %66

66:                                               ; preds = %65, %34
  %67 = load i32, i32* %10, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %21

69:                                               ; preds = %58, %21
  %70 = load i32, i32* %10, align 4
  %71 = load i32, i32* %9, align 4
  %72 = icmp eq i32 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  store %struct.venus_format* null, %struct.venus_format** %4, align 8
  br label %79

74:                                               ; preds = %69
  %75 = load %struct.venus_format*, %struct.venus_format** %8, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %75, i64 %77
  store %struct.venus_format* %78, %struct.venus_format** %4, align 8
  br label %79

79:                                               ; preds = %74, %73, %19
  %80 = load %struct.venus_format*, %struct.venus_format** %4, align 8
  ret %struct.venus_format* %80
}

declare dso_local i32 @ARRAY_SIZE(%struct.venus_format*) #1

declare dso_local i64 @venus_helper_check_codec(%struct.venus_inst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
