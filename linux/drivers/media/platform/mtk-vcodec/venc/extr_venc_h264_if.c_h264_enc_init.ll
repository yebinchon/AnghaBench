; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/mtk-vcodec/venc/extr_venc_h264_if.c_h264_enc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_vcodec_ctx = type { %struct.venc_h264_inst*, %struct.TYPE_3__* }
%struct.venc_h264_inst = type { %struct.TYPE_4__, %struct.venc_h264_vsi*, %struct.mtk_vcodec_ctx*, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, %struct.mtk_vcodec_ctx* }
%struct.venc_h264_vsi = type { i32 }
%struct.TYPE_3__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPI_VENC_H264 = common dso_local global i32 0, align 4
@VENC_SYS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_vcodec_ctx*)* @h264_enc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @h264_enc_init(%struct.mtk_vcodec_ctx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtk_vcodec_ctx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.venc_h264_inst*, align 8
  store %struct.mtk_vcodec_ctx* %0, %struct.mtk_vcodec_ctx** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.venc_h264_inst* @kzalloc(i32 48, i32 %6)
  store %struct.venc_h264_inst* %7, %struct.venc_h264_inst** %5, align 8
  %8 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %9 = icmp ne %struct.venc_h264_inst* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %65

13:                                               ; preds = %1
  %14 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %15 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %16 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %15, i32 0, i32 2
  store %struct.mtk_vcodec_ctx* %14, %struct.mtk_vcodec_ctx** %16, align 8
  %17 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %18 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %19 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  store %struct.mtk_vcodec_ctx* %17, %struct.mtk_vcodec_ctx** %20, align 8
  %21 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %27 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @IPI_VENC_H264, align 4
  %30 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %31 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  store i32 %29, i32* %32, align 8
  %33 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %34 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %33, i32 0, i32 2
  %35 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %34, align 8
  %36 = load i32, i32* @VENC_SYS, align 4
  %37 = call i32 @mtk_vcodec_get_reg_addr(%struct.mtk_vcodec_ctx* %35, i32 %36)
  %38 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %39 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %41 = call i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst* %40)
  %42 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %43 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %42, i32 0, i32 0
  %44 = call i32 @vpu_enc_init(%struct.TYPE_4__* %43)
  store i32 %44, i32* %4, align 4
  %45 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %46 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = inttoptr i64 %48 to %struct.venc_h264_vsi*
  %50 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %51 = getelementptr inbounds %struct.venc_h264_inst, %struct.venc_h264_inst* %50, i32 0, i32 1
  store %struct.venc_h264_vsi* %49, %struct.venc_h264_vsi** %51, align 8
  %52 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %53 = call i32 @mtk_vcodec_debug_leave(%struct.venc_h264_inst* %52)
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %13
  %57 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %58 = call i32 @kfree(%struct.venc_h264_inst* %57)
  br label %63

59:                                               ; preds = %13
  %60 = load %struct.venc_h264_inst*, %struct.venc_h264_inst** %5, align 8
  %61 = load %struct.mtk_vcodec_ctx*, %struct.mtk_vcodec_ctx** %3, align 8
  %62 = getelementptr inbounds %struct.mtk_vcodec_ctx, %struct.mtk_vcodec_ctx* %61, i32 0, i32 0
  store %struct.venc_h264_inst* %60, %struct.venc_h264_inst** %62, align 8
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %4, align 4
  store i32 %64, i32* %2, align 4
  br label %65

65:                                               ; preds = %63, %10
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local %struct.venc_h264_inst* @kzalloc(i32, i32) #1

declare dso_local i32 @mtk_vcodec_get_reg_addr(%struct.mtk_vcodec_ctx*, i32) #1

declare dso_local i32 @mtk_vcodec_debug_enter(%struct.venc_h264_inst*) #1

declare dso_local i32 @vpu_enc_init(%struct.TYPE_4__*) #1

declare dso_local i32 @mtk_vcodec_debug_leave(%struct.venc_h264_inst*) #1

declare dso_local i32 @kfree(%struct.venc_h264_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
