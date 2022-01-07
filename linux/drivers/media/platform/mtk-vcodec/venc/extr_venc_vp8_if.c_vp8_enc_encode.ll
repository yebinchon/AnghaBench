; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_vp8_if.c_vp8_enc_encode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_vp8_if.c_vp8_enc_encode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_frm_buf = type { i32 }
%struct.mtk_vcodec_mem = type { i32 }
%struct.venc_done_result = type { i32, i32 }
%struct.venc_vp8_inst = type { %struct.TYPE_3__, %struct.mtk_vcodec_ctx* }
%struct.TYPE_3__ = type { i32 }
%struct.mtk_vcodec_ctx = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"opt not support:%d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, %struct.venc_done_result*)* @vp8_enc_encode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_enc_encode(i8* %0, i32 %1, %struct.venc_frm_buf* %2, %struct.mtk_vcodec_mem* %3, %struct.venc_done_result* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.venc_frm_buf*, align 8
  %9 = alloca %struct.mtk_vcodec_mem*, align 8
  %10 = alloca %struct.venc_done_result*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.venc_vp8_inst*, align 8
  %13 = alloca %struct.mtk_vcodec_ctx*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.venc_frm_buf* %2, %struct.venc_frm_buf** %8, align 8
  store %struct.mtk_vcodec_mem* %3, %struct.mtk_vcodec_mem** %9, align 8
  store %struct.venc_done_result* %4, %struct.venc_done_result** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load i8*, i8** %6, align 8
  %15 = bitcast i8* %14 to %struct.venc_vp8_inst*
  store %struct.venc_vp8_inst* %15, %struct.venc_vp8_inst** %12, align 8
  %16 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %12, align 8
  %17 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %16, i32 0, i32 1
  %18 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %17, align 8
  store %struct.mtk_vcodec_ctx* %18, %struct.mtk_vcodec_ctx** %13, align 8
  %19 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %12, align 8
  %20 = call i32 @mtk_vcodec_debug_enter(%struct.venc_vp8_inst* %19)
  %21 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %13, align 8
  %22 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @enable_irq(i32 %25)
  %27 = load i32, i32* %7, align 4
  switch i32 %27, label %45 [
    i32 128, label %28
  ]

28:                                               ; preds = %5
  %29 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %12, align 8
  %30 = load %struct.venc_frm_buf*, %struct.venc_frm_buf** %8, align 8
  %31 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %9, align 8
  %32 = load %struct.venc_done_result*, %struct.venc_done_result** %10, align 8
  %33 = getelementptr inbounds %struct.venc_done_result, %struct.venc_done_result* %32, i32 0, i32 1
  %34 = call i32 @vp8_enc_encode_frame(%struct.venc_vp8_inst* %29, %struct.venc_frm_buf* %30, %struct.mtk_vcodec_mem* %31, i32* %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %52

38:                                               ; preds = %28
  %39 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %12, align 8
  %40 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.venc_done_result*, %struct.venc_done_result** %10, align 8
  %44 = getelementptr inbounds %struct.venc_done_result, %struct.venc_done_result* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %51

45:                                               ; preds = %5
  %46 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %12, align 8
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @mtk_vcodec_err(%struct.venc_vp8_inst* %46, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %11, align 4
  br label %51

51:                                               ; preds = %45, %38
  br label %52

52:                                               ; preds = %51, %37
  %53 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %13, align 8
  %54 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %53, i32 0, i32 0
  %55 = load %struct.TYPE_4__*, %struct.TYPE_4__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @disable_irq(i32 %57)
  %59 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %12, align 8
  %60 = call i32 @mtk_vcodec_debug_leave(%struct.venc_vp8_inst* %59)
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_vp8_inst*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @vp8_enc_encode_frame(%struct.venc_vp8_inst*, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, i32*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_vp8_inst*, i8*, i32) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_vp8_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
