; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_sky2.c_sky2_rx_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sky2_hw = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.sky2_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }

@jiffies = common dso_local global i32 0, align 4
@rxqaddr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_hw*, i32, i32, i32)* @sky2_rx_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_rx_done(%struct.sky2_hw* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.sky2_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca %struct.sky2_port*, align 8
  store %struct.sky2_hw* %0, %struct.sky2_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.sky2_hw*, %struct.sky2_hw** %5, align 8
  %12 = getelementptr inbounds %struct.sky2_hw, %struct.sky2_hw* %11, i32 0, i32 0
  %13 = load %struct.net_device**, %struct.net_device*** %12, align 8
  %14 = load i32, i32* %6, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.net_device*, %struct.net_device** %13, i64 %15
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %9, align 8
  %18 = load %struct.net_device*, %struct.net_device** %9, align 8
  %19 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %18)
  store %struct.sky2_port* %19, %struct.sky2_port** %10, align 8
  %20 = load i32, i32* %7, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %55

23:                                               ; preds = %4
  %24 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %25 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @u64_stats_update_begin(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %30 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %36 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = add i32 %38, %34
  store i32 %39, i32* %37, align 4
  %40 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %41 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @u64_stats_update_end(i32* %42)
  %44 = load i32, i32* @jiffies, align 4
  %45 = load %struct.sky2_port*, %struct.sky2_port** %10, align 8
  %46 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load %struct.net_device*, %struct.net_device** %9, align 8
  %48 = call %struct.sky2_port* @netdev_priv(%struct.net_device* %47)
  %49 = load i32*, i32** @rxqaddr, align 8
  %50 = load i32, i32* %6, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @sky2_rx_update(%struct.sky2_port* %48, i32 %53)
  br label %55

55:                                               ; preds = %23, %22
  ret void
}

declare dso_local %struct.sky2_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @sky2_rx_update(%struct.sky2_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
