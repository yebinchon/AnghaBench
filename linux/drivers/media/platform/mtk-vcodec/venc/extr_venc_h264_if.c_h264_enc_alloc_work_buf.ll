; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_alloc_work_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_alloc_work_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_h264_inst = type { %struct.TYPE_6__, i32, %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i64, i8* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.venc_h264_vpu_buf* }
%struct.venc_h264_vpu_buf = type { i32, i64, i32 }

@VENC_H264_VPU_WORK_BUF_MAX = common dso_local global i32 0, align 4
@VENC_H264_VPU_WORK_BUF_SKIP_FRAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot allocate buf %d\00", align 1
@VENC_H264_VPU_WORK_BUF_RC_CODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"work_buf[%d] va=0x%p iova=%pad size=%zu\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"cannot allocate pps_buf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_h264_inst*)* @h264_enc_alloc_work_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_enc_alloc_work_buf(%struct.venc_h264_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venc_h264_inst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.venc_h264_vpu_buf*, align 8
  %7 = alloca i8*, align 8
  store %struct.venc_h264_inst* %0, %struct.venc_h264_inst** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %9 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %8, i32 0, i32 4
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.venc_h264_vpu_buf*, %struct.venc_h264_vpu_buf** %11, align 8
  store %struct.venc_h264_vpu_buf* %12, %struct.venc_h264_vpu_buf** %6, align 8
  %13 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %14 = call i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst* %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %152, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @VENC_H264_VPU_WORK_BUF_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %155

19:                                               ; preds = %15
  %20 = load %struct.venc_h264_vpu_buf*, %struct.venc_h264_vpu_buf** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.venc_h264_vpu_buf, %struct.venc_h264_vpu_buf* %20, i64 %22
  %24 = getelementptr inbounds %struct.venc_h264_vpu_buf, %struct.venc_h264_vpu_buf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %27 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i32 %25, i32* %32, align 8
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @VENC_H264_VPU_WORK_BUF_SKIP_FRAME, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %62

36:                                               ; preds = %19
  %37 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %38 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.venc_h264_vpu_buf*, %struct.venc_h264_vpu_buf** %6, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.venc_h264_vpu_buf, %struct.venc_h264_vpu_buf* %41, i64 %43
  %45 = getelementptr inbounds %struct.venc_h264_vpu_buf, %struct.venc_h264_vpu_buf* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = call i8* @vpu_mapping_dm_addr(i32 %40, i32 %46)
  %48 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %49 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %48, i32 0, i32 2
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 2
  store i8* %47, i8** %54, align 8
  %55 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %56 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %55, i32 0, i32 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  store i64 0, i64* %61, align 8
  br label %112

62:                                               ; preds = %19
  %63 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %64 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %67 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %66, i32 0, i32 2
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i64 %70
  %72 = call i32 @mtk_vcodec_mem_alloc(i32 %65, %struct.TYPE_6__* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %62
  %76 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %77 = load i32, i32* %4, align 4
  %78 = call i32 (%struct.venc_h264_inst*, i8*, ...) @mtk_vcodec_err(%struct.venc_h264_inst* %76, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %174

79:                                               ; preds = %62
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @VENC_H264_VPU_WORK_BUF_RC_CODE, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %111

83:                                               ; preds = %79
  %84 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %85 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %84, i32 0, i32 3
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load %struct.venc_h264_vpu_buf*, %struct.venc_h264_vpu_buf** %6, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.venc_h264_vpu_buf, %struct.venc_h264_vpu_buf* %88, i64 %90
  %92 = getelementptr inbounds %struct.venc_h264_vpu_buf, %struct.venc_h264_vpu_buf* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = call i8* @vpu_mapping_dm_addr(i32 %87, i32 %93)
  store i8* %94, i8** %7, align 8
  %95 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %96 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %95, i32 0, i32 2
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 2
  %102 = load i8*, i8** %101, align 8
  %103 = load i8*, i8** %7, align 8
  %104 = load %struct.venc_h264_vpu_buf*, %struct.venc_h264_vpu_buf** %6, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.venc_h264_vpu_buf, %struct.venc_h264_vpu_buf* %104, i64 %106
  %108 = getelementptr inbounds %struct.venc_h264_vpu_buf, %struct.venc_h264_vpu_buf* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @memcpy(i8* %102, i8* %103, i32 %109)
  br label %111

111:                                              ; preds = %83, %79
  br label %112

112:                                              ; preds = %111, %36
  %113 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %114 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %113, i32 0, i32 2
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = load i32, i32* %4, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.venc_h264_vpu_buf*, %struct.venc_h264_vpu_buf** %6, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.venc_h264_vpu_buf, %struct.venc_h264_vpu_buf* %121, i64 %123
  %125 = getelementptr inbounds %struct.venc_h264_vpu_buf, %struct.venc_h264_vpu_buf* %124, i32 0, i32 1
  store i64 %120, i64* %125, align 8
  %126 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %127 = load i32, i32* %4, align 4
  %128 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %129 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %128, i32 0, i32 2
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %129, align 8
  %131 = load i32, i32* %4, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %137 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %136, i32 0, i32 2
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = load i32, i32* %4, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 1
  %143 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %144 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %143, i32 0, i32 2
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load i32, i32* %4, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = call i32 @mtk_vcodec_debug(%struct.venc_h264_inst* %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %127, i8* %135, i64* %142, i32 %150)
  br label %152

152:                                              ; preds = %112
  %153 = load i32, i32* %4, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %4, align 4
  br label %15

155:                                              ; preds = %15
  %156 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %157 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  store i32 128, i32* %158, align 8
  %159 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %160 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 8
  %162 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %163 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %162, i32 0, i32 0
  %164 = call i32 @mtk_vcodec_mem_alloc(i32 %161, %struct.TYPE_6__* %163)
  store i32 %164, i32* %5, align 4
  %165 = load i32, i32* %5, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %170

167:                                              ; preds = %155
  %168 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %169 = call i32 (%struct.venc_h264_inst*, i8*, ...) @mtk_vcodec_err(%struct.venc_h264_inst* %168, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %174

170:                                              ; preds = %155
  %171 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %172 = call i32 @mtk_vcodec_debug_leave(%struct.venc_h264_inst* %171)
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %178

174:                                              ; preds = %167, %75
  %175 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %3, align 8
  %176 = call i32 @h264_enc_free_work_buf(%struct.venc_h264_inst* %175)
  %177 = load i32, i32* %5, align 4
  store i32 %177, i32* %2, align 4
  br label %178

178:                                              ; preds = %174, %170
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst*) #1

declare dso_local i8* @vpu_mapping_dm_addr(i32, i32) #1

declare dso_local i32 @mtk_vcodec_mem_alloc(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_h264_inst*, i8*, ...) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_h264_inst*, i8*, i32, i8*, i64*, i32) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_h264_inst*) #1

declare dso_local i32 @h264_enc_free_work_buf(%struct.venc_h264_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
