; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_port_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gemini_port_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gemini_ethernet_port = type { %struct.gemini_ethernet* }
%struct.gemini_ethernet = type { i32, i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@GLOBAL_INTERRUPT_STATUS_4_REG = common dso_local global i64 0, align 8
@GLOBAL_INTERRUPT_ENABLE_4_REG = common dso_local global i64 0, align 8
@SWFQ_EMPTY_INT_BIT = common dso_local global i32 0, align 4
@GMAC0_RX_OVERRUN_INT_BIT = common dso_local global i32 0, align 4
@GMAC1_RX_OVERRUN_INT_BIT = common dso_local global i32 0, align 4
@IRQ_WAKE_THREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @gemini_port_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gemini_port_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.gemini_ethernet_port*, align 8
  %6 = alloca %struct.gemini_ethernet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.gemini_ethernet_port*
  store %struct.gemini_ethernet_port* %11, %struct.gemini_ethernet_port** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %7, align 4
  %13 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %14 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %13, i32 0, i32 0
  %15 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %14, align 8
  store %struct.gemini_ethernet* %15, %struct.gemini_ethernet** %6, align 8
  %16 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %6, align 8
  %17 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %16, i32 0, i32 0
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %6, align 8
  %20 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @GLOBAL_INTERRUPT_STATUS_4_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @readl(i64 %23)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %6, align 8
  %26 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_4_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @readl(i64 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %31, %32
  %34 = load i32, i32* @SWFQ_EMPTY_INT_BIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %2
  %38 = load i32, i32* @SWFQ_EMPTY_INT_BIT, align 4
  %39 = load i32, i32* @GMAC0_RX_OVERRUN_INT_BIT, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @GMAC1_RX_OVERRUN_INT_BIT, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %6, align 8
  %48 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @GLOBAL_INTERRUPT_ENABLE_4_REG, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @writel(i32 %46, i64 %51)
  %53 = load i32, i32* @IRQ_WAKE_THREAD, align 4
  store i32 %53, i32* %7, align 4
  br label %54

54:                                               ; preds = %37, %2
  %55 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %6, align 8
  %56 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load i32, i32* %7, align 4
  ret i32 %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
