; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-core.c_tw5864_h264_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw5864/extr_tw5864-core.c_tw5864_h264_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw5864_dev = type { i32, i32, i32, i64, %struct.TYPE_4__*, i32, %struct.tw5864_h264_frame*, %struct.tw5864_input* }
%struct.TYPE_4__ = type { i32 }
%struct.tw5864_h264_frame = type { i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, i32, i32, %struct.tw5864_input* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.tw5864_input = type { i64, i64, i32, i32 }

@TW5864_DSP = common dso_local global i32 0, align 4
@TW5864_DSP_ENC_CHN = common dso_local global i32 0, align 4
@H264_BUF_CNT = common dso_local global i32 0, align 4
@TW5864_VLC_LENGTH = common dso_local global i32 0, align 4
@TW5864_VLC_CRC_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"Skipped frame on input %d because all buffers busy\0A\00", align 1
@TW5864_VLC_STREAM_BASE_ADDR = common dso_local global i32 0, align 4
@TW5864_MV_STREAM_BASE_ADDR = common dso_local global i32 0, align 4
@TW5864_VLC_DSP_INTR = common dso_local global i32 0, align 4
@TW5864_PCI_INTR_STATUS = common dso_local global i32 0, align 4
@TW5864_VLC_DONE_INTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw5864_dev*)* @tw5864_h264_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw5864_h264_isr(%struct.tw5864_dev* %0) #0 {
  %2 = alloca %struct.tw5864_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.tw5864_input*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tw5864_h264_frame*, align 8
  %8 = alloca %struct.tw5864_h264_frame*, align 8
  %9 = alloca i64, align 8
  store %struct.tw5864_dev* %0, %struct.tw5864_dev** %2, align 8
  %10 = load i32, i32* @TW5864_DSP, align 4
  %11 = call i32 @tw_readl(i32 %10)
  %12 = load i32, i32* @TW5864_DSP_ENC_CHN, align 4
  %13 = and i32 %11, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %15 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %14, i32 0, i32 7
  %16 = load %struct.tw5864_input*, %struct.tw5864_input** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %16, i64 %18
  store %struct.tw5864_input* %19, %struct.tw5864_input** %4, align 8
  %20 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %21 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %20, i32 0, i32 2
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %25 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  %29 = load i32, i32* @H264_BUF_CNT, align 4
  %30 = srem i32 %28, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %32 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %31, i32 0, i32 6
  %33 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %33, i64 %35
  store %struct.tw5864_h264_frame* %36, %struct.tw5864_h264_frame** %7, align 8
  %37 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %38 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %37, i32 0, i32 6
  %39 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %39, i64 %41
  store %struct.tw5864_h264_frame* %42, %struct.tw5864_h264_frame** %8, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %45 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %43, %46
  br i1 %47, label %48, label %106

48:                                               ; preds = %1
  %49 = load i32, i32* @TW5864_VLC_LENGTH, align 4
  %50 = call i32 @tw_readl(i32 %49)
  %51 = shl i32 %50, 2
  %52 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %7, align 8
  %53 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @TW5864_VLC_CRC_REG, align 4
  %55 = call i32 @tw_readl(i32 %54)
  %56 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %7, align 8
  %57 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %59 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %7, align 8
  %60 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %59, i32 0, i32 7
  store %struct.tw5864_input* %58, %struct.tw5864_input** %60, align 8
  %61 = call i32 (...) @ktime_get_ns()
  %62 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %7, align 8
  %63 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %62, i32 0, i32 6
  store i32 %61, i32* %63, align 4
  %64 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %65 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %7, align 8
  %68 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 8
  %69 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %70 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %7, align 8
  %73 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %76 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 8
  %77 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %78 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %77, i32 0, i32 5
  %79 = call i32 @tasklet_schedule(i32* %78)
  %80 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %8, align 8
  store %struct.tw5864_h264_frame* %80, %struct.tw5864_h264_frame** %7, align 8
  %81 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %82 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %81, i32 0, i32 2
  %83 = call i32 @spin_lock(i32* %82)
  %84 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %85 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %89 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  store i64 %91, i64* %89, align 8
  %92 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %93 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %96 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %48
  %100 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %101 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  br label %102

102:                                              ; preds = %99, %48
  %103 = load %struct.tw5864_input*, %struct.tw5864_input** %4, align 8
  %104 = getelementptr inbounds %struct.tw5864_input, %struct.tw5864_input* %103, i32 0, i32 2
  %105 = call i32 @spin_unlock(i32* %104)
  br label %113

106:                                              ; preds = %1
  %107 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %108 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %107, i32 0, i32 4
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load i32, i32* %3, align 4
  %112 = call i32 @dev_err(i32* %110, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %111)
  br label %113

113:                                              ; preds = %106, %102
  %114 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %115 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.tw5864_dev*, %struct.tw5864_dev** %2, align 8
  %117 = getelementptr inbounds %struct.tw5864_dev, %struct.tw5864_dev* %116, i32 0, i32 2
  %118 = load i64, i64* %9, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load i32, i32* @TW5864_VLC_STREAM_BASE_ADDR, align 4
  %121 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %7, align 8
  %122 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %121, i32 0, i32 4
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @tw_writel(i32 %120, i32 %124)
  %126 = load i32, i32* @TW5864_MV_STREAM_BASE_ADDR, align 4
  %127 = load %struct.tw5864_h264_frame*, %struct.tw5864_h264_frame** %7, align 8
  %128 = getelementptr inbounds %struct.tw5864_h264_frame, %struct.tw5864_h264_frame* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @tw_writel(i32 %126, i32 %130)
  %132 = load i32, i32* @TW5864_VLC_DSP_INTR, align 4
  %133 = call i32 @tw_writel(i32 %132, i32 1)
  %134 = load i32, i32* @TW5864_PCI_INTR_STATUS, align 4
  %135 = load i32, i32* @TW5864_VLC_DONE_INTR, align 4
  %136 = call i32 @tw_writel(i32 %134, i32 %135)
  ret void
}

declare dso_local i32 @tw_readl(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @tw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
