; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.h_xvip_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/xilinx/extr_xilinx-vip.h_xvip_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xvip_device = type { i32 }

@XVIP_CTRL_CONTROL = common dso_local global i32 0, align 4
@XVIP_CTRL_CONTROL_SW_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xvip_device*)* @xvip_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xvip_suspend(%struct.xvip_device* %0) #0 {
  %2 = alloca %struct.xvip_device*, align 8
  store %struct.xvip_device* %0, %struct.xvip_device** %2, align 8
  %3 = load %struct.xvip_device*, %struct.xvip_device** %2, align 8
  %4 = load i32, i32* @XVIP_CTRL_CONTROL, align 4
  %5 = call i32 @xvip_read(%struct.xvip_device* %3, i32 %4)
  %6 = load %struct.xvip_device*, %struct.xvip_device** %2, align 8
  %7 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load %struct.xvip_device*, %struct.xvip_device** %2, align 8
  %9 = load i32, i32* @XVIP_CTRL_CONTROL, align 4
  %10 = load %struct.xvip_device*, %struct.xvip_device** %2, align 8
  %11 = getelementptr inbounds %struct.xvip_device, %struct.xvip_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @XVIP_CTRL_CONTROL_SW_ENABLE, align 4
  %14 = xor i32 %13, -1
  %15 = and i32 %12, %14
  %16 = call i32 @xvip_write(%struct.xvip_device* %8, i32 %9, i32 %15)
  ret void
}

declare dso_local i32 @xvip_read(%struct.xvip_device*, i32) #1

declare dso_local i32 @xvip_write(%struct.xvip_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
