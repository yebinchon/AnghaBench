; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_vdec_vpu_if.c_vpu_dec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_vdec_vpu_if.c_vpu_dec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vpu_inst = type { i32, i32, i32, i32 }
%struct.vdec_ap_ipi_init = type { i64, i32 }

@.str = private unnamed_addr constant [5 x i8] c"vdec\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"vpu_ipi_register fail status=%d\00", align 1
@AP_IPIMSG_DEC_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"vdec_inst=%p\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"- ret=%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpu_dec_init(%struct.vdec_vpu_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vdec_vpu_inst*, align 8
  %4 = alloca %struct.vdec_ap_ipi_init, align 8
  %5 = alloca i32, align 4
  store %struct.vdec_vpu_inst* %0, %struct.vdec_vpu_inst** %3, align 8
  %6 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %7 = call i32 @mtk_vcodec_debug_enter(%struct.vdec_vpu_inst* %6)
  %8 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %9 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %8, i32 0, i32 3
  %10 = call i32 @init_waitqueue_head(i32* %9)
  %11 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %12 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %15 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %18 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @vpu_ipi_register(i32 %13, i32 %16, i32 %19, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32* null)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %1
  %24 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @mtk_vcodec_err(%struct.vdec_vpu_inst* %24, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %45

28:                                               ; preds = %1
  %29 = call i32 @memset(%struct.vdec_ap_ipi_init* %4, i32 0, i32 16)
  %30 = load i32, i32* @AP_IPIMSG_DEC_INIT, align 4
  %31 = getelementptr inbounds %struct.vdec_ap_ipi_init, %struct.vdec_ap_ipi_init* %4, i32 0, i32 1
  store i32 %30, i32* %31, align 8
  %32 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %33 = ptrtoint %struct.vdec_vpu_inst* %32 to i64
  %34 = getelementptr inbounds %struct.vdec_ap_ipi_init, %struct.vdec_ap_ipi_init* %4, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %36 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %37 = call i32 (%struct.vdec_vpu_inst*, i8*, ...) @mtk_vcodec_debug(%struct.vdec_vpu_inst* %35, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), %struct.vdec_vpu_inst* %36)
  %38 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %39 = bitcast %struct.vdec_ap_ipi_init* %4 to i8*
  %40 = call i32 @vcodec_vpu_send_msg(%struct.vdec_vpu_inst* %38, i8* %39, i32 16)
  store i32 %40, i32* %5, align 4
  %41 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %3, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 (%struct.vdec_vpu_inst*, i8*, ...) @mtk_vcodec_debug(%struct.vdec_vpu_inst* %41, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %5, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %28, %23
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.vdec_vpu_inst*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @vpu_ipi_register(i32, i32, i32, i8*, i32*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vpu_inst*, i8*, i32) #1

declare dso_local i32 @memset(%struct.vdec_ap_ipi_init*, i32, i32) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_vpu_inst*, i8*, ...) #1

declare dso_local i32 @vcodec_vpu_send_msg(%struct.vdec_vpu_inst*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
