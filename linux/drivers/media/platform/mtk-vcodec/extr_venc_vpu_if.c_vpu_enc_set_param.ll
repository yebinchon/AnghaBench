; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_vpu_if.c_vpu_enc_set_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_vpu_if.c_vpu_enc_set_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_vpu_inst = type { i32 }
%struct.venc_enc_param = type { i32, i32, i32, i32 }
%struct.venc_ap_ipi_msg_set_param = type { i32, i32, i32*, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"id %d ->\00", align 1
@AP_IPIMSG_ENC_SET_PARAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"id %d not supported\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"AP_IPIMSG_ENC_SET_PARAM %d fail\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"id %d <-\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpu_enc_set_param(%struct.venc_vpu_inst* %0, i32 %1, %struct.venc_enc_param* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.venc_vpu_inst*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.venc_enc_param*, align 8
  %8 = alloca %struct.venc_ap_ipi_msg_set_param, align 8
  store %struct.venc_vpu_inst* %0, %struct.venc_vpu_inst** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.venc_enc_param* %2, %struct.venc_enc_param** %7, align 8
  %9 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @mtk_vcodec_debug(%struct.venc_vpu_inst* %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = call i32 @memset(%struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 24)
  %13 = load i32, i32* @AP_IPIMSG_ENC_SET_PARAM, align 4
  %14 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 4
  store i32 %13, i32* %14, align 4
  %15 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %5, align 8
  %16 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 3
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* %6, align 4
  %20 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  switch i32 %21, label %60 [
    i32 132, label %22
    i32 131, label %24
    i32 134, label %26
    i32 133, label %34
    i32 130, label %42
    i32 129, label %50
    i32 128, label %58
  ]

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 1
  store i32 0, i32* %23, align 4
  br label %66

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 1
  store i32 0, i32* %25, align 4
  br label %66

26:                                               ; preds = %3
  %27 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.venc_enc_param*, %struct.venc_enc_param** %7, align 8
  %29 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 2
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 %30, i32* %33, align 4
  br label %66

34:                                               ; preds = %3
  %35 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load %struct.venc_enc_param*, %struct.venc_enc_param** %7, align 8
  %37 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  store i32 %38, i32* %41, align 4
  br label %66

42:                                               ; preds = %3
  %43 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.venc_enc_param*, %struct.venc_enc_param** %7, align 8
  %45 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  store i32 %46, i32* %49, align 4
  br label %66

50:                                               ; preds = %3
  %51 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 1
  store i32 1, i32* %51, align 4
  %52 = load %struct.venc_enc_param*, %struct.venc_enc_param** %7, align 8
  %53 = getelementptr inbounds %struct.venc_enc_param, %struct.venc_enc_param* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %54, i32* %57, align 4
  br label %66

58:                                               ; preds = %3
  %59 = getelementptr inbounds %struct.venc_ap_ipi_msg_set_param, %struct.venc_ap_ipi_msg_set_param* %8, i32 0, i32 1
  store i32 0, i32* %59, align 4
  br label %66

60:                                               ; preds = %3
  %61 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %5, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @mtk_vcodec_err(%struct.venc_vpu_inst* %61, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %4, align 4
  br label %80

66:                                               ; preds = %58, %50, %42, %34, %26, %24, %22
  %67 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %5, align 8
  %68 = call i64 @vpu_enc_send_msg(%struct.venc_vpu_inst* %67, %struct.venc_ap_ipi_msg_set_param* %8, i32 24)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %5, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @mtk_vcodec_err(%struct.venc_vpu_inst* %71, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %80

76:                                               ; preds = %66
  %77 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %5, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @mtk_vcodec_debug(%struct.venc_vpu_inst* %77, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %78)
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %76, %70, %60
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_vpu_inst*, i8*, i32) #1

declare dso_local i32 @memset(%struct.venc_ap_ipi_msg_set_param*, i32, i32) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_vpu_inst*, i8*, i32) #1

declare dso_local i64 @vpu_enc_send_msg(%struct.venc_vpu_inst*, %struct.venc_ap_ipi_msg_set_param*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
