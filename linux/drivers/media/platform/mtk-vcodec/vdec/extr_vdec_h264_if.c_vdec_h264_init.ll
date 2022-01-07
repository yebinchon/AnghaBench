; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_vdec_h264_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/vdec/extr_vdec_h264_if.c_vdec_h264_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_ctx = type { %struct.vdec_h264_inst*, %struct.TYPE_4__* }
%struct.vdec_h264_inst = type { %struct.TYPE_5__, %struct.vdec_h264_vsi*, %struct.mtk_vcodec_ctx* }
%struct.TYPE_5__ = type { i64, i32, %struct.mtk_vcodec_ctx*, i32, i32 }
%struct.vdec_h264_vsi = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPI_VDEC_H264 = common dso_local global i32 0, align 4
@vpu_dec_ipi_handler = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"vdec_h264 init err=%d\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"H264 Instance >> %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_vcodec_ctx*)* @vdec_h264_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vdec_h264_init(%struct.mtk_vcodec_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_vcodec_ctx*, align 8
  %4 = alloca %struct.vdec_h264_inst*, align 8
  %5 = alloca i32, align 4
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %3, align 8
  store %struct.vdec_h264_inst* null, %struct.vdec_h264_inst** %4, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.vdec_h264_inst* @kzalloc(i32 48, i32 %6)
  store %struct.vdec_h264_inst* %7, %struct.vdec_h264_inst** %4, align 8
  %8 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %9 = icmp ne %struct.vdec_h264_inst* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %74

13:                                               ; preds = %1
  %14 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %15 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %16 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %15, i32 0, i32 2
  store %struct.mtk_vcodec_ctx* %14, %struct.mtk_vcodec_ctx** %16, align 8
  %17 = load i32, i32* @IPI_VDEC_H264, align 4
  %18 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %19 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32 %17, i32* %20, align 4
  %21 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %21, i32 0, i32 1
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %27 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 3
  store i32 %25, i32* %28, align 8
  %29 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %30 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %31 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 2
  store %struct.mtk_vcodec_ctx* %29, %struct.mtk_vcodec_ctx** %32, align 8
  %33 = load i32, i32* @vpu_dec_ipi_handler, align 4
  %34 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %35 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 8
  %37 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %38 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %37, i32 0, i32 0
  %39 = call i32 @vpu_dec_init(%struct.TYPE_5__* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %13
  %43 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @mtk_vcodec_err(%struct.vdec_h264_inst* %43, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %70

46:                                               ; preds = %13
  %47 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %48 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to %struct.vdec_h264_vsi*
  %52 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %53 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %52, i32 0, i32 1
  store %struct.vdec_h264_vsi* %51, %struct.vdec_h264_vsi** %53, align 8
  %54 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %55 = call i32 @allocate_predication_buf(%struct.vdec_h264_inst* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %66

59:                                               ; preds = %46
  %60 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %61 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %62 = call i32 @mtk_vcodec_debug(%struct.vdec_h264_inst* %60, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), %struct.vdec_h264_inst* %61)
  %63 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %64 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %65 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %64, i32 0, i32 0
  store %struct.vdec_h264_inst* %63, %struct.vdec_h264_inst** %65, align 8
  store i32 0, i32* %2, align 4
  br label %74

66:                                               ; preds = %58
  %67 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %68 = getelementptr inbounds %struct.vdec_h264_inst, %struct.vdec_h264_inst* %67, i32 0, i32 0
  %69 = call i32 @vpu_dec_deinit(%struct.TYPE_5__* %68)
  br label %70

70:                                               ; preds = %66, %42
  %71 = load %struct.vdec_h264_inst*, %struct.vdec_h264_inst** %4, align 8
  %72 = call i32 @kfree(%struct.vdec_h264_inst* %71)
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %2, align 4
  br label %74

74:                                               ; preds = %70, %59, %10
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local %struct.vdec_h264_inst* @kzalloc(i32, i32) #1

declare dso_local i32 @vpu_dec_init(%struct.TYPE_5__*) #1

declare dso_local i32 @mtk_vcodec_err(%struct.vdec_h264_inst*, i8*, i32) #1

declare dso_local i32 @allocate_predication_buf(%struct.vdec_h264_inst*) #1

declare dso_local i32 @mtk_vcodec_debug(%struct.vdec_h264_inst*, i8*, %struct.vdec_h264_inst*) #1

declare dso_local i32 @vpu_dec_deinit(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.vdec_h264_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
