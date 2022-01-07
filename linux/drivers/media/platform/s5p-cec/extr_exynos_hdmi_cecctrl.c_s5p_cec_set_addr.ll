; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/s5p-cec/extr_exynos_hdmi_cecctrl.c_s5p_cec_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5p_cec_dev = type { i64 }

@S5P_CEC_LOGIC_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @s5p_cec_set_addr(%struct.s5p_cec_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.s5p_cec_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.s5p_cec_dev* %0, %struct.s5p_cec_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 15
  %7 = load %struct.s5p_cec_dev*, %struct.s5p_cec_dev** %3, align 8
  %8 = getelementptr inbounds %struct.s5p_cec_dev, %struct.s5p_cec_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @S5P_CEC_LOGIC_ADDR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @writeb(i32 %6, i64 %11)
  ret void
}

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
