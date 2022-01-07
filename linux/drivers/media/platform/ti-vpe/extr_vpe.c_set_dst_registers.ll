; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_dst_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_dst_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.vpe_fmt* }
%struct.vpe_fmt = type { i64, i64* }
%struct.TYPE_4__ = type { %struct.vpe_mmr_adb* }
%struct.vpe_mmr_adb = type { i32* }
%struct.vpdma_data_format = type { i32 }

@Q_DATA_DST = common dso_local global i64 0, align 8
@V4L2_COLORSPACE_SRGB = common dso_local global i32 0, align 4
@VPE_RGB_OUT_SELECT = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV16 = common dso_local global i64 0, align 8
@VPE_COLOR_SEPARATE_422 = common dso_local global i32 0, align 4
@VPE_DS_SRC_DEI_SCALER = common dso_local global i32 0, align 4
@VPE_CSC_SRC_DEI_SCALER = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@VPE_DS_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*)* @set_dst_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_dst_registers(%struct.vpe_ctx* %0) #0 {
  %2 = alloca %struct.vpe_ctx*, align 8
  %3 = alloca %struct.vpe_mmr_adb*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpe_fmt*, align 8
  %6 = alloca i32, align 4
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %2, align 8
  %7 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %8 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %9, align 8
  store %struct.vpe_mmr_adb* %10, %struct.vpe_mmr_adb** %3, align 8
  %11 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %12 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = load i64, i64* @Q_DATA_DST, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %18, i32 0, i32 2
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i64, i64* @Q_DATA_DST, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load %struct.vpe_fmt*, %struct.vpe_fmt** %23, align 8
  store %struct.vpe_fmt* %24, %struct.vpe_fmt** %5, align 8
  store i32 0, i32* %6, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @V4L2_COLORSPACE_SRGB, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %1
  %29 = load i32, i32* @VPE_RGB_OUT_SELECT, align 4
  %30 = load i32, i32* %6, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %6, align 4
  %32 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %33 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.vpe_fmt*, %struct.vpe_fmt** %5, align 8
  %38 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %37, i32 0, i32 1
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to %struct.vpdma_data_format*
  %43 = call i32 @vpdma_set_bg_color(i32 %36, %struct.vpdma_data_format* %42, i32 255)
  br label %55

44:                                               ; preds = %1
  %45 = load %struct.vpe_fmt*, %struct.vpe_fmt** %5, align 8
  %46 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @V4L2_PIX_FMT_NV16, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @VPE_COLOR_SEPARATE_422, align 4
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  br label %54

54:                                               ; preds = %50, %44
  br label %55

55:                                               ; preds = %54, %28
  %56 = load i32, i32* @VPE_DS_SRC_DEI_SCALER, align 4
  %57 = load i32, i32* @VPE_CSC_SRC_DEI_SCALER, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* %6, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %6, align 4
  %61 = load %struct.vpe_fmt*, %struct.vpe_fmt** %5, align 8
  %62 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load i32, i32* @VPE_DS_BYPASS, align 4
  %68 = load i32, i32* %6, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %66, %55
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.vpe_mmr_adb*, %struct.vpe_mmr_adb** %3, align 8
  %73 = getelementptr inbounds %struct.vpe_mmr_adb, %struct.vpe_mmr_adb* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %71, i32* %75, align 4
  %76 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %77 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %76, i32 0, i32 0
  store i32 1, i32* %77, align 8
  ret void
}

declare dso_local i32 @vpdma_set_bg_color(i32, %struct.vpdma_data_format*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
