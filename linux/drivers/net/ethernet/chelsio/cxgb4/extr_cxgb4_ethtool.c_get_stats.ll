; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_ethtool.c_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.port_info = type { i64, i32, i32, %struct.adapter* }
%struct.adapter = type { i32 }
%struct.lb_port_stats = type { i32 }
%struct.port_stats = type { i32 }
%struct.queue_port_stats = type { i32 }
%struct.adapter_stats = type { i32 }

@loopback_stats_strings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.port_info*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.lb_port_stats, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.port_info* @netdev_priv(%struct.net_device* %12)
  store %struct.port_info* %13, %struct.port_info** %7, align 8
  %14 = load %struct.port_info*, %struct.port_info** %7, align 8
  %15 = getelementptr inbounds %struct.port_info, %struct.port_info* %14, i32 0, i32 3
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %8, align 8
  %17 = load %struct.adapter*, %struct.adapter** %8, align 8
  %18 = load %struct.port_info*, %struct.port_info** %7, align 8
  %19 = getelementptr inbounds %struct.port_info, %struct.port_info* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = bitcast i32* %21 to %struct.port_stats*
  %23 = load %struct.port_info*, %struct.port_info** %7, align 8
  %24 = getelementptr inbounds %struct.port_info, %struct.port_info* %23, i32 0, i32 1
  %25 = call i32 @t4_get_port_stats_offset(%struct.adapter* %17, i32 %20, %struct.port_stats* %22, i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32* %27, i32** %6, align 8
  %28 = load %struct.adapter*, %struct.adapter** %8, align 8
  %29 = load %struct.port_info*, %struct.port_info** %7, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = bitcast i32* %30 to %struct.queue_port_stats*
  %32 = call i32 @collect_sge_port_stats(%struct.adapter* %28, %struct.port_info* %29, %struct.queue_port_stats* %31)
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32* %34, i32** %6, align 8
  %35 = load %struct.adapter*, %struct.adapter** %8, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = bitcast i32* %36 to %struct.adapter_stats*
  %38 = call i32 @collect_adapter_stats(%struct.adapter* %35, %struct.adapter_stats* %37)
  %39 = load i32*, i32** %6, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  store i32* %40, i32** %6, align 8
  %41 = load %struct.port_info*, %struct.port_info** %7, align 8
  %42 = getelementptr inbounds %struct.port_info, %struct.port_info* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i32*, i32** %6, align 8
  %46 = getelementptr inbounds i32, i32* %45, i32 1
  store i32* %46, i32** %6, align 8
  store i32 %44, i32* %45, align 4
  %47 = call i32 @memset(%struct.lb_port_stats* %9, i32 0, i32 4)
  %48 = load %struct.adapter*, %struct.adapter** %8, align 8
  %49 = load %struct.port_info*, %struct.port_info** %7, align 8
  %50 = getelementptr inbounds %struct.port_info, %struct.port_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = call i32 @t4_get_lb_stats(%struct.adapter* %48, i64 %51, %struct.lb_port_stats* %9)
  %53 = getelementptr inbounds %struct.lb_port_stats, %struct.lb_port_stats* %9, i32 0, i32 0
  store i32* %53, i32** %11, align 8
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %68, %3
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* @loopback_stats_strings, align 4
  %57 = call i32 @ARRAY_SIZE(i32 %56)
  %58 = sub nsw i32 %57, 1
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %71

60:                                               ; preds = %54
  %61 = load i32*, i32** %11, align 8
  %62 = getelementptr inbounds i32, i32* %61, i32 1
  store i32* %62, i32** %11, align 8
  %63 = load i32, i32* %61, align 4
  %64 = sext i32 %63 to i64
  %65 = trunc i64 %64 to i32
  %66 = load i32*, i32** %6, align 8
  %67 = getelementptr inbounds i32, i32* %66, i32 1
  store i32* %67, i32** %6, align 8
  store i32 %65, i32* %66, align 4
  br label %68

68:                                               ; preds = %60
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %54

71:                                               ; preds = %54
  ret void
}

declare dso_local %struct.port_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @t4_get_port_stats_offset(%struct.adapter*, i32, %struct.port_stats*, i32*) #1

declare dso_local i32 @collect_sge_port_stats(%struct.adapter*, %struct.port_info*, %struct.queue_port_stats*) #1

declare dso_local i32 @collect_adapter_stats(%struct.adapter*, %struct.adapter_stats*) #1

declare dso_local i32 @memset(%struct.lb_port_stats*, i32, i32) #1

declare dso_local i32 @t4_get_lb_stats(%struct.adapter*, i64, %struct.lb_port_stats*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
