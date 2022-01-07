; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_port_irq_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_port_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_ethernet_port = type { %struct.gemini_ethernet* }
%struct.gemini_ethernet = type { i32, i64 }

@SWFQ_EMPTY_INT_BIT = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_STATUS_4_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_ENABLE_4_REG = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gemini_port_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_port_irq_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.gemini_ethernet_port*, align 8
  %7 = alloca %struct.gemini_ethernet*, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i64, i64* @SWFQ_EMPTY_INT_BIT, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.gemini_ethernet_port*
  store %struct.gemini_ethernet_port* %11, %struct.gemini_ethernet_port** %6, align 8
  %12 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %6, align 8
  %13 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %12, i32 0, i32 0
  %14 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %13, align 8
  store %struct.gemini_ethernet* %14, %struct.gemini_ethernet** %7, align 8
  %15 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %16 = call i32 @geth_fill_freeq(%struct.gemini_ethernet* %15, i32 1)
  %17 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %18 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %17, i32 0, i32 0
  %19 = load i64, i64* %8, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %23 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @GLOBAL_INTERRUPT_STATUS_4_REG, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i64 %21, i64 %26)
  %28 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %29 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_4_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i64 @readl(i64 %32)
  %34 = load i64, i64* %5, align 8
  %35 = or i64 %34, %33
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %38 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_4_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @writel(i64 %36, i64 %41)
  %43 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %7, align 8
  %44 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %43, i32 0, i32 0
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %47
}

declare dso_local i32 @geth_fill_freeq(%struct.gemini_ethernet*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel(i64, i64) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
