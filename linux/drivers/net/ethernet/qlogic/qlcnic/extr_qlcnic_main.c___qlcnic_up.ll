; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c___qlcnic_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c___qlcnic_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i32, i32, %struct.TYPE_4__*, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { %struct.qlcnic_host_rds_ring* }
%struct.qlcnic_host_rds_ring = type { i32 }
%struct.net_device = type { i32, i32 }

@QLCNIC_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@QLCNIC_LRO_ENABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__qlcnic_up(%struct.qlcnic_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qlcnic_host_rds_ring*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %9 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QLCNIC_ADAPTER_UP_MAGIC, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %109

16:                                               ; preds = %2
  %17 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 4
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %109

23:                                               ; preds = %16
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %25 = call i64 @qlcnic_set_eswitch_port_config(%struct.qlcnic_adapter* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %109

30:                                               ; preds = %23
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %32 = call i32 @qlcnic_get_lro_mss_capability(%struct.qlcnic_adapter* %31)
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %34 = call i64 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EIO, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %109

39:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %59, %39
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %40
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 5
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.qlcnic_host_rds_ring, %struct.qlcnic_host_rds_ring* %51, i64 %53
  store %struct.qlcnic_host_rds_ring* %54, %struct.qlcnic_host_rds_ring** %7, align 8
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %56 = load %struct.qlcnic_host_rds_ring*, %struct.qlcnic_host_rds_ring** %7, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @qlcnic_post_rx_buffers(%struct.qlcnic_adapter* %55, %struct.qlcnic_host_rds_ring* %56, i32 %57)
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %6, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %6, align 4
  br label %40

62:                                               ; preds = %40
  %63 = load %struct.net_device*, %struct.net_device** %5, align 8
  %64 = call i32 @qlcnic_set_multi(%struct.net_device* %63)
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %66 = load %struct.net_device*, %struct.net_device** %5, align 8
  %67 = getelementptr inbounds %struct.net_device, %struct.net_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @qlcnic_fw_cmd_set_mtu(%struct.qlcnic_adapter* %65, i32 %68)
  %70 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %71 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %75 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %81

78:                                               ; preds = %62
  %79 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %80 = call i32 @qlcnic_config_rss(%struct.qlcnic_adapter* %79, i32 1)
  br label %81

81:                                               ; preds = %78, %62
  %82 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %83 = call i32 @qlcnic_config_def_intr_coalesce(%struct.qlcnic_adapter* %82)
  %84 = load %struct.net_device*, %struct.net_device** %5, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @NETIF_F_LRO, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %81
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %92 = load i32, i32* @QLCNIC_LRO_ENABLED, align 4
  %93 = call i32 @qlcnic_config_hw_lro(%struct.qlcnic_adapter* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %81
  %95 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %96 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %97 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %96, i32 0, i32 4
  %98 = call i32 @set_bit(i32 %95, i32* %97)
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %100 = call i32 @qlcnic_napi_enable(%struct.qlcnic_adapter* %99)
  %101 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %102 = call i32 @qlcnic_linkevent_request(%struct.qlcnic_adapter* %101, i32 1)
  %103 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %104 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %103, i32 0, i32 3
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  store i64 0, i64* %106, align 8
  %107 = load %struct.net_device*, %struct.net_device** %5, align 8
  %108 = call i32 @netif_tx_start_all_queues(%struct.net_device* %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %94, %36, %27, %22, %13
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @qlcnic_set_eswitch_port_config(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_get_lro_mss_capability(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_fw_create_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_post_rx_buffers(%struct.qlcnic_adapter*, %struct.qlcnic_host_rds_ring*, i32) #1

declare dso_local i32 @qlcnic_set_multi(%struct.net_device*) #1

declare dso_local i32 @qlcnic_fw_cmd_set_mtu(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_config_rss(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_config_def_intr_coalesce(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_config_hw_lro(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_napi_enable(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_linkevent_request(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @netif_tx_start_all_queues(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
