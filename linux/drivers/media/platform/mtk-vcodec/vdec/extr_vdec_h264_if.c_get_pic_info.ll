; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_get_pic_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_get_pic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_h264_inst = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vdec_pic_info }
%struct.vdec_pic_info = type { i32*, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"pic(%d, %d), buf(%d, %d)\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"fb size: Y(%d), C(%d)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_h264_inst*, %struct.vdec_pic_info*)* @get_pic_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_pic_info(%struct.vdec_h264_inst* %0, %struct.vdec_pic_info* %1) #0 {
  %3 = alloca %struct.vdec_h264_inst*, align 8
  %4 = alloca %struct.vdec_pic_info*, align 8
  store %struct.vdec_h264_inst* %0, %struct.vdec_h264_inst** %3, align 8
  store %struct.vdec_pic_info* %1, %struct.vdec_pic_info** %4, align 8
  %5 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %6 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %7 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = bitcast %struct.vdec_pic_info* %5 to i8*
  %11 = bitcast %struct.vdec_pic_info* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  %12 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %13 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %14 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %17 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %20 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %23 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (%struct.vdec_h264_inst*, i8*, i32, i32, ...) @mtk_vcodec_debug(%struct.vdec_h264_inst* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %27 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %28 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vdec_pic_info*, %struct.vdec_pic_info** %4, align 8
  %33 = getelementptr inbounds %struct.vdec_pic_info, %struct.vdec_pic_info* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (%struct.vdec_h264_inst*, i8*, i32, i32, ...) @mtk_vcodec_debug(%struct.vdec_h264_inst* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %36)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_h264_inst*, i8*, i32, i32, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
