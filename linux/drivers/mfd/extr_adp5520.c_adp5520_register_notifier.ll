; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_adp5520.c_adp5520_register_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_adp5520.c_adp5520_register_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.notifier_block = type { i32 }
%struct.adp5520_chip = type { i32, i32, i64 }

@ADP5520_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@ADP5520_KP_IEN = common dso_local global i32 0, align 4
@ADP5520_KR_IEN = common dso_local global i32 0, align 4
@ADP5520_OVP_IEN = common dso_local global i32 0, align 4
@ADP5520_CMPR_IEN = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adp5520_register_notifier(%struct.device* %0, %struct.notifier_block* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.notifier_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.adp5520_chip*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call %struct.adp5520_chip* @dev_get_drvdata(%struct.device* %9)
  store %struct.adp5520_chip* %10, %struct.adp5520_chip** %8, align 8
  %11 = load %struct.adp5520_chip*, %struct.adp5520_chip** %8, align 8
  %12 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %3
  %16 = load %struct.adp5520_chip*, %struct.adp5520_chip** %8, align 8
  %17 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ADP5520_INTERRUPT_ENABLE, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ADP5520_KP_IEN, align 4
  %22 = load i32, i32* @ADP5520_KR_IEN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ADP5520_OVP_IEN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ADP5520_CMPR_IEN, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %20, %27
  %29 = call i32 @adp5520_set_bits(i32 %18, i32 %19, i32 %28)
  %30 = load %struct.adp5520_chip*, %struct.adp5520_chip** %8, align 8
  %31 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %30, i32 0, i32 0
  %32 = load %struct.notifier_block*, %struct.notifier_block** %6, align 8
  %33 = call i32 @blocking_notifier_chain_register(i32* %31, %struct.notifier_block* %32)
  store i32 %33, i32* %4, align 4
  br label %37

34:                                               ; preds = %3
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %34, %15
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.adp5520_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @adp5520_set_bits(i32, i32, i32) #1

declare dso_local i32 @blocking_notifier_chain_register(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
