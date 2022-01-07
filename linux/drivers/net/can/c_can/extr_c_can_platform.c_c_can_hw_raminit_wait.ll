; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can_platform.c_c_can_hw_raminit_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can_platform.c_c_can_hw_raminit_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32)* }

@C_CAN_FUNCTION_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c_can_priv*, i32)* @c_can_hw_raminit_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_can_hw_raminit_wait(%struct.c_can_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.c_can_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.c_can_priv* %0, %struct.c_can_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %5

5:                                                ; preds = %15, %2
  %6 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %7 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %6, i32 0, i32 0
  %8 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %7, align 8
  %9 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %10 = load i32, i32* @C_CAN_FUNCTION_REG, align 4
  %11 = call i32 %8(%struct.c_can_priv* %9, i32 %10)
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = call i32 @udelay(i32 1)
  br label %5

17:                                               ; preds = %5
  ret void
}

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
