; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_alloc_mv_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_alloc_mv_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_h264_inst = type { %struct.TYPE_2__*, i32, %struct.mtk_vcodec_mem* }
%struct.TYPE_2__ = type { i32* }
%struct.mtk_vcodec_mem = type { i32, i32, i64 }
%struct.vdec_pic_info = type { i32, i32 }

@H264_MAX_FB_NUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"failed to allocate mv buf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdec_h264_inst*, %struct.vdec_pic_info*)* @alloc_mv_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_mv_buf(%struct.vdec_h264_inst* %0, %struct.vdec_pic_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vdec_h264_inst*, align 8
  %5 = alloca %struct.vdec_pic_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_vcodec_mem*, align 8
  %9 = alloca i32, align 4
  store %struct.vdec_h264_inst* %0, %struct.vdec_h264_inst** %4, align 8
  store %struct.vdec_pic_info* %1, %struct.vdec_pic_info** %5, align 8
  store %struct.mtk_vcodec_mem* null, %struct.mtk_vcodec_mem** %8, align 8
  %10 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %5, align 8
  %11 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %5, align 8
  %14 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @get_mv_buf_size(i32 %12, i32 %15)
  store i32 %16, i32* %9, align 4
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %65, %2
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @H264_MAX_FB_NUM, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %68

21:                                               ; preds = %17
  %22 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %23 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %22, i32 0, i32 2
  %24 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %24, i64 %26
  store %struct.mtk_vcodec_mem* %27, %struct.mtk_vcodec_mem** %8, align 8
  %28 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %8, align 8
  %29 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %34 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %8, align 8
  %37 = call i32 @mtk_vcodec_mem_free(i32 %35, %struct.mtk_vcodec_mem* %36)
  br label %38

38:                                               ; preds = %32, %21
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %8, align 8
  %41 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %43 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %8, align 8
  %46 = call i32 @mtk_vcodec_mem_alloc(i32 %44, %struct.mtk_vcodec_mem* %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %38
  %50 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %51 = call i32 @mtk_vcodec_err(%struct.vdec_h264_inst* %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %69

53:                                               ; preds = %38
  %54 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %8, align 8
  %55 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %58 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %57, i32 0, i32 0
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32 %56, i32* %64, align 4
  br label %65

65:                                               ; preds = %53
  %66 = load i32, i32* %6, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %6, align 4
  br label %17

68:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %68, %49
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @get_mv_buf_size(i32, i32) #1

declare dso_local i32 @mtk_vcodec_mem_free(i32, %struct.mtk_vcodec_mem*) #1

declare dso_local i32 @mtk_vcodec_mem_alloc(i32, %struct.mtk_vcodec_mem*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_h264_inst*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
