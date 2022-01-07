; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vdec_vp9_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_vp9_if.c_vdec_vp9_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_ctx = type { %struct.vdec_vp9_inst*, %struct.TYPE_3__* }
%struct.vdec_vp9_inst = type { %struct.TYPE_4__, %struct.vdec_vp9_vsi*, %struct.mtk_vcodec_ctx*, i64 }
%struct.TYPE_4__ = type { i64, i32, %struct.mtk_vcodec_ctx*, i32, i32 }
%struct.vdec_vp9_vsi = type { i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@IPI_VDEC_VP9 = common dso_local global i32 0, align 4
@vpu_dec_ipi_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"vp9_dec_vpu_init failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_vcodec_ctx*)* @vdec_vp9_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_vp9_init(%struct.mtk_vcodec_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_vcodec_ctx*, align 8
  %4 = alloca %struct.vdec_vp9_inst*, align 8
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %3, align 8
  %5 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %6 = call %struct.vdec_vp9_inst* @vp9_alloc_inst(%struct.mtk_vcodec_ctx* %5)
  store %struct.vdec_vp9_inst* %6, %struct.vdec_vp9_inst** %4, align 8
  %7 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %8 = icmp ne %struct.vdec_vp9_inst* %7, null
  br i1 %8, label %12, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %63

12:                                               ; preds = %1
  %13 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %14 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %13, i32 0, i32 3
  store i64 0, i64* %14, align 8
  %15 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %16 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %17 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %16, i32 0, i32 2
  store %struct.mtk_vcodec_ctx* %15, %struct.mtk_vcodec_ctx** %17, align 8
  %18 = load i32, i32* @IPI_VDEC_VP9, align 4
  %19 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %20 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 4
  store i32 %18, i32* %21, align 4
  %22 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %23 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %28 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  store i32 %26, i32* %29, align 8
  %30 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %31 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %32 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  store %struct.mtk_vcodec_ctx* %30, %struct.mtk_vcodec_ctx** %33, align 8
  %34 = load i32, i32* @vpu_dec_ipi_handler, align 4
  %35 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %36 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %34, i32* %37, align 8
  %38 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %39 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %38, i32 0, i32 0
  %40 = call i64 @vpu_dec_init(%struct.TYPE_4__* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %12
  %43 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %44 = call i32 @mtk_vcodec_err(%struct.vdec_vp9_inst* %43, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %58

45:                                               ; preds = %12
  %46 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %47 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.vdec_vp9_vsi*
  %51 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %52 = getelementptr inbounds %struct.vdec_vp9_inst, %struct.vdec_vp9_inst* %51, i32 0, i32 1
  store %struct.vdec_vp9_vsi* %50, %struct.vdec_vp9_vsi** %52, align 8
  %53 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %54 = call i32 @init_all_fb_lists(%struct.vdec_vp9_inst* %53)
  %55 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %56 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %57 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %56, i32 0, i32 0
  store %struct.vdec_vp9_inst* %55, %struct.vdec_vp9_inst** %57, align 8
  store i32 0, i32* %2, align 4
  br label %63

58:                                               ; preds = %42
  %59 = load %struct.vdec_vp9_inst*, %struct.vdec_vp9_inst** %4, align 8
  %60 = call i32 @vp9_free_inst(%struct.vdec_vp9_inst* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %58, %45, %9
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local %struct.vdec_vp9_inst* @vp9_alloc_inst(%struct.mtk_vcodec_ctx*) #1

declare dso_local i64 @vpu_dec_init(%struct.TYPE_4__*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vp9_inst*, i8*) #1

declare dso_local i32 @init_all_fb_lists(%struct.vdec_vp9_inst*) #1

declare dso_local i32 @vp9_free_inst(%struct.vdec_vp9_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
