; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_g_sliced_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_saa7115.c_saa711x_g_sliced_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i32**, i32 }

@saa711x_g_sliced_fmt.lcr2vbi = internal global <{ [8 x i8*], [8 x i8*] }> <{ [8 x i8*] [i8* null, i8* inttoptr (i64 130 to i8*), i8* null, i8* null, i8* inttoptr (i64 131 to i8*), i8* inttoptr (i64 128 to i8*), i8* null, i8* inttoptr (i64 129 to i8*)], [8 x i8*] zeroinitializer }>, align 16
@R_80_GLOBAL_CNTL_1 = common dso_local global i64 0, align 8
@R_41_LCR_BASE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_format*)* @saa711x_g_sliced_fmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa711x_g_sliced_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %5, align 8
  %8 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %9 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  %11 = call i32 @memset(i32** %10, i32 0, i32 8)
  %12 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %13 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %12, i32 0, i32 1
  store i32 0, i32* %13, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = load i64, i64* @R_80_GLOBAL_CNTL_1, align 8
  %16 = call i32 @saa711x_read(%struct.v4l2_subdev* %14, i64 %15)
  %17 = and i32 %16, 16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %87

20:                                               ; preds = %2
  store i32 2, i32* %6, align 4
  br label %21

21:                                               ; preds = %83, %20
  %22 = load i32, i32* %6, align 4
  %23 = icmp sle i32 %22, 23
  br i1 %23, label %24, label %86

24:                                               ; preds = %21
  %25 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sub nsw i32 %26, 2
  %28 = sext i32 %27 to i64
  %29 = load i64, i64* @R_41_LCR_BASE, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @saa711x_read(%struct.v4l2_subdev* %25, i64 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = ashr i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [16 x i8*], [16 x i8*]* bitcast (<{ [8 x i8*], [8 x i8*] }>* @saa711x_g_sliced_fmt.lcr2vbi to [16 x i8*]*), i64 0, i64 %34
  %36 = load i8*, i8** %35, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %39 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  store i32 %37, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 15
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [16 x i8*], [16 x i8*]* bitcast (<{ [8 x i8*], [8 x i8*] }>* @saa711x_g_sliced_fmt.lcr2vbi to [16 x i8*]*), i64 0, i64 %48
  %50 = load i8*, i8** %49, align 8
  %51 = ptrtoint i8* %50 to i32
  %52 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %52, i32 0, i32 0
  %54 = load i32**, i32*** %53, align 8
  %55 = getelementptr inbounds i32*, i32** %54, i64 1
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %51, i32* %59, align 4
  %60 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %61 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %60, i32 0, i32 0
  %62 = load i32**, i32*** %61, align 8
  %63 = getelementptr inbounds i32*, i32** %62, i64 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %69, i32 0, i32 0
  %71 = load i32**, i32*** %70, align 8
  %72 = getelementptr inbounds i32*, i32** %71, i64 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %6, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %68, %77
  %79 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %24
  %84 = load i32, i32* %6, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %6, align 4
  br label %21

86:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %86, %19
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @saa711x_read(%struct.v4l2_subdev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
