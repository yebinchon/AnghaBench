; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_napi_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_io.c_qlcnic_83xx_napi_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, i32, %struct.qlcnic_host_tx_ring*, %struct.qlcnic_recv_context* }
%struct.qlcnic_host_tx_ring = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.net_device = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4
@qlcnic_83xx_rx_poll = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@qlcnic_83xx_msix_sriov_vf_poll = common dso_local global i32 0, align 4
@qlcnic_83xx_poll = common dso_local global i32 0, align 4
@qlcnic_83xx_msix_tx_poll = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_napi_add(%struct.qlcnic_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %8 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %9 = alloca %struct.qlcnic_recv_context*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %10, i32 0, i32 4
  %12 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %11, align 8
  store %struct.qlcnic_recv_context* %12, %struct.qlcnic_recv_context** %9, align 8
  %13 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %9, align 8
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
  br label %124

22:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %72, %22
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %75

29:                                               ; preds = %23
  %30 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %9, align 8
  %31 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %30, i32 0, i32 0
  %32 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %32, i64 %34
  store %struct.qlcnic_host_sds_ring* %35, %struct.qlcnic_host_sds_ring** %7, align 8
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %37 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %64

42:                                               ; preds = %29
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.net_device*, %struct.net_device** %5, align 8
  %51 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %52 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %51, i32 0, i32 0
  %53 = load i32, i32* @qlcnic_83xx_rx_poll, align 4
  %54 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %55 = call i32 @netif_napi_add(%struct.net_device* %50, i32* %52, i32 %53, i32 %54)
  br label %63

56:                                               ; preds = %42
  %57 = load %struct.net_device*, %struct.net_device** %5, align 8
  %58 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %59 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %58, i32 0, i32 0
  %60 = load i32, i32* @qlcnic_83xx_msix_sriov_vf_poll, align 4
  %61 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %62 = call i32 @netif_napi_add(%struct.net_device* %57, i32* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %56, %49
  br label %71

64:                                               ; preds = %29
  %65 = load %struct.net_device*, %struct.net_device** %5, align 8
  %66 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %7, align 8
  %67 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %66, i32 0, i32 0
  %68 = load i32, i32* @qlcnic_83xx_poll, align 4
  %69 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %70 = call i32 @netif_napi_add(%struct.net_device* %65, i32* %67, i32 %68, i32 %69)
  br label %71

71:                                               ; preds = %64, %63
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %6, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %23

75:                                               ; preds = %23
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %77 = load %struct.net_device*, %struct.net_device** %5, align 8
  %78 = call i64 @qlcnic_alloc_tx_rings(%struct.qlcnic_adapter* %76, %struct.net_device* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75
  %81 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %9, align 8
  %82 = call i32 @qlcnic_free_sds_rings(%struct.qlcnic_recv_context* %81)
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %124

85:                                               ; preds = %75
  %86 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %87 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %123

92:                                               ; preds = %85
  %93 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %94 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %123, label %99

99:                                               ; preds = %92
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %119, %99
  %101 = load i32, i32* %6, align 4
  %102 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %103 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = icmp slt i32 %101, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %100
  %107 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %108 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %107, i32 0, i32 3
  %109 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %108, align 8
  %110 = load i32, i32* %6, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %109, i64 %111
  store %struct.qlcnic_host_tx_ring* %112, %struct.qlcnic_host_tx_ring** %8, align 8
  %113 = load %struct.net_device*, %struct.net_device** %5, align 8
  %114 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %8, align 8
  %115 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %114, i32 0, i32 0
  %116 = load i32, i32* @qlcnic_83xx_msix_tx_poll, align 4
  %117 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %118 = call i32 @netif_tx_napi_add(%struct.net_device* %113, i32* %115, i32 %116, i32 %117)
  br label %119

119:                                              ; preds = %106
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %6, align 4
  br label %100

122:                                              ; preds = %100
  br label %123

123:                                              ; preds = %122, %92, %85
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %80, %19
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64 @qlcnic_alloc_sds_rings(%struct.qlcnic_recv_context*, i32) #1

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
