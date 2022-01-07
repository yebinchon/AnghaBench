; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_vp8_if.c_vp8_enc_alloc_work_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_vp8_if.c_vp8_enc_alloc_work_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_vp8_inst = type { %struct.TYPE_6__*, %struct.TYPE_5__, i32, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.venc_vp8_vpu_buf* }
%struct.venc_vp8_vpu_buf = type { i64, i32, i32 }

@VENC_VP8_VPU_WORK_BUF_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cannot alloc work_bufs[%d]\00", align 1
@VENC_VP8_VPU_WORK_BUF_RC_CODE = common dso_local global i32 0, align 4
@VENC_VP8_VPU_WORK_BUF_RC_CODE2 = common dso_local global i32 0, align 4
@VENC_VP8_VPU_WORK_BUF_RC_CODE3 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"work_bufs[%d] va=0x%p,iova=%pad,size=%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_vp8_inst*)* @vp8_enc_alloc_work_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_enc_alloc_work_buf(%struct.venc_vp8_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venc_vp8_inst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.venc_vp8_vpu_buf*, align 8
  %7 = alloca i8*, align 8
  store %struct.venc_vp8_inst* %0, %struct.venc_vp8_inst** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %9 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %8, i32 0, i32 3
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load %struct.venc_vp8_vpu_buf*, %struct.venc_vp8_vpu_buf** %11, align 8
  store %struct.venc_vp8_vpu_buf* %12, %struct.venc_vp8_vpu_buf** %6, align 8
  %13 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %14 = call i32 @mtk_vcodec_debug_enter(%struct.venc_vp8_inst* %13)
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %138, %1
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @VENC_VP8_VPU_WORK_BUF_MAX, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %141

19:                                               ; preds = %15
  %20 = load %struct.venc_vp8_vpu_buf*, %struct.venc_vp8_vpu_buf** %6, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.venc_vp8_vpu_buf, %struct.venc_vp8_vpu_buf* %20, i64 %22
  %24 = getelementptr inbounds %struct.venc_vp8_vpu_buf, %struct.venc_vp8_vpu_buf* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %138

28:                                               ; preds = %19
  %29 = load %struct.venc_vp8_vpu_buf*, %struct.venc_vp8_vpu_buf** %6, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.venc_vp8_vpu_buf, %struct.venc_vp8_vpu_buf* %29, i64 %31
  %33 = getelementptr inbounds %struct.venc_vp8_vpu_buf, %struct.venc_vp8_vpu_buf* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %36 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %35, i32 0, i32 0
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = load i32, i32* %4, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  store i64 %34, i64* %41, align 8
  %42 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %43 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %46 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i64 %49
  %51 = call i32 @mtk_vcodec_mem_alloc(i32 %44, %struct.TYPE_6__* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %28
  %55 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @mtk_vcodec_err(%struct.venc_vp8_inst* %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %56)
  br label %145

58:                                               ; preds = %28
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @VENC_VP8_VPU_WORK_BUF_RC_CODE, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %70, label %62

62:                                               ; preds = %58
  %63 = load i32, i32* %4, align 4
  %64 = load i32, i32* @VENC_VP8_VPU_WORK_BUF_RC_CODE2, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %70, label %66

66:                                               ; preds = %62
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @VENC_VP8_VPU_WORK_BUF_RC_CODE3, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %66, %62, %58
  %71 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %72 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.venc_vp8_vpu_buf*, %struct.venc_vp8_vpu_buf** %6, align 8
  %76 = load i32, i32* %4, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.venc_vp8_vpu_buf, %struct.venc_vp8_vpu_buf* %75, i64 %77
  %79 = getelementptr inbounds %struct.venc_vp8_vpu_buf, %struct.venc_vp8_vpu_buf* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i8* @vpu_mapping_dm_addr(i32 %74, i32 %80)
  store i8* %81, i8** %7, align 8
  %82 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %83 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load i8*, i8** %7, align 8
  %91 = load %struct.venc_vp8_vpu_buf*, %struct.venc_vp8_vpu_buf** %6, align 8
  %92 = load i32, i32* %4, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.venc_vp8_vpu_buf, %struct.venc_vp8_vpu_buf* %91, i64 %93
  %95 = getelementptr inbounds %struct.venc_vp8_vpu_buf, %struct.venc_vp8_vpu_buf* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @memcpy(i32 %89, i8* %90, i64 %96)
  br label %98

98:                                               ; preds = %70, %66
  %99 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %100 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %99, i32 0, i32 0
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.venc_vp8_vpu_buf*, %struct.venc_vp8_vpu_buf** %6, align 8
  %108 = load i32, i32* %4, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.venc_vp8_vpu_buf, %struct.venc_vp8_vpu_buf* %107, i64 %109
  %111 = getelementptr inbounds %struct.venc_vp8_vpu_buf, %struct.venc_vp8_vpu_buf* %110, i32 0, i32 1
  store i32 %106, i32* %111, align 8
  %112 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %115 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %114, i32 0, i32 0
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %123 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %4, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i64 %126
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %130 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %129, i32 0, i32 0
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %130, align 8
  %132 = load i32, i32* %4, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = call i32 @mtk_vcodec_debug(%struct.venc_vp8_inst* %112, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %113, i32 %121, i32* %128, i64 %136)
  br label %138

138:                                              ; preds = %98, %27
  %139 = load i32, i32* %4, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %4, align 4
  br label %15

141:                                              ; preds = %15
  %142 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %143 = call i32 @mtk_vcodec_debug_leave(%struct.venc_vp8_inst* %142)
  %144 = load i32, i32* %5, align 4
  store i32 %144, i32* %2, align 4
  br label %149

145:                                              ; preds = %54
  %146 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %3, align 8
  %147 = call i32 @vp8_enc_free_work_buf(%struct.venc_vp8_inst* %146)
  %148 = load i32, i32* %5, align 4
  store i32 %148, i32* %2, align 4
  br label %149

149:                                              ; preds = %145, %141
  %150 = load i32, i32* %2, align 4
  ret i32 %150
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_vp8_inst*) #1

declare dso_local i32 @mtk_vcodec_mem_alloc(i32, %struct.TYPE_6__*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_vp8_inst*, i8*, i32) #1

declare dso_local i8* @vpu_mapping_dm_addr(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i64) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_vp8_inst*, i8*, i32, i32, i32*, i64) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_vp8_inst*) #1

declare dso_local i32 @vp8_enc_free_work_buf(%struct.venc_vp8_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
