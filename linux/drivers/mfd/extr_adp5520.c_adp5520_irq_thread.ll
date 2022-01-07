; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_adp5520.c_adp5520_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_adp5520.c_adp5520_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adp5520_chip = type { i32, i32 }

@ADP5520_MODE_STATUS = common dso_local global i32 0, align 4
@ADP5520_OVP_INT = common dso_local global i32 0, align 4
@ADP5520_CMPR_INT = common dso_local global i32 0, align 4
@ADP5520_GPI_INT = common dso_local global i32 0, align 4
@ADP5520_KR_INT = common dso_local global i32 0, align 4
@ADP5520_KP_INT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @adp5520_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adp5520_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.adp5520_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.adp5520_chip*
  store %struct.adp5520_chip* %10, %struct.adp5520_chip** %5, align 8
  %11 = load %struct.adp5520_chip*, %struct.adp5520_chip** %5, align 8
  %12 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @ADP5520_MODE_STATUS, align 4
  %15 = call i32 @__adp5520_read(i32 %13, i32 %14, i32* %7)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %41

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ADP5520_OVP_INT, align 4
  %22 = load i32, i32* @ADP5520_CMPR_INT, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @ADP5520_GPI_INT, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @ADP5520_KR_INT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @ADP5520_KP_INT, align 4
  %29 = or i32 %27, %28
  %30 = and i32 %20, %29
  store i32 %30, i32* %6, align 4
  %31 = load %struct.adp5520_chip*, %struct.adp5520_chip** %5, align 8
  %32 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @blocking_notifier_call_chain(i32* %32, i32 %33, i32* null)
  %35 = load %struct.adp5520_chip*, %struct.adp5520_chip** %5, align 8
  %36 = getelementptr inbounds %struct.adp5520_chip, %struct.adp5520_chip* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ADP5520_MODE_STATUS, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @__adp5520_ack_bits(i32 %37, i32 %38, i32 %39)
  br label %41

41:                                               ; preds = %19, %18
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %42
}

declare dso_local i32 @__adp5520_read(i32, i32, i32*) #1

declare dso_local i32 @blocking_notifier_call_chain(i32*, i32, i32*) #1

declare dso_local i32 @__adp5520_ack_bits(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
