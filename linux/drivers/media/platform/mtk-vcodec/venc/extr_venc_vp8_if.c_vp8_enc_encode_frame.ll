; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_vp8_if.c_vp8_enc_encode_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_vp8_if.c_vp8_enc_encode_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_vp8_inst = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.venc_frm_buf = type { i32 }
%struct.mtk_vcodec_mem = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"->frm_cnt=%d\00", align 1
@MTK_VENC_IRQ_STATUS_FRM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"irq_status=%d failed\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"vp8_enc_compose_one_frame failed\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"<-size=%d key_frm=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.venc_vp8_inst*, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, i32*)* @vp8_enc_encode_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_enc_encode_frame(%struct.venc_vp8_inst* %0, %struct.venc_frm_buf* %1, %struct.mtk_vcodec_mem* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.venc_vp8_inst*, align 8
  %7 = alloca %struct.venc_frm_buf*, align 8
  %8 = alloca %struct.mtk_vcodec_mem*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.venc_vp8_inst* %0, %struct.venc_vp8_inst** %6, align 8
  store %struct.venc_frm_buf* %1, %struct.venc_frm_buf** %7, align 8
  store %struct.mtk_vcodec_mem* %2, %struct.mtk_vcodec_mem** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %6, align 8
  %13 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %6, align 8
  %14 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 (%struct.venc_vp8_inst*, i8*, i32, ...) @mtk_vcodec_debug(%struct.venc_vp8_inst* %12, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %6, align 8
  %18 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %17, i32 0, i32 0
  %19 = load %struct.venc_frm_buf*, %struct.venc_frm_buf** %7, align 8
  %20 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = call i32 @vpu_enc_encode(%struct.TYPE_2__* %18, i32 0, %struct.venc_frm_buf* %19, %struct.mtk_vcodec_mem* %20, i32* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  store i32 %26, i32* %5, align 4
  br label %64

27:                                               ; preds = %4
  %28 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %6, align 8
  %29 = call i32 @vp8_enc_wait_venc_done(%struct.venc_vp8_inst* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* @MTK_VENC_IRQ_STATUS_FRM, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %6, align 8
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (%struct.venc_vp8_inst*, i8*, ...) @mtk_vcodec_err(%struct.venc_vp8_inst* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %64

39:                                               ; preds = %27
  %40 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %6, align 8
  %41 = load %struct.mtk_vcodec_mem*, %struct.mtk_vcodec_mem** %8, align 8
  %42 = load i32*, i32** %9, align 8
  %43 = call i64 @vp8_enc_compose_one_frame(%struct.venc_vp8_inst* %40, %struct.mtk_vcodec_mem* %41, i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %6, align 8
  %47 = call i32 (%struct.venc_vp8_inst*, i8*, ...) @mtk_vcodec_err(%struct.venc_vp8_inst* %46, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %64

50:                                               ; preds = %39
  %51 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %6, align 8
  %52 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %6, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.venc_vp8_inst*, %struct.venc_vp8_inst** %6, align 8
  %59 = getelementptr inbounds %struct.venc_vp8_inst, %struct.venc_vp8_inst* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 (%struct.venc_vp8_inst*, i8*, i32, ...) @mtk_vcodec_debug(%struct.venc_vp8_inst* %55, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %50, %45, %33, %25
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_vp8_inst*, i8*, i32, ...) #1

declare dso_local i32 @vpu_enc_encode(%struct.TYPE_2__*, i32, %struct.venc_frm_buf*, %struct.mtk_vcodec_mem*, i32*) #1

declare dso_local i32 @vp8_enc_wait_venc_done(%struct.venc_vp8_inst*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_vp8_inst*, i8*, ...) #1

declare dso_local i64 @vp8_enc_compose_one_frame(%struct.venc_vp8_inst*, %struct.mtk_vcodec_mem*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
