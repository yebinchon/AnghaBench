; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, i32, i32, %struct.xlgmac_desc_ops }
%struct.xlgmac_desc_ops = type { i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.1*)* }
%struct.xlgmac_pdata.0 = type opaque
%struct.xlgmac_pdata.1 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*)* @xlgmac_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_hw_init(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlgmac_pdata*, align 8
  %4 = alloca %struct.xlgmac_desc_ops*, align 8
  %5 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %3, align 8
  %6 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %7 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %6, i32 0, i32 4
  store %struct.xlgmac_desc_ops* %7, %struct.xlgmac_desc_ops** %4, align 8
  %8 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %9 = call i32 @xlgmac_flush_tx_queues(%struct.xlgmac_pdata* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %105

14:                                               ; preds = %1
  %15 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %16 = call i32 @xlgmac_config_dma_bus(%struct.xlgmac_pdata* %15)
  %17 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %18 = call i32 @xlgmac_config_osp_mode(%struct.xlgmac_pdata* %17)
  %19 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %20 = call i32 @xlgmac_config_pblx8(%struct.xlgmac_pdata* %19)
  %21 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %22 = call i32 @xlgmac_config_tx_pbl_val(%struct.xlgmac_pdata* %21)
  %23 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %24 = call i32 @xlgmac_config_rx_pbl_val(%struct.xlgmac_pdata* %23)
  %25 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %26 = call i32 @xlgmac_config_rx_coalesce(%struct.xlgmac_pdata* %25)
  %27 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %28 = call i32 @xlgmac_config_tx_coalesce(%struct.xlgmac_pdata* %27)
  %29 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %30 = call i32 @xlgmac_config_rx_buffer_size(%struct.xlgmac_pdata* %29)
  %31 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %32 = call i32 @xlgmac_config_tso_mode(%struct.xlgmac_pdata* %31)
  %33 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %34 = call i32 @xlgmac_config_sph_mode(%struct.xlgmac_pdata* %33)
  %35 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %36 = call i32 @xlgmac_config_rss(%struct.xlgmac_pdata* %35)
  %37 = load %struct.xlgmac_desc_ops*, %struct.xlgmac_desc_ops** %4, align 8
  %38 = getelementptr inbounds %struct.xlgmac_desc_ops, %struct.xlgmac_desc_ops* %37, i32 0, i32 1
  %39 = load i32 (%struct.xlgmac_pdata.1*)*, i32 (%struct.xlgmac_pdata.1*)** %38, align 8
  %40 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %41 = bitcast %struct.xlgmac_pdata* %40 to %struct.xlgmac_pdata.1*
  %42 = call i32 %39(%struct.xlgmac_pdata.1* %41)
  %43 = load %struct.xlgmac_desc_ops*, %struct.xlgmac_desc_ops** %4, align 8
  %44 = getelementptr inbounds %struct.xlgmac_desc_ops, %struct.xlgmac_desc_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.xlgmac_pdata.0*)*, i32 (%struct.xlgmac_pdata.0*)** %44, align 8
  %46 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %47 = bitcast %struct.xlgmac_pdata* %46 to %struct.xlgmac_pdata.0*
  %48 = call i32 %45(%struct.xlgmac_pdata.0* %47)
  %49 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %50 = call i32 @xlgmac_enable_dma_interrupts(%struct.xlgmac_pdata* %49)
  %51 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %52 = call i32 @xlgmac_config_mtl_mode(%struct.xlgmac_pdata* %51)
  %53 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %54 = call i32 @xlgmac_config_queue_mapping(%struct.xlgmac_pdata* %53)
  %55 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %56 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %57 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @xlgmac_config_tsf_mode(%struct.xlgmac_pdata* %55, i32 %58)
  %60 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %61 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %62 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @xlgmac_config_rsf_mode(%struct.xlgmac_pdata* %60, i32 %63)
  %65 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %66 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %67 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @xlgmac_config_tx_threshold(%struct.xlgmac_pdata* %65, i32 %68)
  %70 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %71 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %72 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @xlgmac_config_rx_threshold(%struct.xlgmac_pdata* %70, i32 %73)
  %75 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %76 = call i32 @xlgmac_config_tx_fifo_size(%struct.xlgmac_pdata* %75)
  %77 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %78 = call i32 @xlgmac_config_rx_fifo_size(%struct.xlgmac_pdata* %77)
  %79 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %80 = call i32 @xlgmac_config_flow_control_threshold(%struct.xlgmac_pdata* %79)
  %81 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %82 = call i32 @xlgmac_config_rx_fep_enable(%struct.xlgmac_pdata* %81)
  %83 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %84 = call i32 @xlgmac_config_rx_fup_enable(%struct.xlgmac_pdata* %83)
  %85 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %86 = call i32 @xlgmac_enable_mtl_interrupts(%struct.xlgmac_pdata* %85)
  %87 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %88 = call i32 @xlgmac_config_mac_address(%struct.xlgmac_pdata* %87)
  %89 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %90 = call i32 @xlgmac_config_rx_mode(%struct.xlgmac_pdata* %89)
  %91 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %92 = call i32 @xlgmac_config_jumbo_enable(%struct.xlgmac_pdata* %91)
  %93 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %94 = call i32 @xlgmac_config_flow_control(%struct.xlgmac_pdata* %93)
  %95 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %96 = call i32 @xlgmac_config_mac_speed(%struct.xlgmac_pdata* %95)
  %97 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %98 = call i32 @xlgmac_config_checksum_offload(%struct.xlgmac_pdata* %97)
  %99 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %100 = call i32 @xlgmac_config_vlan_support(%struct.xlgmac_pdata* %99)
  %101 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %102 = call i32 @xlgmac_config_mmc(%struct.xlgmac_pdata* %101)
  %103 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %3, align 8
  %104 = call i32 @xlgmac_enable_mac_interrupts(%struct.xlgmac_pdata* %103)
  store i32 0, i32* %2, align 4
  br label %105

105:                                              ; preds = %14, %12
  %106 = load i32, i32* %2, align 4
  ret i32 %106
}

declare dso_local i32 @xlgmac_flush_tx_queues(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_dma_bus(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_osp_mode(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_pblx8(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_tx_pbl_val(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_rx_pbl_val(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_rx_coalesce(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_tx_coalesce(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_rx_buffer_size(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_tso_mode(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_sph_mode(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_rss(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_enable_dma_interrupts(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_mtl_mode(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_queue_mapping(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_tsf_mode(%struct.xlgmac_pdata*, i32) #1

declare dso_local i32 @xlgmac_config_rsf_mode(%struct.xlgmac_pdata*, i32) #1

declare dso_local i32 @xlgmac_config_tx_threshold(%struct.xlgmac_pdata*, i32) #1

declare dso_local i32 @xlgmac_config_rx_threshold(%struct.xlgmac_pdata*, i32) #1

declare dso_local i32 @xlgmac_config_tx_fifo_size(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_rx_fifo_size(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_flow_control_threshold(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_rx_fep_enable(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_rx_fup_enable(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_enable_mtl_interrupts(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_mac_address(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_rx_mode(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_jumbo_enable(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_flow_control(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_mac_speed(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_checksum_offload(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_vlan_support(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_config_mmc(%struct.xlgmac_pdata*) #1

declare dso_local i32 @xlgmac_enable_mac_interrupts(%struct.xlgmac_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
