; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_82xx_napi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.qlcnic_host_tx_ring*, %struct.TYPE_2__*, %struct.qlcnic_recv_context* }
%struct.qlcnic_host_tx_ring = type { i32 }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@qlcnic_rx_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@qlcnic_poll = common dso_local global i32 0, align 4
@qlcnic_tx_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_82xx_napi_add(%struct.qlcnic_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca %struct.qlcnic_recv_context*, align 8
  %9 = alloca %struct.qlcnic_host_tx_ring*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 4
  %12 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  store %struct.qlcnic_recv_context* %12, %struct.qlcnic_recv_context** %8, align 8
  %13 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i64 @qlcnic_alloc_sds_rings(%struct.qlcnic_recv_context* %13, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %125

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %76, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %79

29:                                               ; preds = %23
  %30 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  %31 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %30, i32 0, i32 0
  %32 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %32, i64 %34
  store %struct.qlcnic_host_sds_ring* %35, %struct.qlcnic_host_sds_ring** %7, align 8
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %37 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %29
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %41 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %39
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %49 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %48, i32 0, i32 0
  %50 = load i32, i32* @qlcnic_rx_poll, align 4
  %51 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %52 = call i32 @netif_napi_add(%struct.net_device* %47, i32* %49, i32 %50, i32 %51)
  br label %75

53:                                               ; preds = %39, %29
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %56 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  %59 = icmp eq i32 %54, %58
  br i1 %59, label %60, label %67

60:                                               ; preds = %53
  %61 = load %struct.net_device*, %struct.net_device** %5, align 8
  %62 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %63 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %62, i32 0, i32 0
  %64 = load i32, i32* @qlcnic_poll, align 4
  %65 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %66 = call i32 @netif_napi_add(%struct.net_device* %61, i32* %63, i32 %64, i32 %65)
  br label %74

67:                                               ; preds = %53
  %68 = load %struct.net_device*, %struct.net_device** %5, align 8
  %69 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %70 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %69, i32 0, i32 0
  %71 = load i32, i32* @qlcnic_rx_poll, align 4
  %72 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %73 = call i32 @netif_napi_add(%struct.net_device* %68, i32* %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %67, %60
  br label %75

75:                                               ; preds = %74, %46
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %23

79:                                               ; preds = %23
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = call i64 @qlcnic_alloc_tx_rings(%struct.qlcnic_adapter* %80, %struct.net_device* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %79
  %85 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  %86 = call i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context* %85)
  %87 = load i32, i32* @ENOMEM, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %3, align 4
  br label %125

89:                                               ; preds = %79
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %91 = call i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %124

93:                                               ; preds = %89
  %94 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %95 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %94, i32 0, i32 3
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %124, label %100

100:                                              ; preds = %93
  store i32 0, i32* %6, align 4
  br label %101

101:                                              ; preds = %120, %100
  %102 = load i32, i32* %6, align 4
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = icmp slt i32 %102, %105
  br i1 %106, label %107, label %123

107:                                              ; preds = %101
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %109 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %108, i32 0, i32 2
  %110 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %110, i64 %112
  store %struct.qlcnic_host_tx_ring* %113, %struct.qlcnic_host_tx_ring** %9, align 8
  %114 = load %struct.net_device*, %struct.net_device** %5, align 8
  %115 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %9, align 8
  %116 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %115, i32 0, i32 0
  %117 = load i32, i32* @qlcnic_tx_poll, align 4
  %118 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %119 = call i32 @netif_tx_napi_add(%struct.net_device* %114, i32* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %107
  %121 = load i32, i32* %6, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %6, align 4
  br label %101

123:                                              ; preds = %101
  br label %124

124:                                              ; preds = %123, %93, %89
  store i32 0, i32* %3, align 4
  br label %125

125:                                              ; preds = %124, %84, %19
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i64 @qlcnic_alloc_sds_rings(%struct.qlcnic_recv_context*, i32) #1

declare dso_local i64 @qlcnic_check_multi_tx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i64 @qlcnic_alloc_tx_rings(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context*) #1

declare dso_local i32 @netif_tx_napi_add(%struct.net_device*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
