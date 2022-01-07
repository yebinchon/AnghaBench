; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_decode_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/coda/extr_coda-common.c_coda_decode_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.coda_ctx = type { %struct.TYPE_16__*, i32, %struct.TYPE_15__*, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }

@coda_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_HIGH = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_H264_PROFILE_MAIN = common dso_local global i32 0, align 4
@V4L2_CTRL_FLAG_READ_ONLY = common dso_local global i32 0, align 4
@CODA_HX4 = common dso_local global i64 0, align 8
@CODA_7541 = common dso_local global i64 0, align 8
@V4L2_MPEG_VIDEO_H264_LEVEL_4_0 = common dso_local global i32 0, align 4
@CODA_960 = common dso_local global i64 0, align 8
@V4L2_MPEG_VIDEO_H264_LEVEL_4_1 = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_H264_LEVEL = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG2_PROFILE_HIGH = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG2_LEVEL_HIGH = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY = common dso_local global i32 0, align 4
@V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL = common dso_local global i32 0, align 4
@V4L2_MPEG_VIDEO_MPEG4_LEVEL_5 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.coda_ctx*)* @coda_decode_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coda_decode_ctrls(%struct.coda_ctx* %0) #0 {
  %2 = alloca %struct.coda_ctx*, align 8
  %3 = alloca i32, align 4
  store %struct.coda_ctx* %0, %struct.coda_ctx** %2, align 8
  %4 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %5 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %4, i32 0, i32 1
  %6 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_PROFILE, align 4
  %7 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, align 4
  %8 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_BASELINE, align 4
  %9 = shl i32 1, %8
  %10 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_MAIN, align 4
  %11 = shl i32 1, %10
  %12 = or i32 %9, %11
  %13 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, align 4
  %14 = shl i32 1, %13
  %15 = or i32 %12, %14
  %16 = xor i32 %15, -1
  %17 = load i32, i32* @V4L2_MPEG_VIDEO_H264_PROFILE_HIGH, align 4
  %18 = call i8* @v4l2_ctrl_new_std_menu(i32* %5, i32* @coda_ctrl_ops, i32 %6, i32 %7, i32 %16, i32 %17)
  %19 = bitcast i8* %18 to %struct.TYPE_9__*
  %20 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %21 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %20, i32 0, i32 7
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %21, align 8
  %22 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %23 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %22, i32 0, i32 7
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %23, align 8
  %25 = icmp ne %struct.TYPE_9__* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %1
  %27 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %28 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %29 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %28, i32 0, i32 7
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %27
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %26, %1
  %35 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %35, i32 0, i32 6
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @CODA_HX4, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %54, label %44

44:                                               ; preds = %34
  %45 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %46 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %45, i32 0, i32 6
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @CODA_7541, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %44, %34
  %55 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_0, align 4
  store i32 %55, i32* %3, align 4
  br label %70

56:                                               ; preds = %44
  %57 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %58 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %57, i32 0, i32 6
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @CODA_960, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* @V4L2_MPEG_VIDEO_H264_LEVEL_4_1, align 4
  store i32 %67, i32* %3, align 4
  br label %69

68:                                               ; preds = %56
  br label %180

69:                                               ; preds = %66
  br label %70

70:                                               ; preds = %69, %54
  %71 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %72 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %71, i32 0, i32 1
  %73 = load i32, i32* @V4L2_CID_MPEG_VIDEO_H264_LEVEL, align 4
  %74 = load i32, i32* %3, align 4
  %75 = load i32, i32* %3, align 4
  %76 = call i8* @v4l2_ctrl_new_std_menu(i32* %72, i32* @coda_ctrl_ops, i32 %73, i32 %74, i32 0, i32 %75)
  %77 = bitcast i8* %76 to %struct.TYPE_12__*
  %78 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %79 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %78, i32 0, i32 5
  store %struct.TYPE_12__* %77, %struct.TYPE_12__** %79, align 8
  %80 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %81 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %80, i32 0, i32 5
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %81, align 8
  %83 = icmp ne %struct.TYPE_12__* %82, null
  br i1 %83, label %84, label %92

84:                                               ; preds = %70
  %85 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %86 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %87 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %86, i32 0, i32 5
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %85
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %84, %70
  %93 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %94 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %93, i32 0, i32 1
  %95 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG2_PROFILE, align 4
  %96 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG2_PROFILE_HIGH, align 4
  %97 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG2_PROFILE_HIGH, align 4
  %98 = call i8* @v4l2_ctrl_new_std_menu(i32* %94, i32* @coda_ctrl_ops, i32 %95, i32 %96, i32 0, i32 %97)
  %99 = bitcast i8* %98 to %struct.TYPE_13__*
  %100 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %101 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %100, i32 0, i32 4
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %101, align 8
  %102 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %103 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %102, i32 0, i32 4
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %103, align 8
  %105 = icmp ne %struct.TYPE_13__* %104, null
  br i1 %105, label %106, label %114

106:                                              ; preds = %92
  %107 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %108 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %109 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %108, i32 0, i32 4
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = or i32 %112, %107
  store i32 %113, i32* %111, align 4
  br label %114

114:                                              ; preds = %106, %92
  %115 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %116 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %115, i32 0, i32 1
  %117 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG2_LEVEL, align 4
  %118 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG2_LEVEL_HIGH, align 4
  %119 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG2_LEVEL_HIGH, align 4
  %120 = call i8* @v4l2_ctrl_new_std_menu(i32* %116, i32* @coda_ctrl_ops, i32 %117, i32 %118, i32 0, i32 %119)
  %121 = bitcast i8* %120 to %struct.TYPE_14__*
  %122 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %123 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %122, i32 0, i32 3
  store %struct.TYPE_14__* %121, %struct.TYPE_14__** %123, align 8
  %124 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %125 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %124, i32 0, i32 3
  %126 = load %struct.TYPE_14__*, %struct.TYPE_14__** %125, align 8
  %127 = icmp ne %struct.TYPE_14__* %126, null
  br i1 %127, label %128, label %136

128:                                              ; preds = %114
  %129 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %130 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %131 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %130, i32 0, i32 3
  %132 = load %struct.TYPE_14__*, %struct.TYPE_14__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 4
  br label %136

136:                                              ; preds = %128, %114
  %137 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %138 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %137, i32 0, i32 1
  %139 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_PROFILE, align 4
  %140 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY, align 4
  %141 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_PROFILE_ADVANCED_CODING_EFFICIENCY, align 4
  %142 = call i8* @v4l2_ctrl_new_std_menu(i32* %138, i32* @coda_ctrl_ops, i32 %139, i32 %140, i32 0, i32 %141)
  %143 = bitcast i8* %142 to %struct.TYPE_15__*
  %144 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %145 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %144, i32 0, i32 2
  store %struct.TYPE_15__* %143, %struct.TYPE_15__** %145, align 8
  %146 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %147 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %146, i32 0, i32 2
  %148 = load %struct.TYPE_15__*, %struct.TYPE_15__** %147, align 8
  %149 = icmp ne %struct.TYPE_15__* %148, null
  br i1 %149, label %150, label %158

150:                                              ; preds = %136
  %151 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %152 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %153 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %152, i32 0, i32 2
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %151
  store i32 %157, i32* %155, align 4
  br label %158

158:                                              ; preds = %150, %136
  %159 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %160 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %159, i32 0, i32 1
  %161 = load i32, i32* @V4L2_CID_MPEG_VIDEO_MPEG4_LEVEL, align 4
  %162 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_LEVEL_5, align 4
  %163 = load i32, i32* @V4L2_MPEG_VIDEO_MPEG4_LEVEL_5, align 4
  %164 = call i8* @v4l2_ctrl_new_std_menu(i32* %160, i32* @coda_ctrl_ops, i32 %161, i32 %162, i32 0, i32 %163)
  %165 = bitcast i8* %164 to %struct.TYPE_16__*
  %166 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %167 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %166, i32 0, i32 0
  store %struct.TYPE_16__* %165, %struct.TYPE_16__** %167, align 8
  %168 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %169 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %168, i32 0, i32 0
  %170 = load %struct.TYPE_16__*, %struct.TYPE_16__** %169, align 8
  %171 = icmp ne %struct.TYPE_16__* %170, null
  br i1 %171, label %172, label %180

172:                                              ; preds = %158
  %173 = load i32, i32* @V4L2_CTRL_FLAG_READ_ONLY, align 4
  %174 = load %struct.coda_ctx*, %struct.coda_ctx** %2, align 8
  %175 = getelementptr inbounds %struct.coda_ctx, %struct.coda_ctx* %174, i32 0, i32 0
  %176 = load %struct.TYPE_16__*, %struct.TYPE_16__** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = or i32 %178, %173
  store i32 %179, i32* %177, align 4
  br label %180

180:                                              ; preds = %68, %172, %158
  ret void
}

declare dso_local i8* @v4l2_ctrl_new_std_menu(i32*, i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
