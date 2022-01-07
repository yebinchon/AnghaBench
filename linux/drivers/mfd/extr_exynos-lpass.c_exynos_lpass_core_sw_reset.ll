; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_exynos-lpass.c_exynos_lpass_core_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_exynos-lpass.c_exynos_lpass_core_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_lpass = type { i32 }

@SFR_LPASS_CORE_SW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.exynos_lpass*, i32)* @exynos_lpass_core_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @exynos_lpass_core_sw_reset(%struct.exynos_lpass* %0, i32 %1) #0 {
  %3 = alloca %struct.exynos_lpass*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.exynos_lpass* %0, %struct.exynos_lpass** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.exynos_lpass*, %struct.exynos_lpass** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_lpass, %struct.exynos_lpass* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SFR_LPASS_CORE_SW_RESET, align 4
  %10 = call i32 @regmap_read(i32 %8, i32 %9, i32* %5)
  %11 = load i32, i32* %4, align 4
  %12 = xor i32 %11, -1
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.exynos_lpass*, %struct.exynos_lpass** %3, align 8
  %16 = getelementptr inbounds %struct.exynos_lpass, %struct.exynos_lpass* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SFR_LPASS_CORE_SW_RESET, align 4
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @regmap_write(i32 %17, i32 %18, i32 %19)
  %21 = call i32 @usleep_range(i32 100, i32 150)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load %struct.exynos_lpass*, %struct.exynos_lpass** %3, align 8
  %26 = getelementptr inbounds %struct.exynos_lpass, %struct.exynos_lpass* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SFR_LPASS_CORE_SW_RESET, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @regmap_write(i32 %27, i32 %28, i32 %29)
  ret void
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
