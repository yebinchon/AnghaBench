; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_compress_sliced_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_compress_sliced_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i64 }
%struct.v4l2_decode_vbi_line = type { i32*, i32, i32, i64 }

@decode_vbi_line = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, i32, i32*, i32, i32)* @compress_sliced_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compress_sliced_buf(%struct.ivtv* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ivtv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.v4l2_decode_vbi_line, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %18 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  br label %21

21:                                               ; preds = %48, %5
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %53

25:                                               ; preds = %21
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp eq i32 %28, 255
  br i1 %29, label %30, label %47

30:                                               ; preds = %25
  %31 = load i32*, i32** %9, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load i32*, i32** %9, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %35
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %53

47:                                               ; preds = %40, %35, %30, %25
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  %51 = load i32*, i32** %9, align 8
  %52 = getelementptr inbounds i32, i32* %51, i32 1
  store i32* %52, i32** %9, align 8
  br label %21

53:                                               ; preds = %46, %21
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* %10, align 4
  %56 = sub nsw i32 %55, %54
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %12, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %53
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %6, align 4
  br label %172

62:                                               ; preds = %53
  store i32 0, i32* %14, align 4
  br label %63

63:                                               ; preds = %167, %62
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %12, align 4
  %67 = sdiv i32 %65, %66
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %170

69:                                               ; preds = %63
  %70 = load i32*, i32** %9, align 8
  %71 = load i32, i32* %14, align 4
  %72 = load i32, i32* %12, align 4
  %73 = mul nsw i32 %71, %72
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %70, i64 %74
  store i32* %75, i32** %16, align 8
  %76 = load i32*, i32** %16, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 255
  br i1 %79, label %96, label %80

80:                                               ; preds = %69
  %81 = load i32*, i32** %16, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %96, label %85

85:                                               ; preds = %80
  %86 = load i32*, i32** %16, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %96, label %90

90:                                               ; preds = %85
  %91 = load i32*, i32** %16, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %90, %85, %80, %69
  br label %167

97:                                               ; preds = %90
  %98 = load i32*, i32** %16, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  %100 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %13, i32 0, i32 0
  store i32* %99, i32** %100, align 8
  %101 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %102 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @decode_vbi_line, align 4
  %105 = call i32 @v4l2_subdev_call(i32 %103, %struct.v4l2_decode_vbi_line* byval(%struct.v4l2_decode_vbi_line) align 8 %13, i32 %104, %struct.v4l2_decode_vbi_line* %13)
  %106 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %13, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %166

109:                                              ; preds = %97
  %110 = load i32, i32* %15, align 4
  %111 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %13, i32 0, i32 1
  %112 = load i32, i32* %111, align 8
  %113 = shl i32 1, %112
  %114 = and i32 %110, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %166, label %116

116:                                              ; preds = %109
  %117 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %13, i32 0, i32 1
  %118 = load i32, i32* %117, align 8
  %119 = shl i32 1, %118
  %120 = load i32, i32* %15, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %15, align 4
  %122 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %13, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %125 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 1
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i32 0, i32 3
  store i64 %123, i64* %131, align 8
  %132 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %13, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %135 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 1
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 2
  store i32 %133, i32* %141, align 8
  %142 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %13, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %145 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_3__*, %struct.TYPE_3__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %147, i64 %149
  %151 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %150, i32 0, i32 0
  store i32 %143, i32* %151, align 8
  %152 = load %struct.ivtv*, %struct.ivtv** %7, align 8
  %153 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %153, i32 0, i32 1
  %155 = load %struct.TYPE_3__*, %struct.TYPE_3__** %154, align 8
  %156 = load i32, i32* %8, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = getelementptr inbounds %struct.v4l2_decode_vbi_line, %struct.v4l2_decode_vbi_line* %13, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = call i32 @memcpy(i32 %160, i32* %162, i32 42)
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %116, %109, %97
  br label %167

167:                                              ; preds = %166, %96
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %63

170:                                              ; preds = %63
  %171 = load i32, i32* %8, align 4
  store i32 %171, i32* %6, align 4
  br label %172

172:                                              ; preds = %170, %60
  %173 = load i32, i32* %6, align 4
  ret i32 %173
}

declare dso_local i32 @v4l2_subdev_call(i32, %struct.v4l2_decode_vbi_line* byval(%struct.v4l2_decode_vbi_line) align 8, i32, %struct.v4l2_decode_vbi_line*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
