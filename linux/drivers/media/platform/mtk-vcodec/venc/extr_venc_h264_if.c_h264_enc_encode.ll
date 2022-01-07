; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_frm_buf = type { i32 }
%struct.mtk_vcodec_mem = type { i32, i32, i32 }
%struct.venc_done_result = type { i32, i32 }
%struct.venc_h264_inst = type { %struct.TYPE_3__, i32, %struct.mtk_vcodec_ctx* }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_vcodec_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"opt %d ->\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"h264_encode_frame prepend SPS/PPS\00", align 1
@H264_FILLER_MARKER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"hdr %d filler %d frame %d bs %d\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"venc_start_opt %d not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"opt %d <-\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, %struct.venc_done_result*)* @h264_enc_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_enc_encode(i8* %0, i32 %1, %struct.venc_frm_buf* %2, %struct.mtk_vcodec_mem* %3, %struct.venc_done_result* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.venc_frm_buf*, align 8
  %9 = alloca %struct.mtk_vcodec_mem*, align 8
  %10 = alloca %struct.venc_done_result*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.venc_h264_inst*, align 8
  %13 = alloca %struct.mtk_vcodec_ctx*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mtk_vcodec_mem, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.venc_frm_buf* %2, %struct.venc_frm_buf** %8, align 8
  store %struct.mtk_vcodec_mem* %3, %struct.mtk_vcodec_mem** %9, align 8
  store %struct.venc_done_result* %4, %struct.venc_done_result** %10, align 8
  store i32 0, i32* %11, align 4
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to %struct.venc_h264_inst*
  store %struct.venc_h264_inst* %23, %struct.venc_h264_inst** %12, align 8
  %24 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %25 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %24, i32 0, i32 2
  %26 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %25, align 8
  store %struct.mtk_vcodec_ctx* %26, %struct.mtk_vcodec_ctx** %13, align 8
  %27 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 (%struct.venc_h264_inst*, i8*, ...) @mtk_vcodec_debug(%struct.venc_h264_inst* %27, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %28)
  %30 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %13, align 8
  %31 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @enable_irq(i32 %34)
  %36 = load i32, i32* %7, align 4
  switch i32 %36, label %161 [
    i32 128, label %37
    i32 129, label %50
  ]

37:                                               ; preds = %5
  %38 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %39 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %9, align 8
  %40 = call i32 @h264_encode_header(%struct.venc_h264_inst* %38, %struct.mtk_vcodec_mem* %39, i32* %14)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %168

44:                                               ; preds = %37
  %45 = load i32, i32* %14, align 4
  %46 = load %struct.venc_done_result*, %struct.venc_done_result** %10, align 8
  %47 = getelementptr inbounds %struct.venc_done_result, %struct.venc_done_result* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  %48 = load %struct.venc_done_result*, %struct.venc_done_result** %10, align 8
  %49 = getelementptr inbounds %struct.venc_done_result, %struct.venc_done_result* %48, i32 0, i32 1
  store i32 0, i32* %49, align 4
  br label %167

50:                                               ; preds = %5
  store i32 0, i32* %17, align 4
  store i32 128, i32* %18, align 4
  %51 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %52 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %72, label %55

55:                                               ; preds = %50
  %56 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %57 = load %struct.venc_frm_buf*, %struct.venc_frm_buf** %8, align 8
  %58 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %9, align 8
  %59 = load %struct.venc_done_result*, %struct.venc_done_result** %10, align 8
  %60 = getelementptr inbounds %struct.venc_done_result, %struct.venc_done_result* %59, i32 0, i32 0
  %61 = call i32 @h264_encode_frame(%struct.venc_h264_inst* %56, %struct.venc_frm_buf* %57, %struct.mtk_vcodec_mem* %58, i32* %60)
  store i32 %61, i32* %11, align 4
  %62 = load i32, i32* %11, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %168

65:                                               ; preds = %55
  %66 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %67 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.venc_done_result*, %struct.venc_done_result** %10, align 8
  %71 = getelementptr inbounds %struct.venc_done_result, %struct.venc_done_result* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  br label %167

72:                                               ; preds = %50
  %73 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %74 = call i32 (%struct.venc_h264_inst*, i8*, ...) @mtk_vcodec_debug(%struct.venc_h264_inst* %73, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %75 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %76 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %9, align 8
  %77 = call i32 @h264_encode_header(%struct.venc_h264_inst* %75, %struct.mtk_vcodec_mem* %76, i32* %20)
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %168

81:                                               ; preds = %72
  %82 = load i32, i32* %20, align 4
  store i32 %82, i32* %15, align 4
  %83 = load i32, i32* %15, align 4
  %84 = and i32 %83, 127
  store i32 %84, i32* %16, align 4
  %85 = load i32, i32* %16, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = load i32, i32* %16, align 4
  %89 = sub nsw i32 128, %88
  store i32 %89, i32* %17, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @H264_FILLER_MARKER_SIZE, align 4
  %92 = add nsw i32 %90, %91
  %93 = icmp sgt i32 %92, 128
  br i1 %93, label %94, label %97

94:                                               ; preds = %87
  %95 = load i32, i32* %17, align 4
  %96 = add nsw i32 %95, 128
  store i32 %96, i32* %17, align 4
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %99 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %9, align 8
  %100 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %101, %102
  %104 = load i32, i32* %17, align 4
  %105 = call i32 @h264_encode_filler(%struct.venc_h264_inst* %98, i32 %103, i32 %104)
  br label %106

106:                                              ; preds = %97, %81
  %107 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %9, align 8
  %108 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %15, align 4
  %111 = add nsw i32 %109, %110
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %111, %112
  %114 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %19, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  %115 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %9, align 8
  %116 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* %15, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %119, %120
  %122 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %19, i32 0, i32 1
  store i32 %121, i32* %122, align 4
  %123 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %9, align 8
  %124 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %15, align 4
  %127 = load i32, i32* %17, align 4
  %128 = add nsw i32 %126, %127
  %129 = sub nsw i32 %125, %128
  %130 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %19, i32 0, i32 0
  store i32 %129, i32* %130, align 4
  %131 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %132 = load %struct.venc_frm_buf*, %struct.venc_frm_buf** %8, align 8
  %133 = call i32 @h264_encode_frame(%struct.venc_h264_inst* %131, %struct.venc_frm_buf* %132, %struct.mtk_vcodec_mem* %19, i32* %21)
  store i32 %133, i32* %11, align 4
  %134 = load i32, i32* %11, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %106
  br label %168

137:                                              ; preds = %106
  %138 = load i32, i32* %15, align 4
  %139 = load i32, i32* %17, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %21, align 4
  %142 = add i32 %140, %141
  %143 = load %struct.venc_done_result*, %struct.venc_done_result** %10, align 8
  %144 = getelementptr inbounds %struct.venc_done_result, %struct.venc_done_result* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  %145 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %146 = load i32, i32* %15, align 4
  %147 = load i32, i32* %17, align 4
  %148 = load i32, i32* %21, align 4
  %149 = load %struct.venc_done_result*, %struct.venc_done_result** %10, align 8
  %150 = getelementptr inbounds %struct.venc_done_result, %struct.venc_done_result* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i32 (%struct.venc_h264_inst*, i8*, ...) @mtk_vcodec_debug(%struct.venc_h264_inst* %145, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %146, i32 %147, i32 %148, i32 %151)
  %153 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %154 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  %155 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %156 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.venc_done_result*, %struct.venc_done_result** %10, align 8
  %160 = getelementptr inbounds %struct.venc_done_result, %struct.venc_done_result* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  br label %167

161:                                              ; preds = %5
  %162 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %163 = load i32, i32* %7, align 4
  %164 = call i32 @mtk_vcodec_err(%struct.venc_h264_inst* %162, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %163)
  %165 = load i32, i32* @EINVAL, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %11, align 4
  br label %167

167:                                              ; preds = %161, %137, %65, %44
  br label %168

168:                                              ; preds = %167, %136, %80, %64, %43
  %169 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %13, align 8
  %170 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %169, i32 0, i32 0
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @disable_irq(i32 %173)
  %175 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %12, align 8
  %176 = load i32, i32* %7, align 4
  %177 = call i32 (%struct.venc_h264_inst*, i8*, ...) @mtk_vcodec_debug(%struct.venc_h264_inst* %175, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %176)
  %178 = load i32, i32* %11, align 4
  ret i32 %178
}

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_h264_inst*, i8*, ...) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @h264_encode_header(%struct.venc_h264_inst*, %struct.mtk_vcodec_mem*, i32*) #1

declare dso_local i32 @h264_encode_frame(%struct.venc_h264_inst*, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, i32*) #1

declare dso_local i32 @h264_encode_filler(%struct.venc_h264_inst*, i32, i32) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_h264_inst*, i8*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
