; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_disable_resampling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_meson-gx-mmc.c_meson_mmc_disable_resampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_host = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@ADJUST_ADJ_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.meson_host*)* @meson_mmc_disable_resampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @meson_mmc_disable_resampling(%struct.meson_host* %0) #0 {
  %2 = alloca %struct.meson_host*, align 8
  %3 = alloca i32, align 4
  store %struct.meson_host* %0, %struct.meson_host** %2, align 8
  %4 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %5 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %8 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %6, %11
  %13 = call i32 @readl(i64 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* @ADJUST_ADJ_EN, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %3, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %3, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %20 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.meson_host*, %struct.meson_host** %2, align 8
  %23 = getelementptr inbounds %struct.meson_host, %struct.meson_host* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %21, %26
  %28 = call i32 @writel(i32 %18, i64 %27)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
