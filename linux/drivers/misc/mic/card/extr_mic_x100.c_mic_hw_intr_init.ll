; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/card/extr_mic_x100.c_mic_hw_intr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/card/extr_mic_x100.c_mic_hw_intr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_driver = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MIC_X100_NUM_SBOX_IRQ = common dso_local global i64 0, align 8
@MIC_X100_NUM_RDMASR_IRQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mic_hw_intr_init(%struct.mic_driver* %0) #0 {
  %2 = alloca %struct.mic_driver*, align 8
  store %struct.mic_driver* %0, %struct.mic_driver** %2, align 8
  %3 = load i64, i64* @MIC_X100_NUM_SBOX_IRQ, align 8
  %4 = load i64, i64* @MIC_X100_NUM_RDMASR_IRQ, align 8
  %5 = add nsw i64 %3, %4
  %6 = load %struct.mic_driver*, %struct.mic_driver** %2, align 8
  %7 = getelementptr inbounds %struct.mic_driver, %struct.mic_driver* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  store i64 %5, i64* %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
