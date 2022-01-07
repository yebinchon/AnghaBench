; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_s_sliced_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_tvp5150.c_tvp5150_s_sliced_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i64, i64** }
%struct.tvp5150 = type { i32 }

@TVP5150_FIFO_OUT_CTRL = common dso_local global i32 0, align 4
@TVP5150_FULL_FIELD_ENA = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_INI = common dso_local global i32 0, align 4
@TVP5150_LINE_MODE_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)* @tvp5150_s_sliced_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tvp5150_s_sliced_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca %struct.v4l2_subdev*, align 8
  %4 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %5 = alloca %struct.tvp5150*, align 8
  %6 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %3, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %4, align 8
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %8 = call %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev* %7)
  store %struct.tvp5150* %8, %struct.tvp5150** %5, align 8
  %9 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %10 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %55

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %46, %13
  %15 = load i32, i32* %6, align 4
  %16 = icmp sle i32 %15, 23
  br i1 %16, label %17, label %49

17:                                               ; preds = %14
  %18 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %19 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %18, i32 0, i32 1
  %20 = load i64**, i64*** %19, align 8
  %21 = getelementptr inbounds i64*, i64** %20, i64 1
  %22 = load i64*, i64** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i64, i64* %22, i64 %24
  store i64 0, i64* %25, align 8
  %26 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %3, align 8
  %27 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %27, i32 0, i32 1
  %29 = load i64**, i64*** %28, align 8
  %30 = getelementptr inbounds i64*, i64** %29, i64 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @tvp5150_set_vbi(%struct.v4l2_subdev* %26, i64 %35, i32 240, i32 %36, i32 3)
  %38 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %4, align 8
  %39 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %38, i32 0, i32 1
  %40 = load i64**, i64*** %39, align 8
  %41 = getelementptr inbounds i64*, i64** %40, i64 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %37, i64* %45, align 8
  br label %46

46:                                               ; preds = %17
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %14

49:                                               ; preds = %14
  %50 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %51 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @TVP5150_FIFO_OUT_CTRL, align 4
  %54 = call i32 @regmap_write(i32 %52, i32 %53, i32 1)
  br label %81

55:                                               ; preds = %2
  %56 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %57 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @TVP5150_FIFO_OUT_CTRL, align 4
  %60 = call i32 @regmap_write(i32 %58, i32 %59, i32 0)
  %61 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %62 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TVP5150_FULL_FIELD_ENA, align 4
  %65 = call i32 @regmap_write(i32 %63, i32 %64, i32 0)
  %66 = load i32, i32* @TVP5150_LINE_MODE_INI, align 4
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %77, %55
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* @TVP5150_LINE_MODE_END, align 4
  %70 = icmp sle i32 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %67
  %72 = load %struct.tvp5150*, %struct.tvp5150** %5, align 8
  %73 = getelementptr inbounds %struct.tvp5150, %struct.tvp5150* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @regmap_write(i32 %74, i32 %75, i32 255)
  br label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %6, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %6, align 4
  br label %67

80:                                               ; preds = %67
  br label %81

81:                                               ; preds = %80, %49
  ret i32 0
}

declare dso_local %struct.tvp5150* @to_tvp5150(%struct.v4l2_subdev*) #1

declare dso_local i64 @tvp5150_set_vbi(%struct.v4l2_subdev*, i64, i32, i32, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
