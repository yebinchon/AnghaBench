; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_priv = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@AT91_SR = common dso_local global i32 0, align 4
@AT91_IMR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@AT91_IRQ_ERR_FRAME = common dso_local global i32 0, align 4
@AT91_IDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @at91_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.at91_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.at91_priv* %13, %struct.at91_priv** %6, align 8
  %14 = load i32, i32* @IRQ_NONE, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %16 = load i32, i32* @AT91_SR, align 4
  %17 = call i32 @at91_read(%struct.at91_priv* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %19 = load i32, i32* @AT91_IMR, align 4
  %20 = call i32 @at91_read(%struct.at91_priv* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = and i32 %22, %21
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %2
  br label %63

27:                                               ; preds = %2
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %31 = call i32 @get_irq_mb_rx(%struct.at91_priv* %30)
  %32 = load i32, i32* @AT91_IRQ_ERR_FRAME, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %29, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %50

36:                                               ; preds = %27
  %37 = load i32, i32* %8, align 4
  %38 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %39 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %41 = load i32, i32* @AT91_IDR, align 4
  %42 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %43 = call i32 @get_irq_mb_rx(%struct.at91_priv* %42)
  %44 = load i32, i32* @AT91_IRQ_ERR_FRAME, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @at91_write(%struct.at91_priv* %40, i32 %41, i32 %45)
  %47 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %48 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %47, i32 0, i32 1
  %49 = call i32 @napi_schedule(i32* %48)
  br label %50

50:                                               ; preds = %36, %27
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %53 = call i32 @get_irq_mb_tx(%struct.at91_priv* %52)
  %54 = and i32 %51, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @at91_irq_tx(%struct.net_device* %57, i32 %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = call i32 @at91_irq_err(%struct.net_device* %61)
  br label %63

63:                                               ; preds = %60, %26
  %64 = load i32, i32* %7, align 4
  ret i32 %64
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i32 @get_irq_mb_rx(%struct.at91_priv*) #1

declare dso_local i32 @at91_write(%struct.at91_priv*, i32, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @get_irq_mb_tx(%struct.at91_priv*) #1

declare dso_local i32 @at91_irq_tx(%struct.net_device*, i32) #1

declare dso_local i32 @at91_irq_err(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
