; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_adp5520.c_adp5520_clr_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_adp5520.c_adp5520_clr_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.adp5520_chip = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adp5520_clr_bits(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.adp5520_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.adp5520_chip* @dev_get_drvdata(%struct.device* %10)
  store %struct.adp5520_chip* %11, %struct.adp5520_chip** %7, align 8
  %12 = load %struct.adp5520_chip*, %struct.adp5520_chip** %7, align 8
  %13 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.adp5520_chip*, %struct.adp5520_chip** %7, align 8
  %16 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @__adp5520_read(i32 %17, i32 %18, i32* %8)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %38, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %22
  %28 = load i32, i32* %6, align 4
  %29 = xor i32 %28, -1
  %30 = load i32, i32* %8, align 4
  %31 = and i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load %struct.adp5520_chip*, %struct.adp5520_chip** %7, align 8
  %33 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @__adp5520_write(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %9, align 4
  br label %38

38:                                               ; preds = %27, %22, %3
  %39 = load %struct.adp5520_chip*, %struct.adp5520_chip** %7, align 8
  %40 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local %struct.adp5520_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__adp5520_read(i32, i32, i32*) #1

declare dso_local i32 @__adp5520_write(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
