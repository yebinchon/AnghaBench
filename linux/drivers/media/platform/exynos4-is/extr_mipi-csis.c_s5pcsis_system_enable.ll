; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_system_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_mipi-csis.c_s5pcsis_system_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csis_state = type { i32 }

@S5PCSIS_CTRL = common dso_local global i32 0, align 4
@S5PCSIS_CTRL_ENABLE = common dso_local global i32 0, align 4
@S5PCSIS_DPHYCTRL = common dso_local global i32 0, align 4
@S5PCSIS_DPHYCTRL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.csis_state*, i32)* @s5pcsis_system_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5pcsis_system_enable(%struct.csis_state* %0, i32 %1) #0 {
  %3 = alloca %struct.csis_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.csis_state* %0, %struct.csis_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %8 = load i32, i32* @S5PCSIS_CTRL, align 4
  %9 = call i32 @s5pcsis_read(%struct.csis_state* %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i32, i32* @S5PCSIS_CTRL_ENABLE, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %5, align 4
  br label %21

16:                                               ; preds = %2
  %17 = load i32, i32* @S5PCSIS_CTRL_ENABLE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %23 = load i32, i32* @S5PCSIS_CTRL, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @s5pcsis_write(%struct.csis_state* %22, i32 %23, i32 %24)
  %26 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %27 = load i32, i32* @S5PCSIS_DPHYCTRL, align 4
  %28 = call i32 @s5pcsis_read(%struct.csis_state* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* @S5PCSIS_DPHYCTRL_ENABLE, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %5, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %21
  %36 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %37 = getelementptr inbounds %struct.csis_state, %struct.csis_state* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  %40 = shl i32 1, %39
  %41 = sub nsw i32 %40, 1
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @S5PCSIS_DPHYCTRL_ENABLE, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %35, %21
  %48 = load %struct.csis_state*, %struct.csis_state** %3, align 8
  %49 = load i32, i32* @S5PCSIS_DPHYCTRL, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @s5pcsis_write(%struct.csis_state* %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @s5pcsis_read(%struct.csis_state*, i32) #1

declare dso_local i32 @s5pcsis_write(%struct.csis_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
