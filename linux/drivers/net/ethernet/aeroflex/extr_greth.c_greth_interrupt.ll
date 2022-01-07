; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.greth_private = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@GRETH_INT_RE = common dso_local global i32 0, align 4
@GRETH_INT_RX = common dso_local global i32 0, align 4
@GRETH_RXI = common dso_local global i32 0, align 4
@GRETH_INT_TE = common dso_local global i32 0, align 4
@GRETH_INT_TX = common dso_local global i32 0, align 4
@GRETH_TXI = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @greth_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @greth_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.greth_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load i32, i32* @IRQ_NONE, align 4
  store i32 %12, i32* %9, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.greth_private* @netdev_priv(%struct.net_device* %13)
  store %struct.greth_private* %14, %struct.greth_private** %6, align 8
  %15 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %16 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %19 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @GRETH_REGLOAD(i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %25 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @GRETH_REGLOAD(i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @GRETH_INT_RE, align 4
  %32 = load i32, i32* @GRETH_INT_RX, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %2
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @GRETH_RXI, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %53, label %41

41:                                               ; preds = %36, %2
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @GRETH_INT_TE, align 4
  %44 = load i32, i32* @GRETH_INT_TX, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %41
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @GRETH_TXI, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48, %36
  %54 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %54, i32* %9, align 4
  %55 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %56 = call i32 @greth_disable_irqs(%struct.greth_private* %55)
  %57 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %58 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %57, i32 0, i32 1
  %59 = call i32 @napi_schedule(i32* %58)
  br label %60

60:                                               ; preds = %53, %48, %41
  %61 = load %struct.greth_private*, %struct.greth_private** %6, align 8
  %62 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %61, i32 0, i32 0
  %63 = call i32 @spin_unlock(i32* %62)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @GRETH_REGLOAD(i32) #1

declare dso_local i32 @greth_disable_irqs(%struct.greth_private*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
