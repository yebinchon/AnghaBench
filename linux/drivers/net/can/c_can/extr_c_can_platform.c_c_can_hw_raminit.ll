; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can_platform.c_c_can_hw_raminit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can_platform.c_c_can_hw_raminit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32)* }

@C_CAN_FUNCTION_REG = common dso_local global i32 0, align 4
@DCAN_RAM_INIT_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c_can_priv*, i32)* @c_can_hw_raminit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_can_hw_raminit(%struct.c_can_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.c_can_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.c_can_priv* %0, %struct.c_can_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %7 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %6, i32 0, i32 1
  %8 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %7, align 8
  %9 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %10 = load i32, i32* @C_CAN_FUNCTION_REG, align 4
  %11 = call i32 %8(%struct.c_can_priv* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @DCAN_RAM_INIT_BIT, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %5, align 4
  %16 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %17 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %16, i32 0, i32 0
  %18 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %17, align 8
  %19 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %20 = load i32, i32* @C_CAN_FUNCTION_REG, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 %18(%struct.c_can_priv* %19, i32 %20, i32 %21)
  %23 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @c_can_hw_raminit_wait(%struct.c_can_priv* %23, i32 %24)
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %2
  %29 = load i32, i32* @DCAN_RAM_INIT_BIT, align 4
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %33 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %32, i32 0, i32 0
  %34 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %33, align 8
  %35 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %36 = load i32, i32* @C_CAN_FUNCTION_REG, align 4
  %37 = load i32, i32* %5, align 4
  %38 = call i32 %34(%struct.c_can_priv* %35, i32 %36, i32 %37)
  %39 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @c_can_hw_raminit_wait(%struct.c_can_priv* %39, i32 %40)
  br label %42

42:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @c_can_hw_raminit_wait(%struct.c_can_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
