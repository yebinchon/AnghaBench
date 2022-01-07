; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_config_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-lite.c_fimc_lite_config_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_lite = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ST_FLITE_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fimc_lite*)* @fimc_lite_config_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fimc_lite_config_update(%struct.fimc_lite* %0) #0 {
  %2 = alloca %struct.fimc_lite*, align 8
  store %struct.fimc_lite* %0, %struct.fimc_lite** %2, align 8
  %3 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %4 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %5 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %4, i32 0, i32 3
  %6 = call i32 @flite_hw_set_window_offset(%struct.fimc_lite* %3, i32* %5)
  %7 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %8 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %9 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %8, i32 0, i32 2
  %10 = call i32 @flite_hw_set_dma_window(%struct.fimc_lite* %7, i32* %9)
  %11 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %12 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %13 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @flite_hw_set_test_pattern(%struct.fimc_lite* %11, i32 %16)
  %18 = load i32, i32* @ST_FLITE_CONFIG, align 4
  %19 = load %struct.fimc_lite*, %struct.fimc_lite** %2, align 8
  %20 = getelementptr inbounds %struct.fimc_lite, %struct.fimc_lite* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  ret void
}

declare dso_local i32 @flite_hw_set_window_offset(%struct.fimc_lite*, i32*) #1

declare dso_local i32 @flite_hw_set_dma_window(%struct.fimc_lite*, i32*) #1

declare dso_local i32 @flite_hw_set_test_pattern(%struct.fimc_lite*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
