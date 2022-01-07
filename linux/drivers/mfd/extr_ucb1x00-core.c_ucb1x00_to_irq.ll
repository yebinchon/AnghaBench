; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_to_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ucb1x00-core.c_ucb1x00_to_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpio_chip = type { i32 }
%struct.ucb1x00 = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gpio_chip*, i32)* @ucb1x00_to_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_to_irq(%struct.gpio_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.gpio_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucb1x00*, align 8
  store %struct.gpio_chip* %0, %struct.gpio_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.gpio_chip*, %struct.gpio_chip** %3, align 8
  %7 = call %struct.ucb1x00* @gpiochip_get_data(%struct.gpio_chip* %6)
  store %struct.ucb1x00* %7, %struct.ucb1x00** %5, align 8
  %8 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %9 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sgt i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.ucb1x00*, %struct.ucb1x00** %5, align 8
  %14 = getelementptr inbounds %struct.ucb1x00, %struct.ucb1x00* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = add nsw i64 %15, %17
  br label %23

19:                                               ; preds = %2
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  %22 = sext i32 %21 to i64
  br label %23

23:                                               ; preds = %19, %12
  %24 = phi i64 [ %18, %12 ], [ %22, %19 ]
  %25 = trunc i64 %24 to i32
  ret i32 %25
}

declare dso_local %struct.ucb1x00* @gpiochip_get_data(%struct.gpio_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
