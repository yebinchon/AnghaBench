; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-vbi.c_cx25840_g_sliced_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/cx25840/extr_cx25840-vbi.c_cx25840_g_sliced_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i32**, i32 }
%struct.i2c_client = type { i32 }
%struct.cx25840_state = type { i32, i32 }

@cx25840_g_sliced_fmt.lcr2vbi = internal constant [16 x i32] [i32 0, i32 130, i32 0, i32 0, i32 128, i32 0, i32 131, i32 0, i32 0, i32 129, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@V4L2_STD_525_60 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx25840_g_sliced_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.cx25840_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.i2c_client* %13, %struct.i2c_client** %6, align 8
  %14 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %15 = call %struct.cx25840_state* @to_state(%struct.v4l2_subdev* %14)
  store %struct.cx25840_state* %15, %struct.cx25840_state** %7, align 8
  %16 = load %struct.cx25840_state*, %struct.cx25840_state** %7, align 8
  %17 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @V4L2_STD_525_60, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %8, align 4
  %24 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %25 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %24, i32 0, i32 0
  %26 = load i32**, i32*** %25, align 8
  %27 = call i32 @memset(i32** %26, i32 0, i32 8)
  %28 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %28, i32 0, i32 1
  store i32 0, i32* %29, align 8
  %30 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %31 = call i32 @cx25840_read(%struct.i2c_client* %30, i32 1028)
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %173

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %105

38:                                               ; preds = %35
  store i32 7, i32* %9, align 4
  br label %39

39:                                               ; preds = %101, %38
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 23
  br i1 %41, label %42, label %104

42:                                               ; preds = %39
  %43 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %44 = load %struct.cx25840_state*, %struct.cx25840_state** %7, align 8
  %45 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1060
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %47, %48
  %50 = sub nsw i32 %49, 7
  %51 = call i32 @cx25840_read(%struct.i2c_client* %43, i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = ashr i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* @cx25840_g_sliced_fmt.lcr2vbi, i64 0, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %58 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %57, i32 0, i32 0
  %59 = load i32**, i32*** %58, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %9, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %56, i32* %64, align 4
  %65 = load i32, i32* %10, align 4
  %66 = and i32 %65, 15
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [16 x i32], [16 x i32]* @cx25840_g_sliced_fmt.lcr2vbi, i64 0, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %71 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 1
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32 %69, i32* %77, align 4
  %78 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %79 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %78, i32 0, i32 0
  %80 = load i32**, i32*** %79, align 8
  %81 = getelementptr inbounds i32*, i32** %80, i64 0
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %9, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %88 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %87, i32 0, i32 0
  %89 = load i32**, i32*** %88, align 8
  %90 = getelementptr inbounds i32*, i32** %89, i64 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = or i32 %86, %95
  %97 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %98 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 8
  %100 = or i32 %99, %96
  store i32 %100, i32* %98, align 8
  br label %101

101:                                              ; preds = %42
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %39

104:                                              ; preds = %39
  br label %172

105:                                              ; preds = %35
  store i32 10, i32* %9, align 4
  br label %106

106:                                              ; preds = %168, %105
  %107 = load i32, i32* %9, align 4
  %108 = icmp sle i32 %107, 21
  br i1 %108, label %109, label %171

109:                                              ; preds = %106
  %110 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %111 = load %struct.cx25840_state*, %struct.cx25840_state** %7, align 8
  %112 = getelementptr inbounds %struct.cx25840_state, %struct.cx25840_state* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1060
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %114, %115
  %117 = sub nsw i32 %116, 10
  %118 = call i32 @cx25840_read(%struct.i2c_client* %110, i32 %117)
  store i32 %118, i32* %11, align 4
  %119 = load i32, i32* %11, align 4
  %120 = ashr i32 %119, 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* @cx25840_g_sliced_fmt.lcr2vbi, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %125 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %124, i32 0, i32 0
  %126 = load i32**, i32*** %125, align 8
  %127 = getelementptr inbounds i32*, i32** %126, i64 0
  %128 = load i32*, i32** %127, align 8
  %129 = load i32, i32* %9, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  store i32 %123, i32* %131, align 4
  %132 = load i32, i32* %11, align 4
  %133 = and i32 %132, 15
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [16 x i32], [16 x i32]* @cx25840_g_sliced_fmt.lcr2vbi, i64 0, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %138 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 1
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  store i32 %136, i32* %144, align 4
  %145 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %146 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %145, i32 0, i32 0
  %147 = load i32**, i32*** %146, align 8
  %148 = getelementptr inbounds i32*, i32** %147, i64 0
  %149 = load i32*, i32** %148, align 8
  %150 = load i32, i32* %9, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds i32, i32* %149, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %155 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %154, i32 0, i32 0
  %156 = load i32**, i32*** %155, align 8
  %157 = getelementptr inbounds i32*, i32** %156, i64 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %9, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = or i32 %153, %162
  %164 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %165 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = or i32 %166, %163
  store i32 %167, i32* %165, align 8
  br label %168

168:                                              ; preds = %109
  %169 = load i32, i32* %9, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %9, align 4
  br label %106

171:                                              ; preds = %106
  br label %172

172:                                              ; preds = %171, %104
  store i32 0, i32* %3, align 4
  br label %173

173:                                              ; preds = %172, %34
  %174 = load i32, i32* %3, align 4
  ret i32 %174
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local %struct.cx25840_state* @to_state(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @cx25840_read(%struct.i2c_client*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
