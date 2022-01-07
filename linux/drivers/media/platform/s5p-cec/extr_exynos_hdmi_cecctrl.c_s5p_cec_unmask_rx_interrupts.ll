; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_unmask_rx_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_unmask_rx_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_cec_dev = type { i64 }

@S5P_CEC_IRQ_MASK = common dso_local global i64 0, align 8
@S5P_CEC_IRQ_RX_DONE = common dso_local global i32 0, align 4
@S5P_CEC_IRQ_RX_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_cec_unmask_rx_interrupts(%struct.s5p_cec_dev* %0) #0 {
  %2 = alloca %struct.s5p_cec_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.s5p_cec_dev* %0, %struct.s5p_cec_dev** %2, align 8
  %4 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %5 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @S5P_CEC_IRQ_MASK, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @readb(i64 %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* @S5P_CEC_IRQ_RX_DONE, align 4
  %11 = xor i32 %10, -1
  %12 = load i32, i32* %3, align 4
  %13 = and i32 %12, %11
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @S5P_CEC_IRQ_RX_ERROR, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %20 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @S5P_CEC_IRQ_MASK, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @writeb(i32 %18, i64 %23)
  ret void
}

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
