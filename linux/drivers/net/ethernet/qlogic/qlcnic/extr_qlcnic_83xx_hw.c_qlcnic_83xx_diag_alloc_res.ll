; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_diag_alloc_res.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_diag_alloc_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.qlcnic_adapter = type { i64, i64, i64, i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__*, i64, i64 }
%struct.TYPE_5__ = type { i32 (%struct.qlcnic_adapter*, i32)* }
%struct.TYPE_4__ = type { %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.qlcnic_host_rds_ring = type { i32 }

@QLCNIC_SINGLE_RING = common dso_local global i64 0, align 8
@QLCNIC_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@QLCNIC_INTERRUPT_TEST = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i64)* @qlcnic_83xx_diag_alloc_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_83xx_diag_alloc_res(%struct.net_device* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.qlcnic_adapter*, align 8
  %9 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %10 = alloca %struct.qlcnic_host_rds_ring*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %14)
  store %struct.qlcnic_adapter* %15, %struct.qlcnic_adapter** %8, align 8
  %16 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %17 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i32 @netif_device_detach(%struct.net_device* %19)
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = call i64 @netif_running(%struct.net_device* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @__qlcnic_down(%struct.qlcnic_adapter* %25, %struct.net_device* %26)
  br label %28

28:                                               ; preds = %24, %3
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %30 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %29)
  %31 = load i64, i64* @QLCNIC_SINGLE_RING, align 8
  %32 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %33 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %36 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %35, i32 0, i32 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 8
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %44 = call i32 @qlcnic_attach(%struct.qlcnic_adapter* %43)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load %struct.net_device*, %struct.net_device** %5, align 8
  %49 = call i32 @netif_device_attach(%struct.net_device* %48)
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %4, align 4
  br label %151

51:                                               ; preds = %28
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %53 = call i32 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter* %52)
  store i32 %53, i32* %13, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %72

56:                                               ; preds = %51
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %58 = call i32 @qlcnic_detach(%struct.qlcnic_adapter* %57)
  %59 = load i64, i64* %11, align 8
  %60 = load i64, i64* @QLCNIC_ADAPTER_UP_MAGIC, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %65 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %64, i32 0, i32 1
  store i64 %63, i64* %65, align 8
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %67 = call i32 @qlcnic_attach(%struct.qlcnic_adapter* %66)
  br label %68

68:                                               ; preds = %62, %56
  %69 = load %struct.net_device*, %struct.net_device** %5, align 8
  %70 = call i32 @netif_device_attach(%struct.net_device* %69)
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %4, align 4
  br label %151

72:                                               ; preds = %51
  store i64 0, i64* %12, align 8
  br label %73

73:                                               ; preds = %91, %72
  %74 = load i64, i64* %12, align 8
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ult i64 %74, %77
  br i1 %78, label %79, label %94

79:                                               ; preds = %73
  %80 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %81 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %80, i32 0, i32 5
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %83, align 8
  %85 = load i64, i64* %12, align 8
  %86 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %84, i64 %85
  store %struct.qlcnic_host_rds_ring* %86, %struct.qlcnic_host_rds_ring** %10, align 8
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %88 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %10, align 8
  %89 = load i64, i64* %12, align 8
  %90 = call i32 @qlcnic_post_rx_buffers(%struct.qlcnic_adapter* %87, %struct.qlcnic_host_rds_ring* %88, i64 %89)
  br label %91

91:                                               ; preds = %79
  %92 = load i64, i64* %12, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %12, align 8
  br label %73

94:                                               ; preds = %73
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %96 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %95, i32 0, i32 4
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @QLCNIC_INTERRUPT_TEST, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %124

102:                                              ; preds = %94
  store i64 0, i64* %12, align 8
  br label %103

103:                                              ; preds = %120, %102
  %104 = load i64, i64* %12, align 8
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %106 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = icmp ult i64 %104, %107
  br i1 %108, label %109, label %123

109:                                              ; preds = %103
  %110 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %111 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %110, i32 0, i32 5
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %113, align 8
  %115 = load i64, i64* %12, align 8
  %116 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %114, i64 %115
  store %struct.qlcnic_host_sds_ring* %116, %struct.qlcnic_host_sds_ring** %9, align 8
  %117 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %118 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %119 = call i32 @qlcnic_enable_sds_intr(%struct.qlcnic_adapter* %117, %struct.qlcnic_host_sds_ring* %118)
  br label %120

120:                                              ; preds = %109
  %121 = load i64, i64* %12, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %12, align 8
  br label %103

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %123, %94
  %125 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %126 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %125, i32 0, i32 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @QLCNIC_LOOPBACK_TEST, align 4
  %131 = icmp eq i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %124
  %133 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %134 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %133, i32 0, i32 4
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 2
  store i64 0, i64* %136, align 8
  %137 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %138 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %137, i32 0, i32 4
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32 (%struct.qlcnic_adapter*, i32)*, i32 (%struct.qlcnic_adapter*, i32)** %142, align 8
  %144 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %145 = call i32 %143(%struct.qlcnic_adapter* %144, i32 1)
  br label %146

146:                                              ; preds = %132, %124
  %147 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %148 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %8, align 8
  %149 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %148, i32 0, i32 3
  %150 = call i32 @set_bit(i32 %147, i32* %149)
  store i32 0, i32* %4, align 4
  br label %151

151:                                              ; preds = %146, %68, %47
  %152 = load i32, i32* %4, align 4
  ret i32 %152
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_detach(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @__qlcnic_down(%struct.qlcnic_adapter*, %struct.net_device*) #1

declare dso_local i32 @qlcnic_detach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_attach(%struct.qlcnic_adapter*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_post_rx_buffers(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i64) #1

declare dso_local i32 @qlcnic_enable_sds_intr(%struct.qlcnic_adapter*, %struct.qlcnic_host_sds_ring*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
