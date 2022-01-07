; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_start_v4l2_decode_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-streams.c_ivtv_start_v4l2_decode_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_stream = type { i32, i32, %struct.TYPE_4__, %struct.ivtv* }
%struct.TYPE_4__ = type { i32* }
%struct.ivtv = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Starting decode stream %s (gop_offset %d)\0A\00", align 1
@CX2341X_DEC_SET_DMA_BLOCK_SIZE = common dso_local global i32 0, align 4
@IVTV_F_S_STREAMOFF = common dso_local global i32 0, align 4
@IVTV_MBOX_DMA_END = common dso_local global i64 0, align 8
@IVTV_MBOX_DMA = common dso_local global i64 0, align 8
@CX2341X_DEC_SET_EVENT_NOTIFICATION = common dso_local global i32 0, align 4
@IVTV_IRQ_DEC_AUD_MODE_CHG = common dso_local global i32 0, align 4
@CX2341X_DEC_START_PLAYBACK = common dso_local global i32 0, align 4
@IVTV_IRQ_MASK_DECODE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"IRQ Mask is now: 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ivtv_start_v4l2_decode_stream(%struct.ivtv_stream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv_stream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca i32, align 4
  store %struct.ivtv_stream* %0, %struct.ivtv_stream** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %9 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %8, i32 0, i32 3
  %10 = load %struct.ivtv*, %struct.ivtv** %9, align 8
  store %struct.ivtv* %10, %struct.ivtv** %6, align 8
  %11 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %12 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %149

19:                                               ; preds = %2
  %20 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %21 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %22 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %21, i32 0, i32 0
  %23 = call i64 @test_and_set_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %149

26:                                               ; preds = %19
  %27 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %28 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %29, i32 %30)
  %32 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %33 = call i32 @ivtv_setup_v4l2_decode_stream(%struct.ivtv_stream* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %26
  %37 = load i32, i32* @IVTV_F_S_STREAMING, align 4
  %38 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %39 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %38, i32 0, i32 0
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %149

42:                                               ; preds = %26
  %43 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %44 = load i32, i32* @CX2341X_DEC_SET_DMA_BLOCK_SIZE, align 4
  %45 = call i32 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %43, i32 %44, i32 1, i32 65536)
  %46 = load i32, i32* @IVTV_F_S_STREAMOFF, align 4
  %47 = load %struct.ivtv_stream*, %struct.ivtv_stream** %4, align 8
  %48 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %47, i32 0, i32 0
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %51 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = load i64, i64* @IVTV_MBOX_DMA_END, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 0
  %59 = call i32 @writel(i32 0, i32* %58)
  %60 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %61 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i64, i64* @IVTV_MBOX_DMA_END, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  %69 = call i32 @writel(i32 0, i32* %68)
  %70 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %71 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = load i64, i64* @IVTV_MBOX_DMA_END, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = call i32 @writel(i32 0, i32* %78)
  %80 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %81 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i64, i64* @IVTV_MBOX_DMA_END, align 8
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 3
  %89 = call i32 @writel(i32 0, i32* %88)
  %90 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %91 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %92, align 8
  %94 = load i64, i64* @IVTV_MBOX_DMA, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 0
  %99 = call i32 @writel(i32 0, i32* %98)
  %100 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %101 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %102, align 8
  %104 = load i64, i64* @IVTV_MBOX_DMA, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  %109 = call i32 @writel(i32 0, i32* %108)
  %110 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %111 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = load i64, i64* @IVTV_MBOX_DMA, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 2
  %119 = call i32 @writel(i32 0, i32* %118)
  %120 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %121 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %122, align 8
  %124 = load i64, i64* @IVTV_MBOX_DMA, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32*, i32** %126, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 3
  %129 = call i32 @writel(i32 0, i32* %128)
  %130 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %131 = load i32, i32* @CX2341X_DEC_SET_EVENT_NOTIFICATION, align 4
  %132 = load i32, i32* @IVTV_IRQ_DEC_AUD_MODE_CHG, align 4
  %133 = call i32 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %130, i32 %131, i32 4, i32 0, i32 1, i32 %132, i32 -1)
  %134 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %135 = load i32, i32* @CX2341X_DEC_START_PLAYBACK, align 4
  %136 = load i32, i32* %5, align 4
  %137 = call i32 (%struct.ivtv*, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %134, i32 %135, i32 2, i32 %136, i32 0)
  %138 = call i32 @ivtv_msleep_timeout(i32 10, i32 0)
  %139 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %140 = load i32, i32* @IVTV_IRQ_MASK_DECODE, align 4
  %141 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %139, i32 %140)
  %142 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %143 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @IVTV_DEBUG_IRQ(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %144)
  %146 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %147 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %146, i32 0, i32 0
  %148 = call i32 @atomic_inc(i32* %147)
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %42, %36, %25, %16
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, i32, i32) #1

declare dso_local i32 @ivtv_setup_v4l2_decode_stream(%struct.ivtv_stream*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, ...) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @ivtv_msleep_timeout(i32, i32) #1

declare dso_local i32 @ivtv_clear_irq_mask(%struct.ivtv*, i32) #1

declare dso_local i32 @IVTV_DEBUG_IRQ(i8*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
