; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_alloc_inst.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vp9_alloc_inst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { %struct.mtk_vcodec_mem }
%struct.mtk_vcodec_mem = type { i32, %struct.vdec_vp9_inst* }
%struct.mtk_vcodec_ctx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vdec_vp9_inst* (%struct.mtk_vcodec_ctx*)* @vp9_alloc_inst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vdec_vp9_inst* @vp9_alloc_inst(%struct.mtk_vcodec_ctx* %0) #0 {
  %2 = alloca %struct.vdec_vp9_inst*, align 8
  %3 = alloca %struct.mtk_vcodec_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mtk_vcodec_mem, align 8
  %6 = alloca %struct.vdec_vp9_inst*, align 8
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %3, align 8
  %7 = call i32 @memset(%struct.mtk_vcodec_mem* %5, i32 0, i32 16)
  %8 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %5, i32 0, i32 0
  store i32 16, i32* %8, align 8
  %9 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %10 = call i32 @mtk_vcodec_mem_alloc(%struct.mtk_vcodec_ctx* %9, %struct.mtk_vcodec_mem* %5)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.vdec_vp9_inst* null, %struct.vdec_vp9_inst** %2, align 8
  br label %22

14:                                               ; preds = %1
  %15 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %5, i32 0, i32 1
  %16 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %15, align 8
  store %struct.vdec_vp9_inst* %16, %struct.vdec_vp9_inst** %6, align 8
  %17 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %6, align 8
  %18 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %17, i32 0, i32 0
  %19 = bitcast %struct.mtk_vcodec_mem* %18 to i8*
  %20 = bitcast %struct.mtk_vcodec_mem* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 16, i1 false)
  %21 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %6, align 8
  store %struct.vdec_vp9_inst* %21, %struct.vdec_vp9_inst** %2, align 8
  br label %22

22:                                               ; preds = %14, %13
  %23 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %2, align 8
  ret %struct.vdec_vp9_inst* %23
}

declare dso_local i32 @memset(%struct.mtk_vcodec_mem*, i32, i32) #1

declare dso_local i32 @mtk_vcodec_mem_alloc(%struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_mem*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
