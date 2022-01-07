; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_request_encoded_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-video.c_tw5864_request_encoded_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_input = type { i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, %struct.tw5864_dev* }
%struct.tw5864_dev = type { i32 }

@TW5864_DSP_CODEC = common dso_local global i32 0, align 4
@TW5864_CIF_MAP_MD = common dso_local global i32 0, align 4
@TW5864_HD1_MAP_MD = common dso_local global i32 0, align 4
@TW5864_EMU = common dso_local global i32 0, align 4
@TW5864_INTERLACING = common dso_local global i32 0, align 4
@TW5864_DSP = common dso_local global i32 0, align 4
@TW5864_DSP_QP = common dso_local global i32 0, align 4
@TW5864_DSP_REF_MVP_LAMBDA = common dso_local global i32 0, align 4
@TW5864_DSP_I4x4_WEIGHT = common dso_local global i32 0, align 4
@TW5864_DSP_INTRA_MODE = common dso_local global i32 0, align 4
@TW5864_DSP_INTRA_MODE_MASK = common dso_local global i32 0, align 4
@TW5864_DSP_INTRA_MODE_SHIFT = common dso_local global i32 0, align 4
@TW5864_DSP_INTRA_MODE_16x16 = common dso_local global i32 0, align 4
@TW5864_MOTION_SEARCH_ETC = common dso_local global i32 0, align 4
@TW5864_INTRA_EN = common dso_local global i32 0, align 4
@TW5864_DSP_REF_FRM = common dso_local global i32 0, align 4
@TW5864_ME_EN = common dso_local global i32 0, align 4
@TW5864_VLC = common dso_local global i32 0, align 4
@TW5864_VLC_PCI_SEL = common dso_local global i32 0, align 4
@TW5864_VLC_BIT_ALIGN_SHIFT = common dso_local global i32 0, align 4
@TW5864_ENC_BUF_PTR_REC1 = common dso_local global i32 0, align 4
@TW5864_DSP_ENC_ORG_PTR_REG = common dso_local global i32 0, align 4
@TW5864_DSP_ENC_ORG_PTR_SHIFT = common dso_local global i32 0, align 4
@TW5864_DSP_ENC_REC = common dso_local global i32 0, align 4
@TW5864_SLICE = common dso_local global i32 0, align 4
@TW5864_START_NSLICE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tw5864_request_encoded_frame(%struct.tw5864_input* %0) #0 {
  %2 = alloca %struct.tw5864_input*, align 8
  %3 = alloca %struct.tw5864_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.tw5864_input* %0, %struct.tw5864_input** %2, align 8
  %5 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %6 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %5, i32 0, i32 10
  %7 = load %struct.tw5864_dev*, %struct.tw5864_dev** %6, align 8
  store %struct.tw5864_dev* %7, %struct.tw5864_dev** %3, align 8
  %8 = load i32, i32* @TW5864_DSP_CODEC, align 4
  %9 = load i32, i32* @TW5864_CIF_MAP_MD, align 4
  %10 = load i32, i32* @TW5864_HD1_MAP_MD, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @tw_setl(i32 %8, i32 %11)
  %13 = load i32, i32* @TW5864_EMU, align 4
  %14 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %15 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @tw_writel(i32 %13, i32 %16)
  %18 = load i32, i32* @TW5864_INTERLACING, align 4
  %19 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %20 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @tw_writel(i32 %18, i32 %21)
  %23 = load i32, i32* @TW5864_DSP, align 4
  %24 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %25 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @tw_writel(i32 %23, i32 %26)
  %28 = load i32, i32* @TW5864_DSP_QP, align 4
  %29 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %30 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @tw_writel(i32 %28, i32 %31)
  %33 = load i32, i32* @TW5864_DSP_REF_MVP_LAMBDA, align 4
  %34 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %35 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %34, i32 0, i32 4
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @tw_writel(i32 %33, i32 %36)
  %38 = load i32, i32* @TW5864_DSP_I4x4_WEIGHT, align 4
  %39 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %40 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @tw_writel(i32 %38, i32 %41)
  %43 = load i32, i32* @TW5864_DSP_INTRA_MODE, align 4
  %44 = load i32, i32* @TW5864_DSP_INTRA_MODE_MASK, align 4
  %45 = load i32, i32* @TW5864_DSP_INTRA_MODE_SHIFT, align 4
  %46 = load i32, i32* @TW5864_DSP_INTRA_MODE_16x16, align 4
  %47 = call i32 @tw_mask_shift_writel(i32 %43, i32 %44, i32 %45, i32 %46)
  %48 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %49 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %65

52:                                               ; preds = %1
  %53 = load i32, i32* @TW5864_MOTION_SEARCH_ETC, align 4
  %54 = load i32, i32* @TW5864_INTRA_EN, align 4
  %55 = call i32 @tw_writel(i32 %53, i32 %54)
  %56 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %57 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %56, i32 0, i32 9
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load i32, i32* @TW5864_DSP_REF_FRM, align 4
  %61 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %62 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %73

65:                                               ; preds = %1
  %66 = load i32, i32* @TW5864_MOTION_SEARCH_ETC, align 4
  %67 = load i32, i32* @TW5864_INTRA_EN, align 4
  %68 = load i32, i32* @TW5864_ME_EN, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @BIT(i32 5)
  %71 = or i32 %69, %70
  %72 = call i32 @tw_writel(i32 %66, i32 %71)
  br label %73

73:                                               ; preds = %65, %52
  %74 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %75 = call i32 @tw5864_prepare_frame_headers(%struct.tw5864_input* %74)
  %76 = load i32, i32* @TW5864_VLC, align 4
  %77 = load i32, i32* @TW5864_VLC_PCI_SEL, align 4
  %78 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %79 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 24
  %82 = load i32, i32* @TW5864_VLC_BIT_ALIGN_SHIFT, align 4
  %83 = shl i32 %81, %82
  %84 = or i32 %77, %83
  %85 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %86 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %84, %87
  %89 = call i32 @tw_writel(i32 %76, i32 %88)
  %90 = load i32, i32* @TW5864_ENC_BUF_PTR_REC1, align 4
  %91 = load %struct.tw5864_input*, %struct.tw5864_input** %2, align 8
  %92 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 2, %93
  %95 = call i32 @tw_mask_shift_readl(i32 %90, i32 3, i32 %94)
  store i32 %95, i32* %4, align 4
  %96 = load i32, i32* @TW5864_DSP_ENC_ORG_PTR_REG, align 4
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* @TW5864_DSP_ENC_ORG_PTR_SHIFT, align 4
  %99 = shl i32 %97, %98
  %100 = call i32 @tw_writel(i32 %96, i32 %99)
  %101 = load i32, i32* @TW5864_DSP_ENC_REC, align 4
  %102 = load i32, i32* %4, align 4
  %103 = shl i32 %102, 12
  %104 = load i32, i32* %4, align 4
  %105 = add nsw i32 %104, 3
  %106 = and i32 %105, 3
  %107 = or i32 %103, %106
  %108 = call i32 @tw_writel(i32 %101, i32 %107)
  %109 = load i32, i32* @TW5864_SLICE, align 4
  %110 = load i32, i32* @TW5864_START_NSLICE, align 4
  %111 = call i32 @tw_writel(i32 %109, i32 %110)
  %112 = load i32, i32* @TW5864_SLICE, align 4
  %113 = call i32 @tw_writel(i32 %112, i32 0)
  ret void
}

declare dso_local i32 @tw_setl(i32, i32) #1

declare dso_local i32 @tw_writel(i32, i32) #1

declare dso_local i32 @tw_mask_shift_writel(i32, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @tw5864_prepare_frame_headers(%struct.tw5864_input*) #1

declare dso_local i32 @tw_mask_shift_readl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
