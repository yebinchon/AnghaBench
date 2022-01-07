; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_irq_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_irq_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32, i32)* }

@C_CAN_CTRL_REG = common dso_local global i32 0, align 4
@CONTROL_IRQMSK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.c_can_priv*, i32)* @c_can_irq_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_can_irq_control(%struct.c_can_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.c_can_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.c_can_priv* %0, %struct.c_can_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %7 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %6, i32 0, i32 0
  %8 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %7, align 8
  %9 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %10 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %11 = call i32 %8(%struct.c_can_priv* %9, i32 %10)
  %12 = load i32, i32* @CONTROL_IRQMSK, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load i32, i32* @CONTROL_IRQMSK, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %23 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %22, i32 0, i32 1
  %24 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %23, align 8
  %25 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %26 = load i32, i32* @C_CAN_CTRL_REG, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 %24(%struct.c_can_priv* %25, i32 %26, i32 %27)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
