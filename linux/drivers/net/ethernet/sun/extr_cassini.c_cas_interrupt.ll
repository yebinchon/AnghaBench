; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cas = type { i32, i32, i64 }

@REG_INTR_STATUS = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@INTR_TX_ALL = common dso_local global i32 0, align 4
@INTR_TX_INTME = common dso_local global i32 0, align 4
@INTR_RX_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @cas_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.cas*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.cas* @netdev_priv(%struct.net_device* %12)
  store %struct.cas* %13, %struct.cas** %7, align 8
  %14 = load %struct.cas*, %struct.cas** %7, align 8
  %15 = getelementptr inbounds %struct.cas, %struct.cas* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @REG_INTR_STATUS, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %72

24:                                               ; preds = %2
  %25 = load %struct.cas*, %struct.cas** %7, align 8
  %26 = getelementptr inbounds %struct.cas, %struct.cas* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @INTR_TX_ALL, align 4
  %31 = load i32, i32* @INTR_TX_INTME, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %29, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %24
  %36 = load %struct.net_device*, %struct.net_device** %6, align 8
  %37 = load %struct.cas*, %struct.cas** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @cas_tx(%struct.net_device* %36, %struct.cas* %37, i32 %38)
  %40 = load i32, i32* @INTR_TX_ALL, align 4
  %41 = load i32, i32* @INTR_TX_INTME, align 4
  %42 = or i32 %40, %41
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  br label %46

46:                                               ; preds = %35, %24
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @INTR_RX_DONE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %46
  %52 = load %struct.cas*, %struct.cas** %7, align 8
  %53 = call i32 @cas_rx_ringN(%struct.cas* %52, i32 0, i32 0)
  %54 = load i32, i32* @INTR_RX_DONE, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %51, %46
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = load %struct.cas*, %struct.cas** %7, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @cas_handle_irq(%struct.net_device* %62, %struct.cas* %63, i32 %64)
  br label %66

66:                                               ; preds = %61, %58
  %67 = load %struct.cas*, %struct.cas** %7, align 8
  %68 = getelementptr inbounds %struct.cas, %struct.cas* %67, i32 0, i32 0
  %69 = load i64, i64* %8, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %71, i32* %3, align 4
  br label %72

72:                                               ; preds = %66, %22
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local %struct.cas* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @cas_tx(%struct.net_device*, %struct.cas*, i32) #1

declare dso_local i32 @cas_rx_ringN(%struct.cas*, i32, i32) #1

declare dso_local i32 @cas_handle_irq(%struct.net_device*, %struct.cas*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
