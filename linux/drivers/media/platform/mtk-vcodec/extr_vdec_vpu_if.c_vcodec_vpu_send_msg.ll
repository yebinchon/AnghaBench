; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_vdec_vpu_if.c_vcodec_vpu_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/extr_vdec_vpu_if.c_vcodec_vpu_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_vpu_inst = type { i32, i32, i32, i64 }

@.str = private unnamed_addr constant [6 x i8] c"id=%X\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"send fail vpu_id=%d msg_id=%X status=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdec_vpu_inst*, i8*, i32)* @vcodec_vpu_send_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcodec_vpu_send_msg(%struct.vdec_vpu_inst* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vdec_vpu_inst*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vdec_vpu_inst* %0, %struct.vdec_vpu_inst** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to i32*
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mtk_vcodec_debug(%struct.vdec_vpu_inst* %9, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %15 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %17 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %16, i32 0, i32 3
  store i64 0, i64* %17, align 8
  %18 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %19 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %22 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @vpu_ipi_send(i32 %20, i32 %23, i8* %24, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  %30 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %31 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %32 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i8*, i8** %6, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @mtk_vcodec_err(%struct.vdec_vpu_inst* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %44

40:                                               ; preds = %3
  %41 = load %struct.vdec_vpu_inst*, %struct.vdec_vpu_inst** %5, align 8
  %42 = getelementptr inbounds %struct.vdec_vpu_inst, %struct.vdec_vpu_inst* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %29
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_vpu_inst*, i8*, i32) #1

declare dso_local i32 @vpu_ipi_send(i32, i32, i8*, i32) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_vpu_inst*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
