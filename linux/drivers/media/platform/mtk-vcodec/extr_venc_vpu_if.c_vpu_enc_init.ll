; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_vpu_if.c_vpu_enc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_vpu_if.c_vpu_enc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_vpu_inst = type { i32, i32, i64, i64, i32 }
%struct.venc_ap_ipi_msg_init = type { i64, i32 }

@vpu_enc_ipi_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"vpu_ipi_register fail %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AP_IPIMSG_ENC_INIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"AP_IPIMSG_ENC_INIT fail\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpu_enc_init(%struct.venc_vpu_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venc_vpu_inst*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.venc_ap_ipi_msg_init, align 8
  store %struct.venc_vpu_inst* %0, %struct.venc_vpu_inst** %3, align 8
  %6 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %7 = call i32 @mtk_vcodec_debug_enter(%struct.venc_vpu_inst* %6)
  %8 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %9 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %8, i32 0, i32 4
  %10 = call i32 @init_waitqueue_head(i32* %9)
  %11 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %12 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %11, i32 0, i32 3
  store i64 0, i64* %12, align 8
  %13 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %14 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %16 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %19 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @vpu_enc_ipi_handler, align 4
  %22 = call i32 @vpu_ipi_register(i32 %17, i32 %20, i32 %21, i32* null, i32* null)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 (%struct.venc_vpu_inst*, i8*, ...) @mtk_vcodec_err(%struct.venc_vpu_inst* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %49

31:                                               ; preds = %1
  %32 = call i32 @memset(%struct.venc_ap_ipi_msg_init* %5, i32 0, i32 16)
  %33 = load i32, i32* @AP_IPIMSG_ENC_INIT, align 4
  %34 = getelementptr inbounds %struct.venc_ap_ipi_msg_init, %struct.venc_ap_ipi_msg_init* %5, i32 0, i32 1
  store i32 %33, i32* %34, align 8
  %35 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %36 = ptrtoint %struct.venc_vpu_inst* %35 to i64
  %37 = getelementptr inbounds %struct.venc_ap_ipi_msg_init, %struct.venc_ap_ipi_msg_init* %5, i32 0, i32 0
  store i64 %36, i64* %37, align 8
  %38 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %39 = call i64 @vpu_enc_send_msg(%struct.venc_vpu_inst* %38, %struct.venc_ap_ipi_msg_init* %5, i32 16)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %31
  %42 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %43 = call i32 (%struct.venc_vpu_inst*, i8*, ...) @mtk_vcodec_err(%struct.venc_vpu_inst* %42, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %2, align 4
  br label %49

46:                                               ; preds = %31
  %47 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %3, align 8
  %48 = call i32 @mtk_vcodec_debug_leave(%struct.venc_vpu_inst* %47)
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %41, %25
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_vpu_inst*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @vpu_ipi_register(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_vpu_inst*, i8*, ...) #1

declare dso_local i32 @memset(%struct.venc_ap_ipi_msg_init*, i32, i32) #1

declare dso_local i64 @vpu_enc_send_msg(%struct.venc_vpu_inst*, %struct.venc_ap_ipi_msg_init*, i32) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_vpu_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
