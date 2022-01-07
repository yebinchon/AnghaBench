; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5764.c_tea5764_get_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/radio/extr_radio-tea5764.c_tea5764_get_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tea5764_device = type { %struct.tea5764_regs }
%struct.tea5764_regs = type { i32, i32 }

@TEA5764_TNCTRL_HLSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tea5764_device*)* @tea5764_get_freq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tea5764_get_freq(%struct.tea5764_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tea5764_device*, align 8
  %4 = alloca %struct.tea5764_regs*, align 8
  store %struct.tea5764_device* %0, %struct.tea5764_device** %3, align 8
  %5 = load %struct.tea5764_device*, %struct.tea5764_device** %3, align 8
  %6 = getelementptr inbounds %struct.tea5764_device, %struct.tea5764_device* %5, i32 0, i32 0
  store %struct.tea5764_regs* %6, %struct.tea5764_regs** %4, align 8
  %7 = load %struct.tea5764_regs*, %struct.tea5764_regs** %4, align 8
  %8 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @TEA5764_TNCTRL_HLSI, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.tea5764_regs*, %struct.tea5764_regs** %4, align 8
  %15 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %16, 8192
  %18 = sub nsw i32 %17, 225000
  store i32 %18, i32* %2, align 4
  br label %25

19:                                               ; preds = %1
  %20 = load %struct.tea5764_regs*, %struct.tea5764_regs** %4, align 8
  %21 = getelementptr inbounds %struct.tea5764_regs, %struct.tea5764_regs* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = mul nsw i32 %22, 8192
  %24 = add nsw i32 %23, 225000
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %19, %13
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
