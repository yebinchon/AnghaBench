; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_coalesce_per_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_ethtool.c_hns3_set_coalesce_per_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32, i32 }
%struct.hns3_enet_tqp_vector = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.hns3_nic_priv = type { %struct.TYPE_9__*, %struct.hnae3_handle* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.hns3_enet_tqp_vector* }
%struct.hnae3_handle = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_coalesce*, i64)* @hns3_set_coalesce_per_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hns3_set_coalesce_per_queue(%struct.net_device* %0, %struct.ethtool_coalesce* %1, i64 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %8 = alloca %struct.hns3_enet_tqp_vector*, align 8
  %9 = alloca %struct.hns3_nic_priv*, align 8
  %10 = alloca %struct.hnae3_handle*, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.hns3_nic_priv* %13, %struct.hns3_nic_priv** %9, align 8
  %14 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %9, align 8
  %15 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %14, i32 0, i32 1
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %15, align 8
  store %struct.hnae3_handle* %16, %struct.hnae3_handle** %10, align 8
  %17 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %18 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %9, align 8
  %22 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %21, i32 0, i32 0
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %28, align 8
  store %struct.hns3_enet_tqp_vector* %29, %struct.hns3_enet_tqp_vector** %7, align 8
  %30 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %9, align 8
  %31 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* %6, align 8
  %36 = add i64 %34, %35
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %39, i32 0, i32 0
  %41 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %40, align 8
  store %struct.hns3_enet_tqp_vector* %41, %struct.hns3_enet_tqp_vector** %8, align 8
  %42 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %43 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %7, align 8
  %46 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  store i32 %44, i32* %48, align 4
  %49 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %8, align 8
  %53 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 1
  store i32 %51, i32* %55, align 4
  %56 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %57 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %7, align 8
  %60 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %64 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %8, align 8
  %67 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %7, align 8
  %71 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %7, align 8
  %72 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @hns3_set_vector_coalesce_tx_gl(%struct.hns3_enet_tqp_vector* %70, i32 %75)
  %77 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %8, align 8
  %78 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %8, align 8
  %79 = getelementptr inbounds %struct.hns3_enet_tqp_vector, %struct.hns3_enet_tqp_vector* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @hns3_set_vector_coalesce_rx_gl(%struct.hns3_enet_tqp_vector* %77, i32 %82)
  %84 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %7, align 8
  %85 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %86 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @hns3_set_vector_coalesce_rl(%struct.hns3_enet_tqp_vector* %84, i32 %88)
  %90 = load %struct.hns3_enet_tqp_vector*, %struct.hns3_enet_tqp_vector** %8, align 8
  %91 = load %struct.hnae3_handle*, %struct.hnae3_handle** %10, align 8
  %92 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @hns3_set_vector_coalesce_rl(%struct.hns3_enet_tqp_vector* %90, i32 %94)
  ret void
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hns3_set_vector_coalesce_tx_gl(%struct.hns3_enet_tqp_vector*, i32) #1

declare dso_local i32 @hns3_set_vector_coalesce_rx_gl(%struct.hns3_enet_tqp_vector*, i32) #1

declare dso_local i32 @hns3_set_vector_coalesce_rl(%struct.hns3_enet_tqp_vector*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
