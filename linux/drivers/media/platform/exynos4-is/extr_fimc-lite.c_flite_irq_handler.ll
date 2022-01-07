; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_flite_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_flite_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.flite_buffer = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }

@ST_FLITE_OFF = common dso_local global i32 0, align 4
@FLITE_REG_CISTATUS_IRQ_SRC_OVERFLOW = common dso_local global i32 0, align 4
@ST_FLITE_RUN = common dso_local global i32 0, align 4
@FLITE_REG_CISTATUS_IRQ_SRC_LASTCAPEND = common dso_local global i32 0, align 4
@ST_FLITE_STREAM = common dso_local global i32 0, align 4
@FIMC_IO_DMA = common dso_local global i64 0, align 8
@FLITE_REG_CISTATUS_IRQ_SRC_FRMSTART = common dso_local global i32 0, align 4
@FLITE_REG_CISTATUS_IRQ_SRC_FRMEND = common dso_local global i32 0, align 4
@VB2_BUF_STATE_DONE = common dso_local global i32 0, align 4
@ST_FLITE_CONFIG = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @flite_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flite_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.fimc_lite*, align 8
  %6 = alloca %struct.flite_buffer*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.fimc_lite*
  store %struct.fimc_lite* %10, %struct.fimc_lite** %5, align 8
  %11 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %12 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %11, i32 0, i32 0
  %13 = load i64, i64* %7, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %16 = call i32 @flite_hw_get_interrupt_source(%struct.fimc_lite* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %18 = call i32 @flite_hw_clear_pending_irq(%struct.fimc_lite* %17)
  %19 = load i32, i32* @ST_FLITE_OFF, align 4
  %20 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %21 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %20, i32 0, i32 1
  %22 = call i64 @test_and_clear_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %26 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %25, i32 0, i32 6
  %27 = call i32 @wake_up(i32* %26)
  br label %154

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* @FLITE_REG_CISTATUS_IRQ_SRC_OVERFLOW, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %28
  %34 = load i32, i32* @ST_FLITE_RUN, align 4
  %35 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %36 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %35, i32 0, i32 1
  %37 = call i32 @clear_bit(i32 %34, i32* %36)
  %38 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %39 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %38, i32 0, i32 7
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %33, %28
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @FLITE_REG_CISTATUS_IRQ_SRC_LASTCAPEND, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %50 = call i32 @flite_hw_clear_last_capture_end(%struct.fimc_lite* %49)
  %51 = load i32, i32* @ST_FLITE_STREAM, align 4
  %52 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %53 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %52, i32 0, i32 1
  %54 = call i32 @clear_bit(i32 %51, i32* %53)
  %55 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %56 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %55, i32 0, i32 6
  %57 = call i32 @wake_up(i32* %56)
  br label %58

58:                                               ; preds = %48, %43
  %59 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %60 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %59, i32 0, i32 5
  %61 = call i64 @atomic_read(i32* %60)
  %62 = load i64, i64* @FIMC_IO_DMA, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %154

65:                                               ; preds = %58
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @FLITE_REG_CISTATUS_IRQ_SRC_FRMSTART, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %90

70:                                               ; preds = %65
  %71 = load i32, i32* @ST_FLITE_RUN, align 4
  %72 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %73 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %72, i32 0, i32 1
  %74 = call i64 @test_bit(i32 %71, i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %70
  %77 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %78 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %77, i32 0, i32 2
  %79 = call i64 @list_empty(i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %90, label %81

81:                                               ; preds = %76
  %82 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %83 = call %struct.flite_buffer* @fimc_lite_pending_queue_pop(%struct.fimc_lite* %82)
  store %struct.flite_buffer* %83, %struct.flite_buffer** %6, align 8
  %84 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %85 = load %struct.flite_buffer*, %struct.flite_buffer** %6, align 8
  %86 = call i32 @flite_hw_set_dma_buffer(%struct.fimc_lite* %84, %struct.flite_buffer* %85)
  %87 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %88 = load %struct.flite_buffer*, %struct.flite_buffer** %6, align 8
  %89 = call i32 @fimc_lite_active_queue_add(%struct.fimc_lite* %87, %struct.flite_buffer* %88)
  br label %90

90:                                               ; preds = %81, %76, %70, %65
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @FLITE_REG_CISTATUS_IRQ_SRC_FRMEND, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %132

95:                                               ; preds = %90
  %96 = load i32, i32* @ST_FLITE_RUN, align 4
  %97 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %98 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %97, i32 0, i32 1
  %99 = call i64 @test_bit(i32 %96, i32* %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %132

101:                                              ; preds = %95
  %102 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %103 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %102, i32 0, i32 4
  %104 = call i64 @list_empty(i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %132, label %106

106:                                              ; preds = %101
  %107 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %108 = call %struct.flite_buffer* @fimc_lite_active_queue_pop(%struct.fimc_lite* %107)
  store %struct.flite_buffer* %108, %struct.flite_buffer** %6, align 8
  %109 = call i32 (...) @ktime_get_ns()
  %110 = load %struct.flite_buffer*, %struct.flite_buffer** %6, align 8
  %111 = getelementptr inbounds %struct.flite_buffer, %struct.flite_buffer* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i32 %109, i32* %113, align 8
  %114 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %115 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  %118 = sext i32 %116 to i64
  %119 = load %struct.flite_buffer*, %struct.flite_buffer** %6, align 8
  %120 = getelementptr inbounds %struct.flite_buffer, %struct.flite_buffer* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  store i64 %118, i64* %121, align 8
  %122 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %123 = load %struct.flite_buffer*, %struct.flite_buffer** %6, align 8
  %124 = getelementptr inbounds %struct.flite_buffer, %struct.flite_buffer* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @flite_hw_mask_dma_buffer(%struct.fimc_lite* %122, i32 %125)
  %127 = load %struct.flite_buffer*, %struct.flite_buffer** %6, align 8
  %128 = getelementptr inbounds %struct.flite_buffer, %struct.flite_buffer* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  %130 = load i32, i32* @VB2_BUF_STATE_DONE, align 4
  %131 = call i32 @vb2_buffer_done(%struct.TYPE_6__* %129, i32 %130)
  br label %132

132:                                              ; preds = %106, %101, %95, %90
  %133 = load i32, i32* @ST_FLITE_CONFIG, align 4
  %134 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %135 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %134, i32 0, i32 1
  %136 = call i64 @test_bit(i32 %133, i32* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %140 = call i32 @fimc_lite_config_update(%struct.fimc_lite* %139)
  br label %141

141:                                              ; preds = %138, %132
  %142 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %143 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %142, i32 0, i32 2
  %144 = call i64 @list_empty(i32* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %153

146:                                              ; preds = %141
  %147 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %148 = call i32 @flite_hw_capture_stop(%struct.fimc_lite* %147)
  %149 = load i32, i32* @ST_FLITE_STREAM, align 4
  %150 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %151 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %150, i32 0, i32 1
  %152 = call i32 @clear_bit(i32 %149, i32* %151)
  br label %153

153:                                              ; preds = %146, %141
  br label %154

154:                                              ; preds = %153, %64, %24
  %155 = load i32, i32* @ST_FLITE_RUN, align 4
  %156 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %157 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %156, i32 0, i32 1
  %158 = call i32 @set_bit(i32 %155, i32* %157)
  %159 = load %struct.fimc_lite*, %struct.fimc_lite** %5, align 8
  %160 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %159, i32 0, i32 0
  %161 = load i64, i64* %7, align 8
  %162 = call i32 @spin_unlock_irqrestore(i32* %160, i64 %161)
  %163 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %163
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @flite_hw_get_interrupt_source(%struct.fimc_lite*) #1

declare dso_local i32 @flite_hw_clear_pending_irq(%struct.fimc_lite*) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @flite_hw_clear_last_capture_end(%struct.fimc_lite*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local %struct.flite_buffer* @fimc_lite_pending_queue_pop(%struct.fimc_lite*) #1

declare dso_local i32 @flite_hw_set_dma_buffer(%struct.fimc_lite*, %struct.flite_buffer*) #1

declare dso_local i32 @fimc_lite_active_queue_add(%struct.fimc_lite*, %struct.flite_buffer*) #1

declare dso_local %struct.flite_buffer* @fimc_lite_active_queue_pop(%struct.fimc_lite*) #1

declare dso_local i32 @ktime_get_ns(...) #1

declare dso_local i32 @flite_hw_mask_dma_buffer(%struct.fimc_lite*, i32) #1

declare dso_local i32 @vb2_buffer_done(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @fimc_lite_config_update(%struct.fimc_lite*) #1

declare dso_local i32 @flite_hw_capture_stop(%struct.fimc_lite*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
