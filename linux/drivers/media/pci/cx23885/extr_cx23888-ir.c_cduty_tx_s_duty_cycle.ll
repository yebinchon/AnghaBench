; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cduty_tx_s_duty_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23888-ir.c_cduty_tx_s_duty_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx23885_dev = type { i32 }

@CX23888_IR_CDUTY_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx23885_dev*, i32)* @cduty_tx_s_duty_cycle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cduty_tx_s_duty_cycle(%struct.cx23885_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.cx23885_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cx23885_dev* %0, %struct.cx23885_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = mul i32 %6, 100
  %8 = call i32 @DIV_ROUND_CLOSEST(i32 %7, i32 625)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = add nsw i32 %12, -1
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %11, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp sgt i32 %15, 15
  br i1 %16, label %17, label %18

17:                                               ; preds = %14
  store i32 15, i32* %5, align 4
  br label %18

18:                                               ; preds = %17, %14
  %19 = load %struct.cx23885_dev*, %struct.cx23885_dev** %3, align 8
  %20 = load i32, i32* @CX23888_IR_CDUTY_REG, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @cx23888_ir_write4(%struct.cx23885_dev* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %23, 1
  %25 = mul nsw i32 %24, 100
  %26 = call i32 @DIV_ROUND_CLOSEST(i32 %25, i32 16)
  ret i32 %26
}

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @cx23888_ir_write4(%struct.cx23885_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
