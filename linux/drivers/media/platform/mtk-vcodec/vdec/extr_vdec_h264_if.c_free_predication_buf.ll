; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_free_predication_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_free_predication_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_h264_inst = type { i32, %struct.mtk_vcodec_mem, %struct.TYPE_2__* }
%struct.mtk_vcodec_mem = type { i64 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vdec_h264_inst*)* @free_predication_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_predication_buf(%struct.vdec_h264_inst* %0) #0 {
  %2 = alloca %struct.vdec_h264_inst*, align 8
  %3 = alloca %struct.mtk_vcodec_mem*, align 8
  store %struct.vdec_h264_inst* %0, %struct.vdec_h264_inst** %2, align 8
  store %struct.mtk_vcodec_mem* null, %struct.mtk_vcodec_mem** %3, align 8
  %4 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %2, align 8
  %5 = call i32 @mtk_vcodec_debug_enter(%struct.vdec_h264_inst* %4)
  %6 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %2, align 8
  %7 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %2, align 8
  %11 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %10, i32 0, i32 1
  store %struct.mtk_vcodec_mem* %11, %struct.mtk_vcodec_mem** %3, align 8
  %12 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %3, align 8
  %13 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %2, align 8
  %18 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %3, align 8
  %21 = call i32 @mtk_vcodec_mem_free(i32 %19, %struct.mtk_vcodec_mem* %20)
  br label %22

22:                                               ; preds = %16, %1
  ret void
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.vdec_h264_inst*) #1

declare dso_local i32 @mtk_vcodec_mem_free(i32, %struct.mtk_vcodec_mem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
