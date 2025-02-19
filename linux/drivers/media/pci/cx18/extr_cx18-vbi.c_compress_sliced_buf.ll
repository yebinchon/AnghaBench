; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-vbi.c_compress_sliced_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx18/extr_cx18-vbi.c_compress_sliced_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18 = type { %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.v4l2_decode_vbi_line = type { i32*, i32, i32, i64 }

@VBI_HBLANK_SAMPLES_60HZ = common dso_local global i32 0, align 4
@VBI_HBLANK_SAMPLES_50HZ = common dso_local global i32 0, align 4
@sliced_vbi_eav_rp = common dso_local global i32* null, align 8
@decode_vbi_line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18*, i32*, i32, i32)* @compress_sliced_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_sliced_buf(%struct.cx18* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.v4l2_decode_vbi_line, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  store %struct.cx18* %0, %struct.cx18** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %12, align 4
  %15 = load %struct.cx18*, %struct.cx18** %6, align 8
  %16 = getelementptr inbounds %struct.cx18, %struct.cx18* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* @VBI_HBLANK_SAMPLES_60HZ, align 4
  br label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @VBI_HBLANK_SAMPLES_50HZ, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %9, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32*, i32** %7, align 8
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  store i32* %29, i32** %7, align 8
  br label %30

30:                                               ; preds = %67, %23
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %72

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %37, 255
  br i1 %38, label %39, label %66

39:                                               ; preds = %34
  %40 = load i32*, i32** %7, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %66, label %44

44:                                               ; preds = %39
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %44
  %50 = load i32*, i32** %7, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 3
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** @sliced_vbi_eav_rp, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %65, label %57

57:                                               ; preds = %49
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 3
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** @sliced_vbi_eav_rp, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57, %49
  br label %72

66:                                               ; preds = %57, %44, %39, %34
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %7, align 8
  br label %30

72:                                               ; preds = %65, %30
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* %9, align 4
  %75 = sub nsw i32 %73, %74
  %76 = load i32, i32* %8, align 4
  %77 = sub nsw i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %72
  %82 = load i32, i32* %12, align 4
  store i32 %82, i32* %5, align 4
  br label %191

83:                                               ; preds = %72
  store i32 0, i32* %11, align 4
  br label %84

84:                                               ; preds = %186, %83
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %13, align 4
  %88 = sdiv i32 %86, %87
  %89 = icmp slt i32 %85, %88
  br i1 %89, label %90, label %189

90:                                               ; preds = %84
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %13, align 4
  %94 = mul nsw i32 %92, %93
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %91, i64 %95
  store i32* %96, i32** %14, align 8
  %97 = load i32*, i32** %14, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 255
  br i1 %100, label %127, label %101

101:                                              ; preds = %90
  %102 = load i32*, i32** %14, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %127, label %106

106:                                              ; preds = %101
  %107 = load i32*, i32** %14, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %127, label %111

111:                                              ; preds = %106
  %112 = load i32*, i32** %14, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 3
  %114 = load i32, i32* %113, align 4
  %115 = load i32*, i32** @sliced_vbi_eav_rp, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  %117 = load i32, i32* %116, align 4
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %128

119:                                              ; preds = %111
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = load i32*, i32** @sliced_vbi_eav_rp, align 8
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  %125 = load i32, i32* %124, align 4
  %126 = icmp ne i32 %122, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %119, %106, %101, %90
  br label %186

128:                                              ; preds = %119, %111
  %129 = load i32*, i32** %14, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 4
  %131 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %10, i32 0, i32 0
  store i32* %130, i32** %131, align 8
  %132 = load %struct.cx18*, %struct.cx18** %6, align 8
  %133 = getelementptr inbounds %struct.cx18, %struct.cx18* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @decode_vbi_line, align 4
  %136 = call i32 @v4l2_subdev_call(i32 %134, %struct.v4l2_decode_vbi_line* byval(%struct.v4l2_decode_vbi_line) align 8 %10, i32 %135, %struct.v4l2_decode_vbi_line* %10)
  %137 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %10, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %185

140:                                              ; preds = %128
  %141 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %10, i32 0, i32 3
  %142 = load i64, i64* %141, align 8
  %143 = load %struct.cx18*, %struct.cx18** %6, align 8
  %144 = getelementptr inbounds %struct.cx18, %struct.cx18* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load i32, i32* %12, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 3
  store i64 %142, i64* %150, align 8
  %151 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %10, i32 0, i32 2
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.cx18*, %struct.cx18** %6, align 8
  %154 = getelementptr inbounds %struct.cx18, %struct.cx18* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = load %struct.TYPE_3__*, %struct.TYPE_3__** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 2
  store i32 %152, i32* %160, align 8
  %161 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %10, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.cx18*, %struct.cx18** %6, align 8
  %164 = getelementptr inbounds %struct.cx18, %struct.cx18* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_3__*, %struct.TYPE_3__** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 1
  store i32 %162, i32* %170, align 4
  %171 = load %struct.cx18*, %struct.cx18** %6, align 8
  %172 = getelementptr inbounds %struct.cx18, %struct.cx18* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load %struct.TYPE_3__*, %struct.TYPE_3__** %173, align 8
  %175 = load i32, i32* %12, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i64 %176
  %178 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %10, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = call i32 @memcpy(i32 %179, i32* %181, i32 42)
  %183 = load i32, i32* %12, align 4
  %184 = add nsw i32 %183, 1
  store i32 %184, i32* %12, align 4
  br label %185

185:                                              ; preds = %140, %128
  br label %186

186:                                              ; preds = %185, %127
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  br label %84

189:                                              ; preds = %84
  %190 = load i32, i32* %12, align 4
  store i32 %190, i32* %5, align 4
  br label %191

191:                                              ; preds = %189, %81
  %192 = load i32, i32* %5, align 4
  ret i32 %192
}

declare dso_local i32 @v4l2_subdev_call(i32, %struct.v4l2_decode_vbi_line* byval(%struct.v4l2_decode_vbi_line) align 8, i32, %struct.v4l2_decode_vbi_line*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
