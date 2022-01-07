; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_cec_dev = type { i64 }

@CEC_FILTER_THRESHOLD = common dso_local global i32 0, align 4
@S5P_CEC_RX_FILTER_TH = common dso_local global i64 0, align 8
@S5P_CEC_RX_FILTER_CTRL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_cec_threshold(%struct.s5p_cec_dev* %0) #0 {
  %2 = alloca %struct.s5p_cec_dev*, align 8
  store %struct.s5p_cec_dev* %0, %struct.s5p_cec_dev** %2, align 8
  %3 = load i32, i32* @CEC_FILTER_THRESHOLD, align 4
  %4 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %5 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @S5P_CEC_RX_FILTER_TH, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @writeb(i32 %3, i64 %8)
  %10 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %2, align 8
  %11 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @S5P_CEC_RX_FILTER_CTRL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writeb(i32 0, i64 %14)
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
