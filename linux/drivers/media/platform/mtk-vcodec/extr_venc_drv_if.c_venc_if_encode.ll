; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_drv_if.c_venc_if_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_drv_if.c_venc_if_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_ctx = type { %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.mtk_vcodec_ctx*, i32 }
%struct.TYPE_3__ = type { i32 (i32, i32, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, %struct.venc_done_result*)* }
%struct.venc_frm_buf = type { i32 }
%struct.mtk_vcodec_mem = type { i32 }
%struct.venc_done_result = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venc_if_encode(%struct.mtk_vcodec_ctx* %0, i32 %1, %struct.venc_frm_buf* %2, %struct.mtk_vcodec_mem* %3, %struct.venc_done_result* %4) #0 {
  %6 = alloca %struct.mtk_vcodec_ctx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.venc_frm_buf*, align 8
  %9 = alloca %struct.mtk_vcodec_mem*, align 8
  %10 = alloca %struct.venc_done_result*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.venc_frm_buf* %2, %struct.venc_frm_buf** %8, align 8
  store %struct.mtk_vcodec_mem* %3, %struct.mtk_vcodec_mem** %9, align 8
  store %struct.venc_done_result* %4, %struct.venc_done_result** %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %14 = call i32 @mtk_venc_lock(%struct.mtk_vcodec_ctx* %13)
  %15 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %16 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %12, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %22 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %23 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  store %struct.mtk_vcodec_ctx* %21, %struct.mtk_vcodec_ctx** %25, align 8
  %26 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %27 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %12, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %33 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 2
  %36 = call i32 @mtk_vcodec_enc_clock_on(i32* %35)
  %37 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %38 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32 (i32, i32, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, %struct.venc_done_result*)*, i32 (i32, i32, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, %struct.venc_done_result*)** %40, align 8
  %42 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %43 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load %struct.venc_frm_buf*, %struct.venc_frm_buf** %8, align 8
  %47 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %9, align 8
  %48 = load %struct.venc_done_result*, %struct.venc_done_result** %10, align 8
  %49 = call i32 %41(i32 %44, i32 %45, %struct.venc_frm_buf* %46, %struct.mtk_vcodec_mem* %47, %struct.venc_done_result* %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %51 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %50, i32 0, i32 0
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  %54 = call i32 @mtk_vcodec_enc_clock_off(i32* %53)
  %55 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %56 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i64, i64* %12, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %62 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store %struct.mtk_vcodec_ctx* null, %struct.mtk_vcodec_ctx** %64, align 8
  %65 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %66 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 0
  %69 = load i64, i64* %12, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %6, align 8
  %72 = call i32 @mtk_venc_unlock(%struct.mtk_vcodec_ctx* %71)
  %73 = load i32, i32* %11, align 4
  ret i32 %73
}

declare dso_local i32 @mtk_venc_lock(%struct.mtk_vcodec_ctx*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mtk_vcodec_enc_clock_on(i32*) #1

declare dso_local i32 @mtk_vcodec_enc_clock_off(i32*) #1

declare dso_local i32 @mtk_venc_unlock(%struct.mtk_vcodec_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
