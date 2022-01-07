; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_set_rx_dma_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/agere/extr_et131x.c_et131x_set_rx_dma_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.et131x_adapter = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_4__ = type { %struct.phy_device* }
%struct.phy_device = type { i64 }

@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.et131x_adapter*)* @et131x_set_rx_dma_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @et131x_set_rx_dma_timer(%struct.et131x_adapter* %0) #0 {
  %2 = alloca %struct.et131x_adapter*, align 8
  %3 = alloca %struct.phy_device*, align 8
  store %struct.et131x_adapter* %0, %struct.et131x_adapter** %2, align 8
  %4 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %5 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %4, i32 0, i32 1
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.phy_device*, %struct.phy_device** %7, align 8
  store %struct.phy_device* %8, %struct.phy_device** %3, align 8
  %9 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %10 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @SPEED_100, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %20, label %14

14:                                               ; preds = %1
  %15 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %16 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @SPEED_10, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14, %1
  %21 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %22 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = call i32 @writel(i32 0, i32* %25)
  %27 = load %struct.et131x_adapter*, %struct.et131x_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.et131x_adapter, %struct.et131x_adapter* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = call i32 @writel(i32 1, i32* %31)
  br label %33

33:                                               ; preds = %20, %14
  ret void
}

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
