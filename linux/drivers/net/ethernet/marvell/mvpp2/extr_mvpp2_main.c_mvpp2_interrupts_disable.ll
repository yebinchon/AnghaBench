; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_interrupts_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_main.c_mvpp2_interrupts_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2_port*)* @mvpp2_interrupts_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_interrupts_disable(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %22, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %25

11:                                               ; preds = %5
  %12 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %13 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %12, i32 0, i32 3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %11
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %5

25:                                               ; preds = %5
  %26 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %27 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %30 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @MVPP2_ISR_ENABLE_REG(i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @MVPP2_ISR_DISABLE_INTERRUPT(i32 %33)
  %35 = call i32 @mvpp2_write(i32 %28, i32 %32, i32 %34)
  ret void
}

declare dso_local i32 @mvpp2_write(i32, i32, i32) #1

declare dso_local i32 @MVPP2_ISR_ENABLE_REG(i32) #1

declare dso_local i32 @MVPP2_ISR_DISABLE_INTERRUPT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
