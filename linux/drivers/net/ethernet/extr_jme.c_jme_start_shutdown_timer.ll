; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_start_shutdown_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_jme.c_jme_start_shutdown_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_APMC = common dso_local global i32 0, align 4
@JME_APMC_PCIE_SD_EN = common dso_local global i32 0, align 4
@JME_APMC_EPIEN_CTRL = common dso_local global i32 0, align 4
@no_extplug = common dso_local global i32 0, align 4
@JME_APMC_EPIEN_CTRL_EN = common dso_local global i32 0, align 4
@JME_TIMER2 = common dso_local global i32 0, align 4
@JME_FLAG_SHUTDOWN = common dso_local global i32 0, align 4
@JME_TMCSR = common dso_local global i32 0, align 4
@TMCSR_EN = common dso_local global i32 0, align 4
@APMC_PHP_SHUTDOWN_DELAY = common dso_local global i32 0, align 4
@TMCSR_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*)* @jme_start_shutdown_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_start_shutdown_timer(%struct.jme_adapter* %0) #0 {
  %2 = alloca %struct.jme_adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %2, align 8
  %4 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %5 = load i32, i32* @JME_APMC, align 4
  %6 = call i32 @jread32(%struct.jme_adapter* %4, i32 %5)
  %7 = load i32, i32* @JME_APMC_PCIE_SD_EN, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @JME_APMC_EPIEN_CTRL, align 4
  %10 = xor i32 %9, -1
  %11 = load i32, i32* %3, align 4
  %12 = and i32 %11, %10
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @no_extplug, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %17 = load i32, i32* @JME_APMC, align 4
  %18 = load i32, i32* %3, align 4
  %19 = load i32, i32* @JME_APMC_EPIEN_CTRL_EN, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @jwrite32f(%struct.jme_adapter* %16, i32 %17, i32 %20)
  %22 = call i32 (...) @wmb()
  br label %23

23:                                               ; preds = %15, %1
  %24 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %25 = load i32, i32* @JME_APMC, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @jwrite32f(%struct.jme_adapter* %24, i32 %25, i32 %26)
  %28 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %29 = load i32, i32* @JME_TIMER2, align 4
  %30 = call i32 @jwrite32f(%struct.jme_adapter* %28, i32 %29, i32 0)
  %31 = load i32, i32* @JME_FLAG_SHUTDOWN, align 4
  %32 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %33 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %32, i32 0, i32 0
  %34 = call i32 @set_bit(i32 %31, i32* %33)
  %35 = load %struct.jme_adapter*, %struct.jme_adapter** %2, align 8
  %36 = load i32, i32* @JME_TMCSR, align 4
  %37 = load i32, i32* @TMCSR_EN, align 4
  %38 = load i32, i32* @APMC_PHP_SHUTDOWN_DELAY, align 4
  %39 = sub nsw i32 16777215, %38
  %40 = load i32, i32* @TMCSR_CNT, align 4
  %41 = and i32 %39, %40
  %42 = or i32 %37, %41
  %43 = call i32 @jwrite32(%struct.jme_adapter* %35, i32 %36, i32 %42)
  ret void
}

declare dso_local i32 @jread32(%struct.jme_adapter*, i32) #1

declare dso_local i32 @jwrite32f(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
