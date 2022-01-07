; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_reset_all_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_enet.c_hns3_nic_reset_all_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_8__, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.hnae3_handle*, i32)* }
%struct.hns3_nic_priv = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.hns3_enet_ring* }
%struct.hns3_enet_ring = type { i32, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hns3_nic_reset_all_ring(%struct.hnae3_handle* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hnae3_handle*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.hns3_nic_priv*, align 8
  %6 = alloca %struct.hns3_enet_ring*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %3, align 8
  %10 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %11 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call %struct.hns3_nic_priv* @netdev_priv(%struct.net_device* %14)
  store %struct.hns3_nic_priv* %15, %struct.hns3_nic_priv** %5, align 8
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %115, %1
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %19 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %17, %21
  br i1 %22, label %23, label %118

23:                                               ; preds = %16
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %25 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (%struct.hnae3_handle*, i32)*, i32 (%struct.hnae3_handle*, i32)** %29, align 8
  %31 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 %30(%struct.hnae3_handle* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %23
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %2, align 4
  br label %121

38:                                               ; preds = %23
  %39 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %40 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %45, align 8
  %47 = call i32 @hns3_init_ring_hw(%struct.hns3_enet_ring* %46)
  %48 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %49 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %54, align 8
  %56 = call i32 @hns3_clear_tx_ring(%struct.hns3_enet_ring* %55)
  %57 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %58 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %57, i32 0, i32 0
  %59 = load %struct.TYPE_7__*, %struct.TYPE_7__** %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %63, align 8
  %65 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %67 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %66, i32 0, i32 0
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %72, align 8
  %74 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %73, i32 0, i32 1
  store i64 0, i64* %74, align 8
  %75 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %76 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %76, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.hnae3_handle*, %struct.hnae3_handle** %3, align 8
  %80 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %78, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %86, align 8
  store %struct.hns3_enet_ring* %87, %struct.hns3_enet_ring** %6, align 8
  %88 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %89 = call i32 @hns3_init_ring_hw(%struct.hns3_enet_ring* %88)
  %90 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %91 = call i32 @hns3_clear_rx_ring(%struct.hns3_enet_ring* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %38
  %95 = load i32, i32* %9, align 4
  store i32 %95, i32* %2, align 4
  br label %121

96:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %107, %96
  %98 = load i32, i32* %8, align 4
  %99 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %100 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp slt i32 %98, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %97
  %104 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @hns3_reuse_buffer(%struct.hns3_enet_ring* %104, i32 %105)
  br label %107

107:                                              ; preds = %103
  %108 = load i32, i32* %8, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %8, align 4
  br label %97

110:                                              ; preds = %97
  %111 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %112 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %111, i32 0, i32 2
  store i64 0, i64* %112, align 8
  %113 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %6, align 8
  %114 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %113, i32 0, i32 1
  store i64 0, i64* %114, align 8
  br label %115

115:                                              ; preds = %110
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %16

118:                                              ; preds = %16
  %119 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %5, align 8
  %120 = call i32 @hns3_init_tx_ring_tc(%struct.hns3_nic_priv* %119)
  store i32 0, i32* %2, align 4
  br label %121

121:                                              ; preds = %118, %94, %36
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.hns3_nic_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @hns3_init_ring_hw(%struct.hns3_enet_ring*) #1

declare dso_local i32 @hns3_clear_tx_ring(%struct.hns3_enet_ring*) #1

declare dso_local i32 @hns3_clear_rx_ring(%struct.hns3_enet_ring*) #1

declare dso_local i32 @hns3_reuse_buffer(%struct.hns3_enet_ring*, i32) #1

declare dso_local i32 @hns3_init_tx_ring_tc(%struct.hns3_nic_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
