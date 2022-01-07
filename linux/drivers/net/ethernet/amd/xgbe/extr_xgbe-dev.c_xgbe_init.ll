; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32, i32, i32, %struct.xgbe_desc_if }
%struct.xgbe_desc_if = type { i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.1*)* }
%struct.xgbe_prv_data.0 = type opaque
%struct.xgbe_prv_data.1 = type opaque

@.str = private unnamed_addr constant [14 x i8] c"-->xgbe_init\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error flushing TX queues\0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"<--xgbe_init\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_init(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  %4 = alloca %struct.xgbe_desc_if*, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %6 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %7 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %6, i32 0, i32 5
  store %struct.xgbe_desc_if* %7, %struct.xgbe_desc_if** %4, align 8
  %8 = call i32 @DBGPR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %10 = call i32 @xgbe_flush_tx_queues(%struct.xgbe_prv_data* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %15 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @netdev_err(i32 %16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %107

19:                                               ; preds = %1
  %20 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %21 = call i32 @xgbe_config_dma_bus(%struct.xgbe_prv_data* %20)
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %23 = call i32 @xgbe_config_dma_cache(%struct.xgbe_prv_data* %22)
  %24 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %25 = call i32 @xgbe_config_osp_mode(%struct.xgbe_prv_data* %24)
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %27 = call i32 @xgbe_config_pbl_val(%struct.xgbe_prv_data* %26)
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %29 = call i32 @xgbe_config_rx_coalesce(%struct.xgbe_prv_data* %28)
  %30 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %31 = call i32 @xgbe_config_tx_coalesce(%struct.xgbe_prv_data* %30)
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %33 = call i32 @xgbe_config_rx_buffer_size(%struct.xgbe_prv_data* %32)
  %34 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %35 = call i32 @xgbe_config_tso_mode(%struct.xgbe_prv_data* %34)
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %37 = call i32 @xgbe_config_sph_mode(%struct.xgbe_prv_data* %36)
  %38 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %39 = call i32 @xgbe_config_rss(%struct.xgbe_prv_data* %38)
  %40 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %4, align 8
  %41 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %40, i32 0, i32 1
  %42 = load i32 (%struct.xgbe_prv_data.1*)*, i32 (%struct.xgbe_prv_data.1*)** %41, align 8
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %44 = bitcast %struct.xgbe_prv_data* %43 to %struct.xgbe_prv_data.1*
  %45 = call i32 %42(%struct.xgbe_prv_data.1* %44)
  %46 = load %struct.xgbe_desc_if*, %struct.xgbe_desc_if** %4, align 8
  %47 = getelementptr inbounds %struct.xgbe_desc_if, %struct.xgbe_desc_if* %46, i32 0, i32 0
  %48 = load i32 (%struct.xgbe_prv_data.0*)*, i32 (%struct.xgbe_prv_data.0*)** %47, align 8
  %49 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %50 = bitcast %struct.xgbe_prv_data* %49 to %struct.xgbe_prv_data.0*
  %51 = call i32 %48(%struct.xgbe_prv_data.0* %50)
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %53 = call i32 @xgbe_enable_dma_interrupts(%struct.xgbe_prv_data* %52)
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %55 = call i32 @xgbe_config_mtl_mode(%struct.xgbe_prv_data* %54)
  %56 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %57 = call i32 @xgbe_config_queue_mapping(%struct.xgbe_prv_data* %56)
  %58 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %60 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @xgbe_config_tsf_mode(%struct.xgbe_prv_data* %58, i32 %61)
  %63 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %64 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %65 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @xgbe_config_rsf_mode(%struct.xgbe_prv_data* %63, i32 %66)
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %69 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %70 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @xgbe_config_tx_threshold(%struct.xgbe_prv_data* %68, i32 %71)
  %73 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %75 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @xgbe_config_rx_threshold(%struct.xgbe_prv_data* %73, i32 %76)
  %78 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %79 = call i32 @xgbe_config_tx_fifo_size(%struct.xgbe_prv_data* %78)
  %80 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %81 = call i32 @xgbe_config_rx_fifo_size(%struct.xgbe_prv_data* %80)
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %83 = call i32 @xgbe_config_dcb_tc(%struct.xgbe_prv_data* %82)
  %84 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %85 = call i32 @xgbe_enable_mtl_interrupts(%struct.xgbe_prv_data* %84)
  %86 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %87 = call i32 @xgbe_config_mac_address(%struct.xgbe_prv_data* %86)
  %88 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %89 = call i32 @xgbe_config_rx_mode(%struct.xgbe_prv_data* %88)
  %90 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %91 = call i32 @xgbe_config_jumbo_enable(%struct.xgbe_prv_data* %90)
  %92 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %93 = call i32 @xgbe_config_flow_control(%struct.xgbe_prv_data* %92)
  %94 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %95 = call i32 @xgbe_config_mac_speed(%struct.xgbe_prv_data* %94)
  %96 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %97 = call i32 @xgbe_config_checksum_offload(%struct.xgbe_prv_data* %96)
  %98 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %99 = call i32 @xgbe_config_vlan_support(%struct.xgbe_prv_data* %98)
  %100 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %101 = call i32 @xgbe_config_mmc(%struct.xgbe_prv_data* %100)
  %102 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %103 = call i32 @xgbe_enable_mac_interrupts(%struct.xgbe_prv_data* %102)
  %104 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %105 = call i32 @xgbe_enable_ecc_interrupts(%struct.xgbe_prv_data* %104)
  %106 = call i32 @DBGPR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %107

107:                                              ; preds = %19, %13
  %108 = load i32, i32* %2, align 4
  ret i32 %108
}

declare dso_local i32 @DBGPR(i8*) #1

declare dso_local i32 @xgbe_flush_tx_queues(%struct.xgbe_prv_data*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @xgbe_config_dma_bus(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_dma_cache(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_osp_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_pbl_val(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_rx_coalesce(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_tx_coalesce(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_rx_buffer_size(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_tso_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_sph_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_rss(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_enable_dma_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_mtl_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_queue_mapping(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_tsf_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_config_rsf_mode(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_config_tx_threshold(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_config_rx_threshold(%struct.xgbe_prv_data*, i32) #1

declare dso_local i32 @xgbe_config_tx_fifo_size(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_rx_fifo_size(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_dcb_tc(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_enable_mtl_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_mac_address(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_rx_mode(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_jumbo_enable(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_flow_control(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_mac_speed(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_checksum_offload(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_vlan_support(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_config_mmc(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_enable_mac_interrupts(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_enable_ecc_interrupts(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
