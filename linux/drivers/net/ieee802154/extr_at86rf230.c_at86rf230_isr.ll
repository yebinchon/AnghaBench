; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ieee802154/extr_at86rf230.c_at86rf230_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.at86rf230_local = type { i32 }
%struct.at86rf230_state_change = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@RG_IRQ_STATUS = common dso_local global i32 0, align 4
@CMD_REG_MASK = common dso_local global i32 0, align 4
@CMD_REG = common dso_local global i32 0, align 4
@at86rf230_irq_status = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at86rf230_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at86rf230_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.at86rf230_local*, align 8
  %7 = alloca %struct.at86rf230_state_change*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.at86rf230_local*
  store %struct.at86rf230_local* %10, %struct.at86rf230_local** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @disable_irq_nosync(i32 %11)
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.at86rf230_state_change* @kzalloc(i32 24, i32 %13)
  store %struct.at86rf230_state_change* %14, %struct.at86rf230_state_change** %7, align 8
  %15 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %16 = icmp ne %struct.at86rf230_state_change* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @enable_irq(i32 %18)
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %58

21:                                               ; preds = %2
  %22 = load %struct.at86rf230_local*, %struct.at86rf230_local** %6, align 8
  %23 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %24 = call i32 @at86rf230_setup_spi_messages(%struct.at86rf230_local* %22, %struct.at86rf230_state_change* %23)
  %25 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %26 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* @RG_IRQ_STATUS, align 4
  %28 = load i32, i32* @CMD_REG_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @CMD_REG, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %33 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load i32, i32* @at86rf230_irq_status, align 4
  %37 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %38 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 8
  %40 = load %struct.at86rf230_local*, %struct.at86rf230_local** %6, align 8
  %41 = getelementptr inbounds %struct.at86rf230_local, %struct.at86rf230_local* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %44 = getelementptr inbounds %struct.at86rf230_state_change, %struct.at86rf230_state_change* %43, i32 0, i32 2
  %45 = call i32 @spi_async(i32 %42, %struct.TYPE_2__* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %21
  %49 = load %struct.at86rf230_local*, %struct.at86rf230_local** %6, align 8
  %50 = load %struct.at86rf230_state_change*, %struct.at86rf230_state_change** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @at86rf230_async_error(%struct.at86rf230_local* %49, %struct.at86rf230_state_change* %50, i32 %51)
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @enable_irq(i32 %53)
  %55 = load i32, i32* @IRQ_NONE, align 4
  store i32 %55, i32* %3, align 4
  br label %58

56:                                               ; preds = %21
  %57 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %48, %17
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @disable_irq_nosync(i32) #1

declare dso_local %struct.at86rf230_state_change* @kzalloc(i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @at86rf230_setup_spi_messages(%struct.at86rf230_local*, %struct.at86rf230_state_change*) #1

declare dso_local i32 @spi_async(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @at86rf230_async_error(%struct.at86rf230_local*, %struct.at86rf230_state_change*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
