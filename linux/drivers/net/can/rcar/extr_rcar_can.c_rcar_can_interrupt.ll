; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_can.c_rcar_can_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rcar_can_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@RCAR_CAN_ISR_ERSF = common dso_local global i32 0, align 4
@RCAR_CAN_ISR_TXFF = common dso_local global i32 0, align 4
@RCAR_CAN_ISR_RXFF = common dso_local global i32 0, align 4
@RCAR_CAN_IER_RXFIE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rcar_can_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcar_can_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.rcar_can_priv*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.rcar_can_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.rcar_can_priv* %12, %struct.rcar_can_priv** %7, align 8
  %13 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %7, align 8
  %14 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @readb(i32* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %7, align 8
  %20 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %18, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %2
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @RCAR_CAN_ISR_ERSF, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = call i32 @rcar_can_error(%struct.net_device* %32)
  br label %34

34:                                               ; preds = %31, %26
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* @RCAR_CAN_ISR_TXFF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.net_device*, %struct.net_device** %6, align 8
  %41 = call i32 @rcar_can_tx_done(%struct.net_device* %40)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @RCAR_CAN_ISR_RXFF, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %71

47:                                               ; preds = %42
  %48 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %7, align 8
  %49 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %48, i32 0, i32 1
  %50 = call i64 @napi_schedule_prep(i32* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %70

52:                                               ; preds = %47
  %53 = load i32, i32* @RCAR_CAN_IER_RXFIE, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %7, align 8
  %56 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %7, align 8
  %60 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %7, align 8
  %63 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @writeb(i32 %61, i32* %65)
  %67 = load %struct.rcar_can_priv*, %struct.rcar_can_priv** %7, align 8
  %68 = getelementptr inbounds %struct.rcar_can_priv, %struct.rcar_can_priv* %67, i32 0, i32 1
  %69 = call i32 @__napi_schedule(i32* %68)
  br label %70

70:                                               ; preds = %52, %47
  br label %71

71:                                               ; preds = %70, %42
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %71, %24
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.rcar_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @rcar_can_error(%struct.net_device*) #1

declare dso_local i32 @rcar_can_tx_done(%struct.net_device*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
