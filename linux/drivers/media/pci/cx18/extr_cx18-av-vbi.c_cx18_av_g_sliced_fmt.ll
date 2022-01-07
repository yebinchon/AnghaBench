; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-vbi.c_cx18_av_g_sliced_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-av-vbi.c_cx18_av_g_sliced_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_format = type { i32**, i32 }
%struct.cx18 = type { %struct.cx18_av_state }
%struct.cx18_av_state = type { i32 }

@cx18_av_g_sliced_fmt.lcr2vbi = internal constant [16 x i32] [i32 0, i32 130, i32 0, i32 0, i32 128, i32 0, i32 131, i32 0, i32 0, i32 129, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@V4L2_STD_525_60 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx18_av_g_sliced_fmt(%struct.v4l2_subdev* %0, %struct.v4l2_sliced_vbi_format* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca %struct.v4l2_sliced_vbi_format*, align 8
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca %struct.cx18_av_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store %struct.v4l2_sliced_vbi_format* %1, %struct.v4l2_sliced_vbi_format** %5, align 8
  %12 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %13 = call %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev* %12)
  store %struct.cx18* %13, %struct.cx18** %6, align 8
  %14 = load %struct.cx18*, %struct.cx18** %6, align 8
  %15 = getelementptr inbounds %struct.cx18, %struct.cx18* %14, i32 0, i32 0
  store %struct.cx18_av_state* %15, %struct.cx18_av_state** %7, align 8
  %16 = load %struct.cx18_av_state*, %struct.cx18_av_state** %7, align 8
  %17 = getelementptr inbounds %struct.cx18_av_state, %struct.cx18_av_state* %16, i32 0, i32 0
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
  %30 = load %struct.cx18*, %struct.cx18** %6, align 8
  %31 = call i32 @cx18_av_read(%struct.cx18* %30, i32 1028)
  %32 = and i32 %31, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %165

35:                                               ; preds = %2
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %101

38:                                               ; preds = %35
  store i32 7, i32* %9, align 4
  br label %39

39:                                               ; preds = %97, %38
  %40 = load i32, i32* %9, align 4
  %41 = icmp sle i32 %40, 23
  br i1 %41, label %42, label %100

42:                                               ; preds = %39
  %43 = load %struct.cx18*, %struct.cx18** %6, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 1060, %44
  %46 = sub nsw i32 %45, 7
  %47 = call i32 @cx18_av_read(%struct.cx18* %43, i32 %46)
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* @cx18_av_g_sliced_fmt.lcr2vbi, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %54 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = getelementptr inbounds i32*, i32** %55, i64 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %9, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %52, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  %62 = and i32 %61, 15
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [16 x i32], [16 x i32]* @cx18_av_g_sliced_fmt.lcr2vbi, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %67 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %66, i32 0, i32 0
  %68 = load i32**, i32*** %67, align 8
  %69 = getelementptr inbounds i32*, i32** %68, i64 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 %65, i32* %73, align 4
  %74 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %75 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %74, i32 0, i32 0
  %76 = load i32**, i32*** %75, align 8
  %77 = getelementptr inbounds i32*, i32** %76, i64 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %9, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %84 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %83, i32 0, i32 0
  %85 = load i32**, i32*** %84, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 1
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %82, %91
  %93 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = or i32 %95, %92
  store i32 %96, i32* %94, align 8
  br label %97

97:                                               ; preds = %42
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %39

100:                                              ; preds = %39
  br label %164

101:                                              ; preds = %35
  store i32 10, i32* %9, align 4
  br label %102

102:                                              ; preds = %160, %101
  %103 = load i32, i32* %9, align 4
  %104 = icmp sle i32 %103, 21
  br i1 %104, label %105, label %163

105:                                              ; preds = %102
  %106 = load %struct.cx18*, %struct.cx18** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 1060, %107
  %109 = sub nsw i32 %108, 10
  %110 = call i32 @cx18_av_read(%struct.cx18* %106, i32 %109)
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %11, align 4
  %112 = ashr i32 %111, 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* @cx18_av_g_sliced_fmt.lcr2vbi, i64 0, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %117 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %116, i32 0, i32 0
  %118 = load i32**, i32*** %117, align 8
  %119 = getelementptr inbounds i32*, i32** %118, i64 0
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %9, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %115, i32* %123, align 4
  %124 = load i32, i32* %11, align 4
  %125 = and i32 %124, 15
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* @cx18_av_g_sliced_fmt.lcr2vbi, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %130 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %129, i32 0, i32 0
  %131 = load i32**, i32*** %130, align 8
  %132 = getelementptr inbounds i32*, i32** %131, i64 1
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %9, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 %128, i32* %136, align 4
  %137 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %138 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %137, i32 0, i32 0
  %139 = load i32**, i32*** %138, align 8
  %140 = getelementptr inbounds i32*, i32** %139, i64 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %9, align 4
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds i32, i32* %141, i64 %143
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %147 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %146, i32 0, i32 0
  %148 = load i32**, i32*** %147, align 8
  %149 = getelementptr inbounds i32*, i32** %148, i64 1
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  %155 = or i32 %145, %154
  %156 = load %struct.v4l2_sliced_vbi_format*, %struct.v4l2_sliced_vbi_format** %5, align 8
  %157 = getelementptr inbounds %struct.v4l2_sliced_vbi_format, %struct.v4l2_sliced_vbi_format* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = or i32 %158, %155
  store i32 %159, i32* %157, align 8
  br label %160

160:                                              ; preds = %105
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %102

163:                                              ; preds = %102
  br label %164

164:                                              ; preds = %163, %100
  store i32 0, i32* %3, align 4
  br label %165

165:                                              ; preds = %164, %34
  %166 = load i32, i32* %3, align 4
  ret i32 %166
}

declare dso_local %struct.cx18* @v4l2_get_subdevdata(%struct.v4l2_subdev*) #1

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i32 @cx18_av_read(%struct.cx18*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
