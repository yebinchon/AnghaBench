; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_ethoc.c_ethoc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ethoc = type { i32 }

@INT_MASK = common dso_local global i32 0, align 4
@INT_SOURCE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@INT_MASK_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"packet dropped\0A\00", align 1
@INT_MASK_TX = common dso_local global i32 0, align 4
@INT_MASK_RX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ethoc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ethoc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.net_device*
  store %struct.net_device* %11, %struct.net_device** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %6, align 8
  %13 = call %struct.ethoc* @netdev_priv(%struct.net_device* %12)
  store %struct.ethoc* %13, %struct.ethoc** %7, align 8
  %14 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %15 = load i32, i32* @INT_MASK, align 4
  %16 = call i32 @ethoc_read(%struct.ethoc* %14, i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %18 = load i32, i32* @INT_SOURCE, align 4
  %19 = call i32 @ethoc_read(%struct.ethoc* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %8, align 4
  %22 = and i32 %21, %20
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %2
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %65

30:                                               ; preds = %2
  %31 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @ethoc_ack_irq(%struct.ethoc* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @INT_MASK_BUSY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %30
  %39 = load %struct.net_device*, %struct.net_device** %6, align 8
  %40 = getelementptr inbounds %struct.net_device, %struct.net_device* %39, i32 0, i32 1
  %41 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.net_device*, %struct.net_device** %6, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  br label %47

47:                                               ; preds = %38, %30
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @INT_MASK_TX, align 4
  %50 = load i32, i32* @INT_MASK_RX, align 4
  %51 = or i32 %49, %50
  %52 = and i32 %48, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %47
  %55 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %56 = load i32, i32* @INT_MASK_TX, align 4
  %57 = load i32, i32* @INT_MASK_RX, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @ethoc_disable_irq(%struct.ethoc* %55, i32 %58)
  %60 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %61 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %60, i32 0, i32 0
  %62 = call i32 @napi_schedule(i32* %61)
  br label %63

63:                                               ; preds = %54, %47
  %64 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %28
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethoc_read(%struct.ethoc*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ethoc_ack_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @ethoc_disable_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @napi_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
