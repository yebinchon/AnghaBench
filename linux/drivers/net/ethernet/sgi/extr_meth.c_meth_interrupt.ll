; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sgi/extr_meth.c_meth_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.net_device = type { i32 }
%struct.meth_private = type { i32 }

@mace = common dso_local global %struct.TYPE_4__* null, align 8
@METH_INT_ERROR = common dso_local global i64 0, align 8
@METH_INT_TX_EMPTY = common dso_local global i64 0, align 8
@METH_INT_TX_PKT = common dso_local global i64 0, align 8
@METH_INT_RX_THRESHOLD = common dso_local global i64 0, align 8
@METH_DMA_RX_INT_EN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @meth_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meth_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.meth_private*, align 8
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.net_device*
  store %struct.net_device* %9, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.meth_private* @netdev_priv(%struct.net_device* %10)
  store %struct.meth_private* %11, %struct.meth_private** %6, align 8
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %7, align 8
  br label %16

16:                                               ; preds = %57, %2
  %17 = load i64, i64* %7, align 8
  %18 = and i64 %17, 255
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load i64, i64* %7, align 8
  %22 = load i64, i64* @METH_INT_ERROR, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %20
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @meth_error(%struct.net_device* %26, i64 %27)
  br label %29

29:                                               ; preds = %25, %20
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @METH_INT_TX_EMPTY, align 8
  %32 = load i64, i64* @METH_INT_TX_PKT, align 8
  %33 = or i64 %31, %32
  %34 = and i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load %struct.net_device*, %struct.net_device** %5, align 8
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @meth_tx_cleanup(%struct.net_device* %37, i64 %38)
  br label %40

40:                                               ; preds = %36, %29
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @METH_INT_RX_THRESHOLD, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %40
  %46 = load %struct.meth_private*, %struct.meth_private** %6, align 8
  %47 = getelementptr inbounds %struct.meth_private, %struct.meth_private* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @METH_DMA_RX_INT_EN, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %62

53:                                               ; preds = %45
  %54 = load %struct.net_device*, %struct.net_device** %5, align 8
  %55 = load i64, i64* %7, align 8
  %56 = call i32 @meth_rx(%struct.net_device* %54, i64 %55)
  br label %57

57:                                               ; preds = %53, %40
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mace, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %7, align 8
  br label %16

62:                                               ; preds = %52, %16
  %63 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %63
}

declare dso_local %struct.meth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @meth_error(%struct.net_device*, i64) #1

declare dso_local i32 @meth_tx_cleanup(%struct.net_device*, i64) #1

declare dso_local i32 @meth_rx(%struct.net_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
