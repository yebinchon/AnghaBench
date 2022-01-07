; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-h264.c_hva_h264_fill_sei_nal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/sti/hva/extr_hva-h264.c_hva_h264_fill_sei_nal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hva_ctx = type { i32 }
%struct.device = type { i32 }
%struct.hva_h264_stereo_video_sei = type { i32, i32, i32, i32, i32, i32 }

@__const.hva_h264_fill_sei_nal.start = private unnamed_addr constant [4 x i32] [i32 0, i32 0, i32 0, i32 1], align 16
@NALU_TYPE_SEI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s   sei nal type not supported %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hva_ctx*, i32, i32*, i32*)* @hva_h264_fill_sei_nal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hva_h264_fill_sei_nal(%struct.hva_ctx* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hva_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca %struct.hva_h264_stereo_video_sei, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hva_ctx* %0, %struct.hva_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %15 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %16 = call %struct.device* @ctx_to_dev(%struct.hva_ctx* %15)
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = bitcast [4 x i32]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 16 bitcast ([4 x i32]* @__const.hva_h264_fill_sei_nal.start to i8*), i64 16, i1 false)
  store i32 7, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %18 = load i32*, i32** %8, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %18, i64 %21
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %24 = call i32 @memcpy(i32* %22, i32* %23, i32 16)
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 16
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %25, align 4
  %30 = load i32, i32* @NALU_TYPE_SEI, align 4
  %31 = load i32*, i32** %8, align 8
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32 %30, i32* %35, align 4
  %36 = load i32*, i32** %9, align 8
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32*, i32** %8, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* %41, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  store i32 %39, i32* %44, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* %7, align 4
  switch i32 %48, label %125 [
    i32 128, label %49
    i32 131, label %124
    i32 129, label %124
    i32 130, label %124
  ]

49:                                               ; preds = %4
  %50 = call i32 @memset(%struct.hva_h264_stereo_video_sei* %12, i32 0, i32 24)
  %51 = getelementptr inbounds %struct.hva_h264_stereo_video_sei, %struct.hva_h264_stereo_video_sei* %12, i32 0, i32 0
  store i32 1, i32* %51, align 4
  %52 = getelementptr inbounds %struct.hva_h264_stereo_video_sei, %struct.hva_h264_stereo_video_sei* %12, i32 0, i32 1
  store i32 1, i32* %52, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = load i32*, i32** %9, align 8
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %53, i64 %56
  store i32 1, i32* %57, align 4
  %58 = load i32*, i32** %9, align 8
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = getelementptr inbounds %struct.hva_h264_stereo_video_sei, %struct.hva_h264_stereo_video_sei* %12, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %13, align 4
  %64 = add nsw i32 %63, -1
  store i32 %64, i32* %13, align 4
  %65 = shl i32 %62, %63
  store i32 %65, i32* %14, align 4
  %66 = getelementptr inbounds %struct.hva_h264_stereo_video_sei, %struct.hva_h264_stereo_video_sei* %12, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %49
  %70 = getelementptr inbounds %struct.hva_h264_stereo_video_sei, %struct.hva_h264_stereo_video_sei* %12, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %13, align 4
  %74 = shl i32 %71, %72
  %75 = load i32, i32* %14, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %14, align 4
  br label %92

77:                                               ; preds = %49
  %78 = getelementptr inbounds %struct.hva_h264_stereo_video_sei, %struct.hva_h264_stereo_video_sei* %12, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, -1
  store i32 %81, i32* %13, align 4
  %82 = shl i32 %79, %80
  %83 = load i32, i32* %14, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %14, align 4
  %85 = getelementptr inbounds %struct.hva_h264_stereo_video_sei, %struct.hva_h264_stereo_video_sei* %12, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* %13, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %13, align 4
  %89 = shl i32 %86, %87
  %90 = load i32, i32* %14, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %14, align 4
  br label %92

92:                                               ; preds = %77, %69
  %93 = getelementptr inbounds %struct.hva_h264_stereo_video_sei, %struct.hva_h264_stereo_video_sei* %12, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* %13, align 4
  %97 = shl i32 %94, %95
  %98 = load i32, i32* %14, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %14, align 4
  %100 = getelementptr inbounds %struct.hva_h264_stereo_video_sei, %struct.hva_h264_stereo_video_sei* %12, i32 0, i32 5
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %13, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %13, align 4
  %104 = shl i32 %101, %102
  %105 = load i32, i32* %14, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32*, i32** %8, align 8
  %109 = load i32*, i32** %9, align 8
  %110 = load i32, i32* %109, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32 %107, i32* %112, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  %116 = load i32*, i32** %8, align 8
  %117 = load i32*, i32** %9, align 8
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %116, i64 %119
  store i32 128, i32* %120, align 4
  %121 = load i32*, i32** %9, align 8
  %122 = load i32, i32* %121, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %121, align 4
  store i32 0, i32* %5, align 4
  br label %134

124:                                              ; preds = %4, %4, %4
  br label %125

125:                                              ; preds = %4, %124
  %126 = load %struct.device*, %struct.device** %10, align 8
  %127 = load %struct.hva_ctx*, %struct.hva_ctx** %6, align 8
  %128 = getelementptr inbounds %struct.hva_ctx, %struct.hva_ctx* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %7, align 4
  %131 = call i32 @dev_err(%struct.device* %126, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130)
  %132 = load i32, i32* @EINVAL, align 4
  %133 = sub nsw i32 0, %132
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %125, %92
  %135 = load i32, i32* %5, align 4
  ret i32 %135
}

declare dso_local %struct.device* @ctx_to_dev(%struct.hva_ctx*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(%struct.hva_h264_stereo_video_sei*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
