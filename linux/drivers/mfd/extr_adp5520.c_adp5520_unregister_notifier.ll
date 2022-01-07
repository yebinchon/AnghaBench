; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_adp5520.c_adp5520_unregister_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_adp5520.c_adp5520_unregister_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.notifier_block = type { i32 }
%struct.adp5520_chip = type { i32, i32 }

@ADP5520_INTERRUPT_ENABLE = common dso_local global i32 0, align 4
@ADP5520_KP_IEN = common dso_local global i32 0, align 4
@ADP5520_KR_IEN = common dso_local global i32 0, align 4
@ADP5520_OVP_IEN = common dso_local global i32 0, align 4
@ADP5520_CMPR_IEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @adp5520_unregister_notifier(%struct.device* %0, %struct.notifier_block* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.adp5520_chip*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.notifier_block* %1, %struct.notifier_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call %struct.adp5520_chip* @dev_get_drvdata(%struct.device* %8)
  store %struct.adp5520_chip* %9, %struct.adp5520_chip** %7, align 8
  %10 = load %struct.adp5520_chip*, %struct.adp5520_chip** %7, align 8
  %11 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ADP5520_INTERRUPT_ENABLE, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @ADP5520_KP_IEN, align 4
  %16 = load i32, i32* @ADP5520_KR_IEN, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ADP5520_OVP_IEN, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @ADP5520_CMPR_IEN, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %14, %21
  %23 = call i32 @adp5520_clr_bits(i32 %12, i32 %13, i32 %22)
  %24 = load %struct.adp5520_chip*, %struct.adp5520_chip** %7, align 8
  %25 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %24, i32 0, i32 0
  %26 = load %struct.notifier_block*, %struct.notifier_block** %5, align 8
  %27 = call i32 @blocking_notifier_chain_unregister(i32* %25, %struct.notifier_block* %26)
  ret i32 %27
}

declare dso_local %struct.adp5520_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @adp5520_clr_bits(i32, i32, i32) #1

declare dso_local i32 @blocking_notifier_chain_unregister(i32*, %struct.notifier_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
