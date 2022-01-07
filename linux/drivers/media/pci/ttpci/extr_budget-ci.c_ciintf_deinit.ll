; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_ciintf_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ttpci/extr_budget-ci.c_ciintf_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.budget_ci = type { i32, %struct.TYPE_2__, i32, i64 }
%struct.TYPE_2__ = type { %struct.saa7146_dev* }
%struct.saa7146_dev = type { i32 }

@MASK_03 = common dso_local global i32 0, align 4
@SAA7146_GPIO_INPUT = common dso_local global i32 0, align 4
@DEBICICTL = common dso_local global i32 0, align 4
@DEBIADDR_CICONTROL = common dso_local global i32 0, align 4
@CICONTROL_RESET = common dso_local global i32 0, align 4
@MC1 = common dso_local global i32 0, align 4
@MASK_27 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.budget_ci*)* @ciintf_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ciintf_deinit(%struct.budget_ci* %0) #0 {
  %2 = alloca %struct.budget_ci*, align 8
  %3 = alloca %struct.saa7146_dev*, align 8
  store %struct.budget_ci* %0, %struct.budget_ci** %2, align 8
  %4 = load %struct.budget_ci*, %struct.budget_ci** %2, align 8
  %5 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %6, align 8
  store %struct.saa7146_dev* %7, %struct.saa7146_dev** %3, align 8
  %8 = load %struct.budget_ci*, %struct.budget_ci** %2, align 8
  %9 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %1
  %13 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %14 = load i32, i32* @MASK_03, align 4
  %15 = call i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev* %13, i32 %14)
  %16 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %17 = load i32, i32* @SAA7146_GPIO_INPUT, align 4
  %18 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %16, i32 0, i32 %17)
  %19 = load %struct.budget_ci*, %struct.budget_ci** %2, align 8
  %20 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %19, i32 0, i32 2
  %21 = call i32 @tasklet_kill(i32* %20)
  br label %22

22:                                               ; preds = %12, %1
  %23 = load %struct.budget_ci*, %struct.budget_ci** %2, align 8
  %24 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %23, i32 0, i32 1
  %25 = load i32, i32* @DEBICICTL, align 4
  %26 = load i32, i32* @DEBIADDR_CICONTROL, align 4
  %27 = call i32 @ttpci_budget_debiwrite(%struct.TYPE_2__* %24, i32 %25, i32 %26, i32 1, i32 0, i32 1, i32 0)
  %28 = call i32 @msleep(i32 1)
  %29 = load %struct.budget_ci*, %struct.budget_ci** %2, align 8
  %30 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %29, i32 0, i32 1
  %31 = load i32, i32* @DEBICICTL, align 4
  %32 = load i32, i32* @DEBIADDR_CICONTROL, align 4
  %33 = load i32, i32* @CICONTROL_RESET, align 4
  %34 = call i32 @ttpci_budget_debiwrite(%struct.TYPE_2__* %30, i32 %31, i32 %32, i32 1, i32 %33, i32 1, i32 0)
  %35 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %36 = load i32, i32* @SAA7146_GPIO_INPUT, align 4
  %37 = call i32 @saa7146_setgpio(%struct.saa7146_dev* %35, i32 1, i32 %36)
  %38 = load %struct.budget_ci*, %struct.budget_ci** %2, align 8
  %39 = getelementptr inbounds %struct.budget_ci, %struct.budget_ci* %38, i32 0, i32 0
  %40 = call i32 @dvb_ca_en50221_release(i32* %39)
  %41 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %42 = load i32, i32* @MC1, align 4
  %43 = load i32, i32* @MASK_27, align 4
  %44 = call i32 @saa7146_write(%struct.saa7146_dev* %41, i32 %42, i32 %43)
  ret void
}

declare dso_local i32 @SAA7146_IER_DISABLE(%struct.saa7146_dev*, i32) #1

declare dso_local i32 @saa7146_setgpio(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @tasklet_kill(i32*) #1

declare dso_local i32 @ttpci_budget_debiwrite(%struct.TYPE_2__*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dvb_ca_en50221_release(i32*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
