; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5764.c_tea5764_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5764.c_tea5764_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tea5764_device = type { %struct.tea5764_regs }
%struct.tea5764_regs = type { i32 }

@TEA5764_TNCTRL_PUPD0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tea5764_device*)* @tea5764_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tea5764_power_down(%struct.tea5764_device* %0) #0 {
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
  br i1 %11, label %12, label %21

12:                                               ; preds = %1
  %13 = load i32, i32* @TEA5764_TNCTRL_PUPD0, align 4
  %14 = xor i32 %13, -1
  %15 = load %struct.tea5764_regs*, %struct.tea5764_regs** %3, align 8
  %16 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, %14
  store i32 %18, i32* %16, align 4
  %19 = load %struct.tea5764_device*, %struct.tea5764_device** %2, align 8
  %20 = call i32 @tea5764_i2c_write(%struct.tea5764_device* %19)
  br label %21

21:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @tea5764_i2c_write(%struct.tea5764_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
