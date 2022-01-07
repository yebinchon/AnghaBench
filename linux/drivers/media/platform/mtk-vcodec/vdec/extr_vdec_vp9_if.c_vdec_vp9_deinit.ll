; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vdec_vp9_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vdec_vp9_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vp9_inst = type { i32, %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem, i32 }
%struct.mtk_vcodec_mem = type { i64 }

@.str = private unnamed_addr constant [22 x i8] c"vpu_dec_deinit failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vdec_vp9_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdec_vp9_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.vdec_vp9_inst*, align 8
  %4 = alloca %struct.mtk_vcodec_mem*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.vdec_vp9_inst*
  store %struct.vdec_vp9_inst* %7, %struct.vdec_vp9_inst** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %9 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %8, i32 0, i32 3
  %10 = call i32 @vpu_dec_deinit(i32* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %15 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %14, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %13, %1
  %17 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %18 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %17, i32 0, i32 2
  store %struct.mtk_vcodec_mem* %18, %struct.mtk_vcodec_mem** %4, align 8
  %19 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %4, align 8
  %20 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %25 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %4, align 8
  %28 = call i32 @mtk_vcodec_mem_free(i32 %26, %struct.mtk_vcodec_mem* %27)
  br label %29

29:                                               ; preds = %23, %16
  %30 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %31 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %30, i32 0, i32 1
  store %struct.mtk_vcodec_mem* %31, %struct.mtk_vcodec_mem** %4, align 8
  %32 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_vcodec_mem, %struct.mtk_vcodec_mem* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %38 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %4, align 8
  %41 = call i32 @mtk_vcodec_mem_free(i32 %39, %struct.mtk_vcodec_mem* %40)
  br label %42

42:                                               ; preds = %36, %29
  %43 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %44 = call i32 @vp9_free_all_sf_ref_fb(%struct.vdec_vp9_inst* %43)
  %45 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %3, align 8
  %46 = call i32 @vp9_free_inst(%struct.vdec_vp9_inst* %45)
  ret void
}

declare dso_local i32 @vpu_dec_deinit(i32*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vp9_inst*, i8*) #1

declare dso_local i32 @mtk_vcodec_mem_free(i32, %struct.mtk_vcodec_mem*) #1

declare dso_local i32 @vp9_free_all_sf_ref_fb(%struct.vdec_vp9_inst*) #1

declare dso_local i32 @vp9_free_inst(%struct.vdec_vp9_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
