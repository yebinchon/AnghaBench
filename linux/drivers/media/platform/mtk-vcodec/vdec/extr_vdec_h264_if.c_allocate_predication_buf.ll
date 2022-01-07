; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_allocate_predication_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_allocate_predication_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vdec_h264_inst = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@BUF_PREDICTION_SZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to allocate ppl buf\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vdec_h264_inst*)* @allocate_predication_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_predication_buf(%struct.vdec_h264_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vdec_h264_inst*, align 8
  %4 = alloca i32, align 4
  store %struct.vdec_h264_inst* %0, %struct.vdec_h264_inst** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @BUF_PREDICTION_SZ, align 4
  %6 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %7 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 1
  store i32 %5, i32* %8, align 4
  %9 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %10 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %13 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %12, i32 0, i32 0
  %14 = call i32 @mtk_vcodec_mem_alloc(i32 %11, %struct.TYPE_4__* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %19 = call i32 @mtk_vcodec_err(%struct.vdec_h264_inst* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %23 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %3, align 8
  %27 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %25, i32* %29, align 4
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @mtk_vcodec_mem_alloc(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_h264_inst*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
