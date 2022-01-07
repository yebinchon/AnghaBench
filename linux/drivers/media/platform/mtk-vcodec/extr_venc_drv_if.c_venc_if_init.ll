; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_drv_if.c_venc_if_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_drv_if.c_venc_if_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 (%struct.mtk_vcodec_ctx*)* }
%struct.mtk_vcodec_ctx = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }

@venc_vp8_if = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@venc_h264_if = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venc_if_init(%struct.mtk_vcodec_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtk_vcodec_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %14 [
    i32 128, label %8
    i32 129, label %11
  ]

8:                                                ; preds = %2
  %9 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %10 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %9, i32 0, i32 1
  store %struct.TYPE_5__* @venc_vp8_if, %struct.TYPE_5__** %10, align 8
  br label %17

11:                                               ; preds = %2
  %12 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %13 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %12, i32 0, i32 1
  store %struct.TYPE_5__* @venc_h264_if, %struct.TYPE_5__** %13, align 8
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %40

17:                                               ; preds = %11, %8
  %18 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %19 = call i32 @mtk_venc_lock(%struct.mtk_vcodec_ctx* %18)
  %20 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %21 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @mtk_vcodec_enc_clock_on(i32* %23)
  %25 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %26 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %25, i32 0, i32 1
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32 (%struct.mtk_vcodec_ctx*)*, i32 (%struct.mtk_vcodec_ctx*)** %28, align 8
  %30 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %31 = call i32 %29(%struct.mtk_vcodec_ctx* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %33 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @mtk_vcodec_enc_clock_off(i32* %35)
  %37 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %4, align 8
  %38 = call i32 @mtk_venc_unlock(%struct.mtk_vcodec_ctx* %37)
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %17, %14
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @mtk_venc_lock(%struct.mtk_vcodec_ctx*) #1

declare dso_local i32 @mtk_vcodec_enc_clock_on(i32*) #1

declare dso_local i32 @mtk_vcodec_enc_clock_off(i32*) #1

declare dso_local i32 @mtk_venc_unlock(%struct.mtk_vcodec_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
