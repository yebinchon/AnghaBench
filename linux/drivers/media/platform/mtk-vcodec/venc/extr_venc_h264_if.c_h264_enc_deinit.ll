; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_h264_inst = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @h264_enc_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_enc_deinit(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.venc_h264_inst*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.venc_h264_inst*
  store %struct.venc_h264_inst* %6, %struct.venc_h264_inst** %4, align 8
  %7 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %4, align 8
  %8 = call i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst* %7)
  %9 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %4, align 8
  %10 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %9, i32 0, i32 1
  %11 = call i32 @vpu_enc_deinit(i32* %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %4, align 8
  %13 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %4, align 8
  %18 = call i32 @h264_enc_free_work_buf(%struct.venc_h264_inst* %17)
  br label %19

19:                                               ; preds = %16, %1
  %20 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %4, align 8
  %21 = call i32 @mtk_vcodec_debug_leave(%struct.venc_h264_inst* %20)
  %22 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %4, align 8
  %23 = call i32 @kfree(%struct.venc_h264_inst* %22)
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst*) #1

declare dso_local i32 @vpu_enc_deinit(i32*) #1

declare dso_local i32 @h264_enc_free_work_buf(%struct.venc_h264_inst*) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_h264_inst*) #1

declare dso_local i32 @kfree(%struct.venc_h264_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
