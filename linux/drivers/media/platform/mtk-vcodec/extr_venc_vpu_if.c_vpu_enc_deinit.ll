; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_vpu_if.c_vpu_enc_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_vpu_if.c_vpu_enc_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_vpu_inst = type { i32 }
%struct.venc_ap_ipi_msg_deinit = type { i32, i32 }

@AP_IPIMSG_ENC_DEINIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"AP_IPIMSG_ENC_DEINIT fail\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpu_enc_deinit(%struct.venc_vpu_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venc_vpu_inst*, align 8
  %4 = alloca %struct.venc_ap_ipi_msg_deinit, align 4
  store %struct.venc_vpu_inst* %0, %struct.venc_vpu_inst** %3, align 8
  %5 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %6 = call i32 @mtk_vcodec_debug_enter(%struct.venc_vpu_inst* %5)
  %7 = call i32 @memset(%struct.venc_ap_ipi_msg_deinit* %4, i32 0, i32 8)
  %8 = load i32, i32* @AP_IPIMSG_ENC_DEINIT, align 4
  %9 = getelementptr inbounds %struct.venc_ap_ipi_msg_deinit, %struct.venc_ap_ipi_msg_deinit* %4, i32 0, i32 1
  store i32 %8, i32* %9, align 4
  %10 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %11 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = getelementptr inbounds %struct.venc_ap_ipi_msg_deinit, %struct.venc_ap_ipi_msg_deinit* %4, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %15 = call i64 @vpu_enc_send_msg(%struct.venc_vpu_inst* %14, %struct.venc_ap_ipi_msg_deinit* %4, i32 8)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %19 = call i32 @mtk_vcodec_err(%struct.venc_vpu_inst* %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %25

22:                                               ; preds = %1
  %23 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %24 = call i32 @mtk_vcodec_debug_leave(%struct.venc_vpu_inst* %23)
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %22, %17
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_vpu_inst*) #1

declare dso_local i32 @memset(%struct.venc_ap_ipi_msg_deinit*, i32, i32) #1

declare dso_local i64 @vpu_enc_send_msg(%struct.venc_vpu_inst*, %struct.venc_ap_ipi_msg_deinit*, i32) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_vpu_inst*, i8*) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_vpu_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
