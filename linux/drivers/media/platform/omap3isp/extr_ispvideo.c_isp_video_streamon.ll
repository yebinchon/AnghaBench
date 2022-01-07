; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_streamon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispvideo.c_isp_video_streamon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.isp_video_fh = type { i32, %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.isp_video = type { i32, i32, i32, i32*, i32, %struct.TYPE_13__, i32, i32, %struct.TYPE_9__*, %struct.isp_pipeline }
%struct.TYPE_13__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_9__ = type { i32*, i32 }
%struct.isp_pipeline = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ISP_CLK_L3_ICK = common dso_local global i64 0, align 8
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i64 0, align 8
@ISP_PIPELINE_STREAM_OUTPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_IDLE_OUTPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM_INPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_IDLE_INPUT = common dso_local global i32 0, align 4
@ISP_PIPELINE_STREAM = common dso_local global i32 0, align 4
@V4L2_BUF_TYPE_VIDEO_OUTPUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @isp_video_streamon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp_video_streamon(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.isp_video_fh*, align 8
  %9 = alloca %struct.isp_video*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.isp_pipeline*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = call %struct.isp_video_fh* @to_isp_video_fh(i8* %14)
  store %struct.isp_video_fh* %15, %struct.isp_video_fh** %8, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = call %struct.isp_video* @video_drvdata(%struct.file* %16)
  store %struct.isp_video* %17, %struct.isp_video** %9, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %20 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %18, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %218

26:                                               ; preds = %3
  %27 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %28 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %27, i32 0, i32 2
  %29 = call i32 @mutex_lock(i32* %28)
  %30 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %31 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %38 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = call %struct.isp_pipeline* @to_isp_pipeline(%struct.TYPE_14__* %39)
  br label %44

41:                                               ; preds = %26
  %42 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %43 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %42, i32 0, i32 9
  br label %44

44:                                               ; preds = %41, %36
  %45 = phi %struct.isp_pipeline* [ %40, %36 ], [ %43, %41 ]
  store %struct.isp_pipeline* %45, %struct.isp_pipeline** %11, align 8
  %46 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %47 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %46, i32 0, i32 2
  %48 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %49 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %48, i32 0, i32 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = call i32 @media_entity_enum_init(i32* %47, i32* %51)
  store i32 %52, i32* %13, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %44
  br label %213

56:                                               ; preds = %44
  %57 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %58 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %57, i32 0, i32 8
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* @ISP_CLK_L3_ICK, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @clk_get_rate(i32 %64)
  %66 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %67 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %66, i32 0, i32 8
  store i32 %65, i32* %67, align 4
  %68 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %69 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %72 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %71, i32 0, i32 9
  store i32 %70, i32* %72, align 4
  %73 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %74 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %73, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %77 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %76, i32 0, i32 7
  %78 = call i32 @media_pipeline_start(%struct.TYPE_14__* %75, i32* %77)
  store i32 %78, i32* %13, align 4
  %79 = load i32, i32* %13, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %56
  br label %204

82:                                               ; preds = %56
  %83 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %84 = load %struct.isp_video_fh*, %struct.isp_video_fh** %8, align 8
  %85 = call i32 @isp_video_check_format(%struct.isp_video* %83, %struct.isp_video_fh* %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %199

89:                                               ; preds = %82
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %92 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load %struct.isp_video_fh*, %struct.isp_video_fh** %8, align 8
  %94 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %100 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %102 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %103 = call i32 @isp_video_get_graph_data(%struct.isp_video* %101, %struct.isp_pipeline* %102)
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %89
  br label %199

107:                                              ; preds = %89
  %108 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %109 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %118

114:                                              ; preds = %107
  %115 = load i32, i32* @ISP_PIPELINE_STREAM_OUTPUT, align 4
  %116 = load i32, i32* @ISP_PIPELINE_IDLE_OUTPUT, align 4
  %117 = or i32 %115, %116
  store i32 %117, i32* %10, align 4
  br label %122

118:                                              ; preds = %107
  %119 = load i32, i32* @ISP_PIPELINE_STREAM_INPUT, align 4
  %120 = load i32, i32* @ISP_PIPELINE_IDLE_INPUT, align 4
  %121 = or i32 %119, %120
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %118, %114
  %123 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %124 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %125 = call i32 @isp_video_check_external_subdevs(%struct.isp_video* %123, %struct.isp_pipeline* %124)
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %122
  br label %199

129:                                              ; preds = %122
  %130 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %131 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %130, i32 0, i32 0
  store i32 0, i32* %131, align 4
  %132 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %133 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %132, i32 0, i32 6
  %134 = load i64, i64* %12, align 8
  %135 = call i32 @spin_lock_irqsave(i32* %133, i64 %134)
  %136 = load i32, i32* @ISP_PIPELINE_STREAM, align 4
  %137 = xor i32 %136, -1
  %138 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %139 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %140, %137
  store i32 %141, i32* %139, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %144 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = or i32 %145, %142
  store i32 %146, i32* %144, align 4
  %147 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %148 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %147, i32 0, i32 6
  %149 = load i64, i64* %12, align 8
  %150 = call i32 @spin_unlock_irqrestore(i32* %148, i64 %149)
  %151 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %152 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = load i64, i64* @V4L2_BUF_TYPE_VIDEO_OUTPUT, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %163

157:                                              ; preds = %129
  %158 = load %struct.isp_video_fh*, %struct.isp_video_fh** %8, align 8
  %159 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %162 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %161, i32 0, i32 5
  store i32 %160, i32* %162, align 4
  br label %163

163:                                              ; preds = %157, %129
  %164 = load %struct.isp_video_fh*, %struct.isp_video_fh** %8, align 8
  %165 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %164, i32 0, i32 0
  %166 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %167 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %166, i32 0, i32 3
  store i32* %165, i32** %167, align 8
  %168 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %169 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %168, i32 0, i32 4
  %170 = call i32 @INIT_LIST_HEAD(i32* %169)
  %171 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %172 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %171, i32 0, i32 4
  %173 = call i32 @atomic_set(i32* %172, i32 -1)
  %174 = load %struct.isp_video_fh*, %struct.isp_video_fh** %8, align 8
  %175 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %181 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %180, i32 0, i32 3
  store i32 %179, i32* %181, align 4
  %182 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %183 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %182, i32 0, i32 6
  %184 = call i32 @mutex_lock(i32* %183)
  %185 = load %struct.isp_video_fh*, %struct.isp_video_fh** %8, align 8
  %186 = getelementptr inbounds %struct.isp_video_fh, %struct.isp_video_fh* %185, i32 0, i32 0
  %187 = load i32, i32* %7, align 4
  %188 = call i32 @vb2_streamon(i32* %186, i32 %187)
  store i32 %188, i32* %13, align 4
  %189 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %190 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %189, i32 0, i32 6
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load i32, i32* %13, align 4
  %193 = icmp slt i32 %192, 0
  br i1 %193, label %194, label %195

194:                                              ; preds = %163
  br label %199

195:                                              ; preds = %163
  %196 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %197 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %196, i32 0, i32 2
  %198 = call i32 @mutex_unlock(i32* %197)
  store i32 0, i32* %4, align 4
  br label %218

199:                                              ; preds = %194, %128, %106, %88
  %200 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %201 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 0
  %203 = call i32 @media_pipeline_stop(%struct.TYPE_14__* %202)
  br label %204

204:                                              ; preds = %199, %81
  %205 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %206 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %205, i32 0, i32 4
  %207 = call i32 @INIT_LIST_HEAD(i32* %206)
  %208 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %209 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %208, i32 0, i32 3
  store i32* null, i32** %209, align 8
  %210 = load %struct.isp_pipeline*, %struct.isp_pipeline** %11, align 8
  %211 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %210, i32 0, i32 2
  %212 = call i32 @media_entity_enum_cleanup(i32* %211)
  br label %213

213:                                              ; preds = %204, %55
  %214 = load %struct.isp_video*, %struct.isp_video** %9, align 8
  %215 = getelementptr inbounds %struct.isp_video, %struct.isp_video* %214, i32 0, i32 2
  %216 = call i32 @mutex_unlock(i32* %215)
  %217 = load i32, i32* %13, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %213, %195, %23
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local %struct.isp_video_fh* @to_isp_video_fh(i8*) #1

declare dso_local %struct.isp_video* @video_drvdata(%struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(%struct.TYPE_14__*) #1

declare dso_local i32 @media_entity_enum_init(i32*, i32*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @media_pipeline_start(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @isp_video_check_format(%struct.isp_video*, %struct.isp_video_fh*) #1

declare dso_local i32 @isp_video_get_graph_data(%struct.isp_video*, %struct.isp_pipeline*) #1

declare dso_local i32 @isp_video_check_external_subdevs(%struct.isp_video*, %struct.isp_pipeline*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @vb2_streamon(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @media_pipeline_stop(%struct.TYPE_14__*) #1

declare dso_local i32 @media_entity_enum_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
