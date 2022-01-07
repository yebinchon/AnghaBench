; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_clk_ungate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_clk_ungate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_host = type { i64, i32, i32, i64 }

@SD_EMMC_CFG = common dso_local global i64 0, align 8
@CFG_STOP_CLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_host*)* @meson_mmc_clk_ungate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mmc_clk_ungate(%struct.meson_host* %0) #0 {
  %2 = alloca %struct.meson_host*, align 8
  %3 = alloca i32, align 4
  store %struct.meson_host* %0, %struct.meson_host** %2, align 8
  %4 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %5 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %4, i32 0, i32 3
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %10 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %13 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pinctrl_select_state(i32 %11, i32 %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %18 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SD_EMMC_CFG, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* @CFG_STOP_CLOCK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %29 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SD_EMMC_CFG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  ret void
}

declare dso_local i32 @pinctrl_select_state(i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
