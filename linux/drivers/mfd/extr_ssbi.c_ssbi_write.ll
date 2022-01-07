; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ssbi.c_ssbi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ssbi.c_ssbi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ssbi = type { i32 (%struct.ssbi*, i32, i32*, i32)*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ssbi_write(%struct.device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ssbi*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = call %struct.ssbi* @dev_get_drvdata(%struct.device* %12)
  store %struct.ssbi* %13, %struct.ssbi** %9, align 8
  %14 = load %struct.ssbi*, %struct.ssbi** %9, align 8
  %15 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %14, i32 0, i32 1
  %16 = load i64, i64* %10, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.ssbi*, %struct.ssbi** %9, align 8
  %19 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %18, i32 0, i32 0
  %20 = load i32 (%struct.ssbi*, i32, i32*, i32)*, i32 (%struct.ssbi*, i32, i32*, i32)** %19, align 8
  %21 = load %struct.ssbi*, %struct.ssbi** %9, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 %20(%struct.ssbi* %21, i32 %22, i32* %23, i32 %24)
  store i32 %25, i32* %11, align 4
  %26 = load %struct.ssbi*, %struct.ssbi** %9, align 8
  %27 = getelementptr inbounds %struct.ssbi, %struct.ssbi* %26, i32 0, i32 1
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  %30 = load i32, i32* %11, align 4
  ret i32 %30
}

declare dso_local %struct.ssbi* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
