; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-gen.c_vivid_vbi_gen_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/vivid/extr_vivid-vbi-gen.c_vivid_vbi_gen_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vivid_vbi_gen_data = type { %struct.v4l2_sliced_vbi_data* }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32 }
%struct.v4l2_vbi_format = type { i32, i32, i32*, i32, i64* }

@V4L2_SLICED_VBI_525 = common dso_local global i32 0, align 4
@V4L2_VBI_INTERLACED = common dso_local global i32 0, align 4
@V4L2_SLICED_CAPTION_525 = common dso_local global i32 0, align 4
@V4L2_SLICED_WSS_625 = common dso_local global i32 0, align 4
@V4L2_SLICED_TELETEXT_B = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vivid_vbi_gen_raw(%struct.vivid_vbi_gen_data* %0, %struct.v4l2_vbi_format* %1, i32* %2) #0 {
  %4 = alloca %struct.vivid_vbi_gen_data*, align 8
  %5 = alloca %struct.v4l2_vbi_format*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.v4l2_sliced_vbi_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.vivid_vbi_gen_data* %0, %struct.vivid_vbi_gen_data** %4, align 8
  store %struct.v4l2_vbi_format* %1, %struct.v4l2_vbi_format** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 0, i32* %7, align 4
  br label %12

12:                                               ; preds = %137, %3
  %13 = load i32, i32* %7, align 4
  %14 = icmp ult i32 %13, 25
  br i1 %14, label %15, label %140

15:                                               ; preds = %12
  %16 = load %struct.vivid_vbi_gen_data*, %struct.vivid_vbi_gen_data** %4, align 8
  %17 = getelementptr inbounds %struct.vivid_vbi_gen_data, %struct.vivid_vbi_gen_data* %16, i32 0, i32 0
  %18 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %18, i64 %20
  store %struct.v4l2_sliced_vbi_data* %21, %struct.v4l2_sliced_vbi_data** %8, align 8
  %22 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %23 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load i32*, i32** %6, align 8
  store i32* %25, i32** %11, align 8
  %26 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %27 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @V4L2_SLICED_VBI_525, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 263, i32 313
  store i32 %33, i32* %9, align 4
  %34 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %35 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %15
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* %10, align 4
  %41 = add i32 %40, %39
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %38, %15
  %43 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %44 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %43, i32 0, i32 4
  %45 = load i64*, i64** %44, align 8
  %46 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %47 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = zext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %10, align 4
  %56 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %57 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @V4L2_VBI_INTERLACED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %42
  %63 = load i32, i32* %10, align 4
  %64 = mul i32 %63, 2
  %65 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %66 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %64, %67
  %69 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %70 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = mul i32 %68, %71
  %73 = load i32*, i32** %11, align 8
  %74 = zext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %11, align 8
  br label %95

76:                                               ; preds = %42
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %79 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %82 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load i32, i32* %84, align 4
  %86 = mul i32 %80, %85
  %87 = add i32 %77, %86
  %88 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %89 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = mul i32 %87, %90
  %92 = load i32*, i32** %11, align 8
  %93 = zext i32 %91 to i64
  %94 = getelementptr inbounds i32, i32* %92, i64 %93
  store i32* %94, i32** %11, align 8
  br label %95

95:                                               ; preds = %76, %62
  %96 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %97 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @V4L2_SLICED_CAPTION_525, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %95
  %102 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %103 = load i32*, i32** %11, align 8
  %104 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %105 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @vivid_vbi_gen_cc_raw(%struct.v4l2_sliced_vbi_data* %102, i32* %103, i32 %106)
  br label %136

108:                                              ; preds = %95
  %109 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %110 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @V4L2_SLICED_WSS_625, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %121

114:                                              ; preds = %108
  %115 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %118 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @vivid_vbi_gen_wss_raw(%struct.v4l2_sliced_vbi_data* %115, i32* %116, i32 %119)
  br label %135

121:                                              ; preds = %108
  %122 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %123 = getelementptr inbounds %struct.v4l2_sliced_vbi_data, %struct.v4l2_sliced_vbi_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @V4L2_SLICED_TELETEXT_B, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %134

127:                                              ; preds = %121
  %128 = load %struct.v4l2_sliced_vbi_data*, %struct.v4l2_sliced_vbi_data** %8, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = load %struct.v4l2_vbi_format*, %struct.v4l2_vbi_format** %5, align 8
  %131 = getelementptr inbounds %struct.v4l2_vbi_format, %struct.v4l2_vbi_format* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i32 @vivid_vbi_gen_teletext_raw(%struct.v4l2_sliced_vbi_data* %128, i32* %129, i32 %132)
  br label %134

134:                                              ; preds = %127, %121
  br label %135

135:                                              ; preds = %134, %114
  br label %136

136:                                              ; preds = %135, %101
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %7, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %7, align 4
  br label %12

140:                                              ; preds = %12
  ret void
}

declare dso_local i32 @vivid_vbi_gen_cc_raw(%struct.v4l2_sliced_vbi_data*, i32*, i32) #1

declare dso_local i32 @vivid_vbi_gen_wss_raw(%struct.v4l2_sliced_vbi_data*, i32*, i32) #1

declare dso_local i32 @vivid_vbi_gen_teletext_raw(%struct.v4l2_sliced_vbi_data*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
