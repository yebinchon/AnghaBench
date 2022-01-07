; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_tx_clean.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_skge_tx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.skge_port = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.skge_element*, %struct.skge_element* }
%struct.skge_element = type { i32, %struct.skge_tx_desc*, %struct.skge_element* }
%struct.skge_tx_desc = type { i32 }
%struct.TYPE_3__ = type { i32 }

@BMU_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @skge_tx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skge_tx_clean(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca %struct.skge_element*, align 8
  %5 = alloca %struct.skge_tx_desc*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.skge_port* @netdev_priv(%struct.net_device* %6)
  store %struct.skge_port* %7, %struct.skge_port** %3, align 8
  %8 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %9 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.skge_element*, %struct.skge_element** %10, align 8
  store %struct.skge_element* %11, %struct.skge_element** %4, align 8
  br label %12

12:                                               ; preds = %47, %1
  %13 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %14 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %15 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.skge_element*, %struct.skge_element** %16, align 8
  %18 = icmp ne %struct.skge_element* %13, %17
  br i1 %18, label %19, label %51

19:                                               ; preds = %12
  %20 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %21 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %20, i32 0, i32 1
  %22 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %21, align 8
  store %struct.skge_tx_desc* %22, %struct.skge_tx_desc** %5, align 8
  %23 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %24 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %23, i32 0, i32 1
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %29 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %5, align 8
  %30 = getelementptr inbounds %struct.skge_tx_desc, %struct.skge_tx_desc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @skge_tx_unmap(i32 %27, %struct.skge_element* %28, i32 %31)
  %33 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %5, align 8
  %34 = getelementptr inbounds %struct.skge_tx_desc, %struct.skge_tx_desc* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @BMU_EOF, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %19
  %40 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %41 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_kfree_skb(i32 %42)
  br label %44

44:                                               ; preds = %39, %19
  %45 = load %struct.skge_tx_desc*, %struct.skge_tx_desc** %5, align 8
  %46 = getelementptr inbounds %struct.skge_tx_desc, %struct.skge_tx_desc* %45, i32 0, i32 0
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %44
  %48 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %49 = getelementptr inbounds %struct.skge_element, %struct.skge_element* %48, i32 0, i32 2
  %50 = load %struct.skge_element*, %struct.skge_element** %49, align 8
  store %struct.skge_element* %50, %struct.skge_element** %4, align 8
  br label %12

51:                                               ; preds = %12
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @netdev_reset_queue(%struct.net_device* %52)
  %54 = load %struct.skge_element*, %struct.skge_element** %4, align 8
  %55 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %56 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store %struct.skge_element* %54, %struct.skge_element** %57, align 8
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @skge_tx_unmap(i32, %struct.skge_element*, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

declare dso_local i32 @netdev_reset_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
