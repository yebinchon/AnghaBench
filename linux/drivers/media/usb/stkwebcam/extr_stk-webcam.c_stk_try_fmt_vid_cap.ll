; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_try_fmt_vid_cap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/stkwebcam/extr_stk-webcam.c_stk_try_fmt_vid_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }
%struct.file = type { i32 }
%struct.v4l2_format = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@stk_sizes = common dso_local global %struct.TYPE_7__* null, align 8
@V4L2_FIELD_NONE = common dso_local global i32 0, align 4
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.v4l2_format*, i32*)* @stk_try_fmt_vid_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stk_try_fmt_vid_cap(%struct.file* %0, %struct.v4l2_format* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.v4l2_format*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.v4l2_format* %1, %struct.v4l2_format** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %10 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %15 [
    i32 132, label %14
    i32 131, label %14
    i32 129, label %14
    i32 128, label %14
    i32 130, label %14
  ]

14:                                               ; preds = %3, %3, %3, %3, %3
  br label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %189

18:                                               ; preds = %14
  store i32 1, i32* %8, align 4
  br label %19

19:                                               ; preds = %39, %18
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %19
  %25 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %26 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp sgt i64 %29, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %24
  br label %42

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %8, align 4
  br label %19

42:                                               ; preds = %37, %19
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %45 = call i32 @ARRAY_SIZE(%struct.TYPE_7__* %44)
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %76, label %47

47:                                               ; preds = %42
  %48 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %49 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sub nsw i32 %54, 1
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = sub nsw i64 %52, %59
  %61 = call i64 @abs(i64 %60)
  %62 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %63 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = sub nsw i64 %66, %72
  %74 = call i64 @abs(i64 %73)
  %75 = icmp slt i64 %61, %74
  br i1 %75, label %76, label %106

76:                                               ; preds = %47, %42
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sub nsw i32 %78, 1
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %85 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i32 0, i32 2
  store i32 %83, i32* %87, align 8
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %89 = load i32, i32* %8, align 4
  %90 = sub nsw i32 %89, 1
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i64 %94, i64* %98, align 8
  %99 = load i32*, i32** %7, align 8
  %100 = icmp ne i32* %99, null
  br i1 %100, label %101, label %105

101:                                              ; preds = %76
  %102 = load i32, i32* %8, align 4
  %103 = sub nsw i32 %102, 1
  %104 = load i32*, i32** %7, align 8
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %101, %76
  br label %133

106:                                              ; preds = %47
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %108 = load i32, i32* %8, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %114 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  store i32 %112, i32* %116, align 8
  %117 = load %struct.TYPE_7__*, %struct.TYPE_7__** @stk_sizes, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %124 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 1
  store i64 %122, i64* %126, align 8
  %127 = load i32*, i32** %7, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %132

129:                                              ; preds = %106
  %130 = load i32, i32* %8, align 4
  %131 = load i32*, i32** %7, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %129, %106
  br label %133

133:                                              ; preds = %132, %105
  %134 = load i32, i32* @V4L2_FIELD_NONE, align 4
  %135 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %136 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 6
  store i32 %134, i32* %138, align 8
  %139 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %140 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %141 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 5
  store i32 %139, i32* %143, align 4
  %144 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %145 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = icmp eq i32 %148, 130
  br i1 %149, label %150, label %161

150:                                              ; preds = %133
  %151 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %152 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = trunc i64 %155 to i32
  %157 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %158 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 3
  store i32 %156, i32* %160, align 4
  br label %173

161:                                              ; preds = %133
  %162 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %163 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = mul nsw i64 2, %166
  %168 = trunc i64 %167 to i32
  %169 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %170 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 3
  store i32 %168, i32* %172, align 4
  br label %173

173:                                              ; preds = %161, %150
  %174 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %175 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %180 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = mul nsw i32 %178, %183
  %185 = load %struct.v4l2_format*, %struct.v4l2_format** %6, align 8
  %186 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 4
  store i32 %184, i32* %188, align 8
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %173, %15
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_7__*) #1

declare dso_local i64 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
