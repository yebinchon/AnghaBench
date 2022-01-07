; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_clr_pending_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_clr_pending_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_cec_dev = type { i64 }

@S5P_CEC_IRQ_TX_DONE = common dso_local global i32 0, align 4
@S5P_CEC_IRQ_TX_ERROR = common dso_local global i32 0, align 4
@S5P_CEC_IRQ_CLEAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_clr_pending_tx(%struct.s5p_cec_dev* %0) #0 {
  %2 = alloca %struct.s5p_cec_dev*, align 8
  store %struct.s5p_cec_dev* %0, %struct.s5p_cec_dev** %2, align 8
  %3 = load i32, i32* @S5P_CEC_IRQ_TX_DONE, align 4
  %4 = load i32, i32* @S5P_CEC_IRQ_TX_ERROR, align 4
  %5 = or i32 %3, %4
  %6 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %7 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @S5P_CEC_IRQ_CLEAR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writeb(i32 %5, i64 %10)
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
