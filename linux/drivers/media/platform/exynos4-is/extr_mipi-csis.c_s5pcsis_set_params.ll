; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_set_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_set_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csis_state = type { i32, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@S5PCSIS_CONFIG = common dso_local global i32 0, align 4
@S5PCSIS_CFG_NR_LANE_MASK = common dso_local global i32 0, align 4
@S5PCSIS_CTRL = common dso_local global i32 0, align 4
@S5PCSIS_CTRL_ALIGN_32BIT = common dso_local global i32 0, align 4
@S5PCSIS_CTRL_WCLK_EXTCLK = common dso_local global i32 0, align 4
@S5PCSIS_CTRL_UPDATE_SHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csis_state*)* @s5pcsis_set_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5pcsis_set_params(%struct.csis_state* %0) #0 {
  %2 = alloca %struct.csis_state*, align 8
  %3 = alloca i32, align 4
  store %struct.csis_state* %0, %struct.csis_state** %2, align 8
  %4 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %5 = load i32, i32* @S5PCSIS_CONFIG, align 4
  %6 = call i32 @s5pcsis_read(%struct.csis_state* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @S5PCSIS_CFG_NR_LANE_MASK, align 4
  %9 = xor i32 %8, -1
  %10 = and i32 %7, %9
  %11 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %12 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  %15 = or i32 %10, %14
  store i32 %15, i32* %3, align 4
  %16 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %17 = load i32, i32* @S5PCSIS_CONFIG, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @s5pcsis_write(%struct.csis_state* %16, i32 %17, i32 %18)
  %20 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %21 = call i32 @__s5pcsis_set_format(%struct.csis_state* %20)
  %22 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %23 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %24 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @s5pcsis_set_hsync_settle(%struct.csis_state* %22, i32 %25)
  %27 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %28 = load i32, i32* @S5PCSIS_CTRL, align 4
  %29 = call i32 @s5pcsis_read(%struct.csis_state* %27, i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %31 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %30, i32 0, i32 2
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 32
  br i1 %35, label %36, label %40

36:                                               ; preds = %1
  %37 = load i32, i32* @S5PCSIS_CTRL_ALIGN_32BIT, align 4
  %38 = load i32, i32* %3, align 4
  %39 = or i32 %38, %37
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %1
  %41 = load i32, i32* @S5PCSIS_CTRL_ALIGN_32BIT, align 4
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %3, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %36
  %46 = load i32, i32* @S5PCSIS_CTRL_WCLK_EXTCLK, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %3, align 4
  %50 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %51 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %45
  %55 = load i32, i32* @S5PCSIS_CTRL_WCLK_EXTCLK, align 4
  %56 = load i32, i32* %3, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %45
  %59 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %60 = load i32, i32* @S5PCSIS_CTRL, align 4
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @s5pcsis_write(%struct.csis_state* %59, i32 %60, i32 %61)
  %63 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %64 = load i32, i32* @S5PCSIS_CTRL, align 4
  %65 = call i32 @s5pcsis_read(%struct.csis_state* %63, i32 %64)
  store i32 %65, i32* %3, align 4
  %66 = load %struct.csis_state*, %struct.csis_state** %2, align 8
  %67 = load i32, i32* @S5PCSIS_CTRL, align 4
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @S5PCSIS_CTRL_UPDATE_SHADOW, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @s5pcsis_write(%struct.csis_state* %66, i32 %67, i32 %70)
  ret void
}

declare dso_local i32 @s5pcsis_read(%struct.csis_state*, i32) #1

declare dso_local i32 @s5pcsis_write(%struct.csis_state*, i32, i32) #1

declare dso_local i32 @__s5pcsis_set_format(%struct.csis_state*) #1

declare dso_local i32 @s5pcsis_set_hsync_settle(%struct.csis_state*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
