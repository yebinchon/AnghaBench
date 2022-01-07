; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_find_format.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_vdec.c_find_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_format = type { i64, i64 }
%struct.venus_inst = type { i32 }

@vdec_formats = common dso_local global %struct.venus_format* null, align 8
@V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.venus_format* (%struct.venus_inst*, i64, i64)* @find_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.venus_format* @find_format(%struct.venus_inst* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.venus_format*, align 8
  %5 = alloca %struct.venus_inst*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.venus_format*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.venus_format*, %struct.venus_format** @vdec_formats, align 8
  store %struct.venus_format* %11, %struct.venus_format** %8, align 8
  %12 = load %struct.venus_format*, %struct.venus_format** @vdec_formats, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.venus_format* %12)
  store i32 %13, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %14

14:                                               ; preds = %29, %3
  %15 = load i32, i32* %10, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ult i32 %15, %16
  br i1 %17, label %18, label %32

18:                                               ; preds = %14
  %19 = load %struct.venus_format*, %struct.venus_format** %8, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %19, i64 %21
  %23 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %32

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i32, i32* %10, align 4
  %31 = add i32 %30, 1
  store i32 %31, i32* %10, align 4
  br label %14

32:                                               ; preds = %27, %14
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %45, label %36

36:                                               ; preds = %32
  %37 = load %struct.venus_format*, %struct.venus_format** %8, align 8
  %38 = load i32, i32* %10, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %37, i64 %39
  %41 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* %7, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %36, %32
  store %struct.venus_format* null, %struct.venus_format** %4, align 8
  br label %66

46:                                               ; preds = %36
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT_MPLANE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %46
  %51 = load %struct.venus_inst*, %struct.venus_inst** %5, align 8
  %52 = load %struct.venus_format*, %struct.venus_format** %8, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %52, i64 %54
  %56 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @venus_helper_check_codec(%struct.venus_inst* %51, i64 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %50
  store %struct.venus_format* null, %struct.venus_format** %4, align 8
  br label %66

61:                                               ; preds = %50, %46
  %62 = load %struct.venus_format*, %struct.venus_format** %8, align 8
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.venus_format, %struct.venus_format* %62, i64 %64
  store %struct.venus_format* %65, %struct.venus_format** %4, align 8
  br label %66

66:                                               ; preds = %61, %60, %45
  %67 = load %struct.venus_format*, %struct.venus_format** %4, align 8
  ret %struct.venus_format* %67
}

declare dso_local i32 @ARRAY_SIZE(%struct.venus_format*) #1

declare dso_local i32 @venus_helper_check_codec(%struct.venus_inst*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
