; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_vpu_if.c_vpu_enc_ipi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_venc_vpu_if.c_vpu_enc_ipi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venc_vpu_ipi_msg_common = type { i32, i64, i64 }
%struct.venc_vpu_inst = type { i32, i32 }

@.str = private unnamed_addr constant [28 x i8] c"msg_id %x inst %p status %d\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"unknown msg id %x\00", align 1
@VENC_IPI_MSG_STATUS_OK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*)* @vpu_enc_ipi_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpu_enc_ipi_handler(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.venc_vpu_ipi_msg_common*, align 8
  %8 = alloca %struct.venc_vpu_inst*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.venc_vpu_ipi_msg_common*
  store %struct.venc_vpu_ipi_msg_common* %10, %struct.venc_vpu_ipi_msg_common** %7, align 8
  %11 = load %struct.venc_vpu_ipi_msg_common*, %struct.venc_vpu_ipi_msg_common** %7, align 8
  %12 = getelementptr inbounds %struct.venc_vpu_ipi_msg_common, %struct.venc_vpu_ipi_msg_common* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.venc_vpu_inst*
  store %struct.venc_vpu_inst* %14, %struct.venc_vpu_inst** %8, align 8
  %15 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %8, align 8
  %16 = load %struct.venc_vpu_ipi_msg_common*, %struct.venc_vpu_ipi_msg_common** %7, align 8
  %17 = getelementptr inbounds %struct.venc_vpu_ipi_msg_common, %struct.venc_vpu_ipi_msg_common* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %8, align 8
  %20 = load %struct.venc_vpu_ipi_msg_common*, %struct.venc_vpu_ipi_msg_common** %7, align 8
  %21 = getelementptr inbounds %struct.venc_vpu_ipi_msg_common, %struct.venc_vpu_ipi_msg_common* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @mtk_vcodec_debug(%struct.venc_vpu_inst* %15, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %18, %struct.venc_vpu_inst* %19, i64 %22)
  %24 = load %struct.venc_vpu_ipi_msg_common*, %struct.venc_vpu_ipi_msg_common** %7, align 8
  %25 = getelementptr inbounds %struct.venc_vpu_ipi_msg_common, %struct.venc_vpu_ipi_msg_common* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %37 [
    i32 129, label %27
    i32 128, label %31
    i32 130, label %32
    i32 131, label %36
  ]

27:                                               ; preds = %3
  %28 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %8, align 8
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @handle_enc_init_msg(%struct.venc_vpu_inst* %28, i8* %29)
  br label %43

31:                                               ; preds = %3
  br label %43

32:                                               ; preds = %3
  %33 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %8, align 8
  %34 = load i8*, i8** %4, align 8
  %35 = call i32 @handle_enc_encode_msg(%struct.venc_vpu_inst* %33, i8* %34)
  br label %43

36:                                               ; preds = %3
  br label %43

37:                                               ; preds = %3
  %38 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %8, align 8
  %39 = load %struct.venc_vpu_ipi_msg_common*, %struct.venc_vpu_ipi_msg_common** %7, align 8
  %40 = getelementptr inbounds %struct.venc_vpu_ipi_msg_common, %struct.venc_vpu_ipi_msg_common* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @mtk_vcodec_err(%struct.venc_vpu_inst* %38, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  br label %43

43:                                               ; preds = %37, %36, %32, %31, %27
  %44 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %8, align 8
  %45 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.venc_vpu_ipi_msg_common*, %struct.venc_vpu_ipi_msg_common** %7, align 8
  %47 = getelementptr inbounds %struct.venc_vpu_ipi_msg_common, %struct.venc_vpu_ipi_msg_common* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @VENC_IPI_MSG_STATUS_OK, align 8
  %50 = icmp ne i64 %48, %49
  %51 = zext i1 %50 to i32
  %52 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %8, align 8
  %53 = getelementptr inbounds %struct.venc_vpu_inst, %struct.venc_vpu_inst* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.venc_vpu_inst*, %struct.venc_vpu_inst** %8, align 8
  %55 = call i32 @mtk_vcodec_debug_leave(%struct.venc_vpu_inst* %54)
  ret void
}

declare dso_local i32 @mtk_vcodec_debug(%struct.venc_vpu_inst*, i8*, i32, %struct.venc_vpu_inst*, i64) #1

declare dso_local i32 @handle_enc_init_msg(%struct.venc_vpu_inst*, i8*) #1

declare dso_local i32 @handle_enc_encode_msg(%struct.venc_vpu_inst*, i8*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.venc_vpu_inst*, i8*, i32) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_vpu_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
