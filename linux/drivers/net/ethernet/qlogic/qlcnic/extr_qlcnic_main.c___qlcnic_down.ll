; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c___qlcnic_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c___qlcnic_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i64, i32, i32*, i32, %struct.TYPE_6__*, %struct.TYPE_4__, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.net_device = type { i32 }

@QLCNIC_ADAPTER_UP_MAGIC = common dso_local global i64 0, align 8
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@QLCNIC_NIU_NON_PROMISC_MODE = common dso_local global i32 0, align 4
@QLCNIC_FW_LRO_MSS_CAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__qlcnic_down(%struct.qlcnic_adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @QLCNIC_ADAPTER_UP_MAGIC, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %85

12:                                               ; preds = %2
  %13 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 6
  %16 = call i32 @test_and_clear_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %12
  br label %85

19:                                               ; preds = %12
  %20 = call i32 (...) @smp_mb()
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @netif_carrier_off(%struct.net_device* %21)
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i64 0, i64* %26, align 8
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @netif_tx_disable(%struct.net_device* %27)
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %30 = call i32 @qlcnic_free_mac_list(%struct.qlcnic_adapter* %29)
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %19
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %38 = call i32 @qlcnic_delete_lb_filters(%struct.qlcnic_adapter* %37)
  br label %39

39:                                               ; preds = %36, %19
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %41 = load i32, i32* @QLCNIC_NIU_NON_PROMISC_MODE, align 4
  %42 = call i32 @qlcnic_nic_set_promisc(%struct.qlcnic_adapter* %40, i32 %41)
  %43 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %44 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %39
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %47, i32 0, i32 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @qlcnic_sriov_cleanup_async_list(i32* %52)
  br label %54

54:                                               ; preds = %46, %39
  %55 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %56 = call i32 @qlcnic_napi_disable(%struct.qlcnic_adapter* %55)
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %58 = call i32 @qlcnic_fw_destroy_ctx(%struct.qlcnic_adapter* %57)
  %59 = load i32, i32* @QLCNIC_FW_LRO_MSS_CAP, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %66 = call i32 @qlcnic_reset_rx_buffers_list(%struct.qlcnic_adapter* %65)
  store i32 0, i32* %5, align 4
  br label %67

67:                                               ; preds = %82, %54
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %70 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %85

73:                                               ; preds = %67
  %74 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @qlcnic_release_tx_buffers(%struct.qlcnic_adapter* %74, i32* %80)
  br label %82

82:                                               ; preds = %73
  %83 = load i32, i32* %5, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %5, align 4
  br label %67

85:                                               ; preds = %11, %18, %67
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @netif_tx_disable(%struct.net_device*) #1

declare dso_local i32 @qlcnic_free_mac_list(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_delete_lb_filters(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_nic_set_promisc(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_sriov_cleanup_async_list(i32*) #1

declare dso_local i32 @qlcnic_napi_disable(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_fw_destroy_ctx(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_reset_rx_buffers_list(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_release_tx_buffers(%struct.qlcnic_adapter*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
