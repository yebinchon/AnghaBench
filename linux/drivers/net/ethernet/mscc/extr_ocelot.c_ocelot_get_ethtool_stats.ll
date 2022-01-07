; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot.c_ocelot_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.ocelot_port = type { i32, %struct.ocelot* }
%struct.ocelot = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @ocelot_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocelot_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ocelot_port*, align 8
  %8 = alloca %struct.ocelot*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ocelot_port* @netdev_priv(%struct.net_device* %10)
  store %struct.ocelot_port* %11, %struct.ocelot_port** %7, align 8
  %12 = load %struct.ocelot_port*, %struct.ocelot_port** %7, align 8
  %13 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %12, i32 0, i32 1
  %14 = load %struct.ocelot*, %struct.ocelot** %13, align 8
  store %struct.ocelot* %14, %struct.ocelot** %8, align 8
  %15 = load %struct.ocelot*, %struct.ocelot** %8, align 8
  %16 = call i32 @ocelot_update_stats(%struct.ocelot* %15)
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %41, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.ocelot*, %struct.ocelot** %8, align 8
  %20 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %44

23:                                               ; preds = %17
  %24 = load %struct.ocelot*, %struct.ocelot** %8, align 8
  %25 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.ocelot_port*, %struct.ocelot_port** %7, align 8
  %28 = getelementptr inbounds %struct.ocelot_port, %struct.ocelot_port* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ocelot*, %struct.ocelot** %8, align 8
  %31 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %26, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  br label %41

41:                                               ; preds = %23
  %42 = load i32, i32* %9, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %9, align 4
  br label %17

44:                                               ; preds = %17
  ret void
}

declare dso_local %struct.ocelot_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ocelot_update_stats(%struct.ocelot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
