; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_vdec_vpu_if.c_vpu_dec_ipi_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_vdec_vpu_if.c_vpu_dec_ipi_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vpu_ipi_ack = type { i32, i64, i64 }
%struct.vdec_vpu_inst = type { i64, i32 }

@.str = private unnamed_addr constant [8 x i8] c"+ id=%X\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"invalid msg=%X\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"- id=%X\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpu_dec_ipi_handler(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.vdec_vpu_ipi_ack*, align 8
  %8 = alloca %struct.vdec_vpu_inst*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.vdec_vpu_ipi_ack*
  store %struct.vdec_vpu_ipi_ack* %10, %struct.vdec_vpu_ipi_ack** %7, align 8
  %11 = load %struct.vdec_vpu_ipi_ack*, %struct.vdec_vpu_ipi_ack** %7, align 8
  %12 = getelementptr inbounds %struct.vdec_vpu_ipi_ack, %struct.vdec_vpu_ipi_ack* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.vdec_vpu_inst*
  store %struct.vdec_vpu_inst* %14, %struct.vdec_vpu_inst** %8, align 8
  %15 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %8, align 8
  %16 = load %struct.vdec_vpu_ipi_ack*, %struct.vdec_vpu_ipi_ack** %7, align 8
  %17 = getelementptr inbounds %struct.vdec_vpu_ipi_ack, %struct.vdec_vpu_ipi_ack* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @mtk_vcodec_debug(%struct.vdec_vpu_inst* %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.vdec_vpu_ipi_ack*, %struct.vdec_vpu_ipi_ack** %7, align 8
  %21 = getelementptr inbounds %struct.vdec_vpu_ipi_ack, %struct.vdec_vpu_ipi_ack* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %39

24:                                               ; preds = %3
  %25 = load %struct.vdec_vpu_ipi_ack*, %struct.vdec_vpu_ipi_ack** %7, align 8
  %26 = getelementptr inbounds %struct.vdec_vpu_ipi_ack, %struct.vdec_vpu_ipi_ack* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  switch i32 %27, label %32 [
    i32 130, label %28
    i32 128, label %31
    i32 131, label %31
    i32 132, label %31
    i32 129, label %31
  ]

28:                                               ; preds = %24
  %29 = load i8*, i8** %4, align 8
  %30 = call i32 @handle_init_ack_msg(i8* %29)
  br label %38

31:                                               ; preds = %24, %24, %24, %24
  br label %38

32:                                               ; preds = %24
  %33 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %8, align 8
  %34 = load %struct.vdec_vpu_ipi_ack*, %struct.vdec_vpu_ipi_ack** %7, align 8
  %35 = getelementptr inbounds %struct.vdec_vpu_ipi_ack, %struct.vdec_vpu_ipi_ack* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @mtk_vcodec_err(%struct.vdec_vpu_inst* %33, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %31, %28
  br label %39

39:                                               ; preds = %38, %3
  %40 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %8, align 8
  %41 = load %struct.vdec_vpu_ipi_ack*, %struct.vdec_vpu_ipi_ack** %7, align 8
  %42 = getelementptr inbounds %struct.vdec_vpu_ipi_ack, %struct.vdec_vpu_ipi_ack* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mtk_vcodec_debug(%struct.vdec_vpu_inst* %40, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %43)
  %45 = load %struct.vdec_vpu_ipi_ack*, %struct.vdec_vpu_ipi_ack** %7, align 8
  %46 = getelementptr inbounds %struct.vdec_vpu_ipi_ack, %struct.vdec_vpu_ipi_ack* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %8, align 8
  %49 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %48, i32 0, i32 0
  store i64 %47, i64* %49, align 8
  %50 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %8, align 8
  %51 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %50, i32 0, i32 1
  store i32 1, i32* %51, align 8
  ret void
}

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_vpu_inst*, i8*, i32) #1

declare dso_local i32 @handle_init_ack_msg(i8*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vpu_inst*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
