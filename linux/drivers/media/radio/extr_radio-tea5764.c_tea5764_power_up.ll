; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5764.c_tea5764_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5764.c_tea5764_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tea5764_device = type { %struct.tea5764_regs }
%struct.tea5764_regs = type { i32, i32 }

@TEA5764_TNCTRL_PUPD0 = common dso_local global i32 0, align 4
@TEA5764_TNCTRL_AFM = common dso_local global i32 0, align 4
@TEA5764_TNCTRL_MU = common dso_local global i32 0, align 4
@TEA5764_TNCTRL_HLSI = common dso_local global i32 0, align 4
@use_xtal = common dso_local global i32 0, align 4
@TEA5764_TESTREG_TRIGFR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tea5764_device*)* @tea5764_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tea5764_power_up(%struct.tea5764_device* %0) #0 {
  %2 = alloca %struct.tea5764_device*, align 8
  %3 = alloca %struct.tea5764_regs*, align 8
  store %struct.tea5764_device* %0, %struct.tea5764_device** %2, align 8
  %4 = load %struct.tea5764_device*, %struct.tea5764_device** %2, align 8
  %5 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %4, i32 0, i32 0
  store %struct.tea5764_regs* %5, %struct.tea5764_regs** %3, align 8
  %6 = load %struct.tea5764_regs*, %struct.tea5764_regs** %3, align 8
  %7 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TEA5764_TNCTRL_PUPD0, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %46, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @TEA5764_TNCTRL_AFM, align 4
  %14 = load i32, i32* @TEA5764_TNCTRL_MU, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @TEA5764_TNCTRL_HLSI, align 4
  %17 = or i32 %15, %16
  %18 = xor i32 %17, -1
  %19 = load %struct.tea5764_regs*, %struct.tea5764_regs** %3, align 8
  %20 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load i32, i32* @use_xtal, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %12
  %26 = load i32, i32* @TEA5764_TESTREG_TRIGFR, align 4
  %27 = load %struct.tea5764_regs*, %struct.tea5764_regs** %3, align 8
  %28 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 4
  br label %38

31:                                               ; preds = %12
  %32 = load i32, i32* @TEA5764_TESTREG_TRIGFR, align 4
  %33 = xor i32 %32, -1
  %34 = load %struct.tea5764_regs*, %struct.tea5764_regs** %3, align 8
  %35 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %36, %33
  store i32 %37, i32* %35, align 4
  br label %38

38:                                               ; preds = %31, %25
  %39 = load i32, i32* @TEA5764_TNCTRL_PUPD0, align 4
  %40 = load %struct.tea5764_regs*, %struct.tea5764_regs** %3, align 8
  %41 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 4
  %44 = load %struct.tea5764_device*, %struct.tea5764_device** %2, align 8
  %45 = call i32 @tea5764_i2c_write(%struct.tea5764_device* %44)
  br label %46

46:                                               ; preds = %38, %1
  ret void
}

declare dso_local i32 @tea5764_i2c_write(%struct.tea5764_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
