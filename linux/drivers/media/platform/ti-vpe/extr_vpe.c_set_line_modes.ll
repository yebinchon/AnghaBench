; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_line_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpe.c_set_line_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpe_ctx = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.vpe_fmt* }
%struct.vpe_fmt = type { i64 }

@Q_DATA_SRC = common dso_local global i64 0, align 8
@V4L2_PIX_FMT_NV12 = common dso_local global i64 0, align 8
@VPE_CHAN_CHROMA1_IN = common dso_local global i32 0, align 4
@VPE_CHAN_CHROMA2_IN = common dso_local global i32 0, align 4
@VPE_CHAN_CHROMA3_IN = common dso_local global i32 0, align 4
@VPDMA_FSEVENT_CHANNEL_ACTIVE = common dso_local global i32 0, align 4
@VPE_CHAN_LUMA1_IN = common dso_local global i32 0, align 4
@VPE_CHAN_LUMA2_IN = common dso_local global i32 0, align 4
@VPE_CHAN_LUMA3_IN = common dso_local global i32 0, align 4
@VPE_CHAN_MV_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vpe_ctx*)* @set_line_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_line_modes(%struct.vpe_ctx* %0) #0 {
  %2 = alloca %struct.vpe_ctx*, align 8
  %3 = alloca %struct.vpe_fmt*, align 8
  %4 = alloca i32, align 4
  store %struct.vpe_ctx* %0, %struct.vpe_ctx** %2, align 8
  %5 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %6 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load i64, i64* @Q_DATA_SRC, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i64 %8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.vpe_fmt*, %struct.vpe_fmt** %10, align 8
  store %struct.vpe_fmt* %11, %struct.vpe_fmt** %3, align 8
  store i32 1, i32* %4, align 4
  %12 = load %struct.vpe_fmt*, %struct.vpe_fmt** %3, align 8
  %13 = getelementptr inbounds %struct.vpe_fmt, %struct.vpe_fmt* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @V4L2_PIX_FMT_NV12, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %1
  %19 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %20 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @VPE_CHAN_CHROMA1_IN, align 4
  %26 = call i32 @vpdma_set_line_mode(i32 %23, i32 %24, i32 %25)
  %27 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %28 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @VPE_CHAN_CHROMA2_IN, align 4
  %34 = call i32 @vpdma_set_line_mode(i32 %31, i32 %32, i32 %33)
  %35 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @VPE_CHAN_CHROMA3_IN, align 4
  %42 = call i32 @vpdma_set_line_mode(i32 %39, i32 %40, i32 %41)
  %43 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %44 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %43, i32 0, i32 0
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VPDMA_FSEVENT_CHANNEL_ACTIVE, align 4
  %49 = load i32, i32* @VPE_CHAN_LUMA1_IN, align 4
  %50 = call i32 @vpdma_set_frame_start_event(i32 %47, i32 %48, i32 %49)
  %51 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %52 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VPDMA_FSEVENT_CHANNEL_ACTIVE, align 4
  %57 = load i32, i32* @VPE_CHAN_LUMA2_IN, align 4
  %58 = call i32 @vpdma_set_frame_start_event(i32 %55, i32 %56, i32 %57)
  %59 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %60 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %59, i32 0, i32 0
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @VPDMA_FSEVENT_CHANNEL_ACTIVE, align 4
  %65 = load i32, i32* @VPE_CHAN_LUMA3_IN, align 4
  %66 = call i32 @vpdma_set_frame_start_event(i32 %63, i32 %64, i32 %65)
  %67 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %68 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @VPDMA_FSEVENT_CHANNEL_ACTIVE, align 4
  %73 = load i32, i32* @VPE_CHAN_CHROMA1_IN, align 4
  %74 = call i32 @vpdma_set_frame_start_event(i32 %71, i32 %72, i32 %73)
  %75 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %76 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @VPDMA_FSEVENT_CHANNEL_ACTIVE, align 4
  %81 = load i32, i32* @VPE_CHAN_CHROMA2_IN, align 4
  %82 = call i32 @vpdma_set_frame_start_event(i32 %79, i32 %80, i32 %81)
  %83 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %84 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @VPDMA_FSEVENT_CHANNEL_ACTIVE, align 4
  %89 = load i32, i32* @VPE_CHAN_CHROMA3_IN, align 4
  %90 = call i32 @vpdma_set_frame_start_event(i32 %87, i32 %88, i32 %89)
  %91 = load %struct.vpe_ctx*, %struct.vpe_ctx** %2, align 8
  %92 = getelementptr inbounds %struct.vpe_ctx, %struct.vpe_ctx* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @VPDMA_FSEVENT_CHANNEL_ACTIVE, align 4
  %97 = load i32, i32* @VPE_CHAN_MV_IN, align 4
  %98 = call i32 @vpdma_set_frame_start_event(i32 %95, i32 %96, i32 %97)
  ret void
}

declare dso_local i32 @vpdma_set_line_mode(i32, i32, i32) #1

declare dso_local i32 @vpdma_set_frame_start_event(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
