; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_vdec_vpu_if.c_vpu_dec_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_vdec_vpu_if.c_vpu_dec_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vpu_inst = type { i32 }
%struct.vdec_ap_ipi_dec_start = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"invalid len = %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AP_IPIMSG_DEC_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"- ret=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpu_dec_start(%struct.vdec_vpu_inst* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vdec_vpu_inst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vdec_ap_ipi_dec_start, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vdec_vpu_inst* %0, %struct.vdec_vpu_inst** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %12 = call i32 @mtk_vcodec_debug_enter(%struct.vdec_vpu_inst* %11)
  %13 = load i32, i32* %7, align 4
  %14 = getelementptr inbounds %struct.vdec_ap_ipi_dec_start, %struct.vdec_ap_ipi_dec_start* %8, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @ARRAY_SIZE(i32* %15)
  %17 = icmp ugt i32 %13, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @mtk_vcodec_err(%struct.vdec_vpu_inst* %19, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %58

24:                                               ; preds = %3
  %25 = call i32 @memset(%struct.vdec_ap_ipi_dec_start* %8, i32 0, i32 16)
  %26 = load i32, i32* @AP_IPIMSG_DEC_START, align 4
  %27 = getelementptr inbounds %struct.vdec_ap_ipi_dec_start, %struct.vdec_ap_ipi_dec_start* %8, i32 0, i32 2
  store i32 %26, i32* %27, align 4
  %28 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %29 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.vdec_ap_ipi_dec_start, %struct.vdec_ap_ipi_dec_start* %8, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %47, %24
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.vdec_ap_ipi_dec_start, %struct.vdec_ap_ipi_dec_start* %8, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %41, i32* %46, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %52 = bitcast %struct.vdec_ap_ipi_dec_start* %8 to i8*
  %53 = call i32 @vcodec_vpu_send_msg(%struct.vdec_vpu_inst* %51, i8* %52, i32 16)
  store i32 %53, i32* %10, align 4
  %54 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @mtk_vcodec_debug(%struct.vdec_vpu_inst* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %10, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %50, %18
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.vdec_vpu_inst*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vpu_inst*, i8*, i32) #1

declare dso_local i32 @memset(%struct.vdec_ap_ipi_dec_start*, i32, i32) #1

declare dso_local i32 @vcodec_vpu_send_msg(%struct.vdec_vpu_inst*, i8*, i32) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_vpu_inst*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
