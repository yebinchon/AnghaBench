; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_ring_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_ring_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.aq_ring_s = type { i32, i32, i64 }
%struct.aq_ring_param_s = type { i32, i32 }

@AQ_CFG_RX_FRAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, %struct.aq_ring_param_s*)* @hw_atl_b0_hw_ring_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_ring_rx_init(%struct.aq_hw_s* %0, %struct.aq_ring_s* %1, %struct.aq_ring_param_s* %2) #0 {
  %4 = alloca %struct.aq_hw_s*, align 8
  %5 = alloca %struct.aq_ring_s*, align 8
  %6 = alloca %struct.aq_ring_param_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %4, align 8
  store %struct.aq_ring_s* %1, %struct.aq_ring_s** %5, align 8
  store %struct.aq_ring_param_s* %2, %struct.aq_ring_param_s** %6, align 8
  %10 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %11 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  store i32 %13, i32* %7, align 4
  %14 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %15 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  %18 = ashr i32 %17, 32
  store i32 %18, i32* %8, align 4
  %19 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %20 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %25 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %26 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @hw_atl_rdm_rx_desc_en_set(%struct.aq_hw_s* %24, i32 0, i32 %27)
  %29 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %30 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %31 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hw_atl_rdm_rx_desc_head_splitting_set(%struct.aq_hw_s* %29, i32 0, i32 %32)
  %34 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %37 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @hw_atl_reg_rx_dma_desc_base_addresslswset(%struct.aq_hw_s* %34, i32 %35, i32 %38)
  %40 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %43 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @hw_atl_reg_rx_dma_desc_base_addressmswset(%struct.aq_hw_s* %40, i32 %41, i32 %44)
  %46 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %47 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %48 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = udiv i32 %49, 8
  %51 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %52 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hw_atl_rdm_rx_desc_len_set(%struct.aq_hw_s* %46, i32 %50, i32 %53)
  %55 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %56 = load i32, i32* @AQ_CFG_RX_FRAME_MAX, align 4
  %57 = udiv i32 %56, 1024
  %58 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %59 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @hw_atl_rdm_rx_desc_data_buff_size_set(%struct.aq_hw_s* %55, i32 %57, i32 %60)
  %62 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %63 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %64 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @hw_atl_rdm_rx_desc_head_buff_size_set(%struct.aq_hw_s* %62, i32 0, i32 %65)
  %67 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %68 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %69 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @hw_atl_rdm_rx_desc_head_splitting_set(%struct.aq_hw_s* %67, i32 0, i32 %70)
  %72 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %73 = load i32, i32* %9, align 4
  %74 = icmp ne i32 %73, 0
  %75 = xor i1 %74, true
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  %78 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %79 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @hw_atl_rpo_rx_desc_vlan_stripping_set(%struct.aq_hw_s* %72, i32 %77, i32 %80)
  %82 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %83 = load %struct.aq_ring_param_s*, %struct.aq_ring_param_s** %6, align 8
  %84 = getelementptr inbounds %struct.aq_ring_param_s, %struct.aq_ring_param_s* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %87 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @hw_atl_itr_irq_map_rx_set(%struct.aq_hw_s* %82, i32 %85, i32 %88)
  %90 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %91 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %92 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @hw_atl_itr_irq_map_en_rx_set(%struct.aq_hw_s* %90, i32 1, i32 %93)
  %95 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %96 = load %struct.aq_ring_param_s*, %struct.aq_ring_param_s** %6, align 8
  %97 = getelementptr inbounds %struct.aq_ring_param_s, %struct.aq_ring_param_s* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %100 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @hw_atl_rdm_cpu_id_set(%struct.aq_hw_s* %95, i32 %98, i32 %101)
  %103 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %104 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %105 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @hw_atl_rdm_rx_desc_dca_en_set(%struct.aq_hw_s* %103, i32 0, i32 %106)
  %108 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %109 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %110 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @hw_atl_rdm_rx_head_dca_en_set(%struct.aq_hw_s* %108, i32 0, i32 %111)
  %113 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %114 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %115 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @hw_atl_rdm_rx_pld_dca_en_set(%struct.aq_hw_s* %113, i32 0, i32 %116)
  %118 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %119 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %118)
  ret i32 %119
}

declare dso_local i32 @hw_atl_rdm_rx_desc_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_desc_head_splitting_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_reg_rx_dma_desc_base_addresslswset(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_reg_rx_dma_desc_base_addressmswset(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_desc_len_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_desc_data_buff_size_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_desc_head_buff_size_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rpo_rx_desc_vlan_stripping_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_itr_irq_map_rx_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_itr_irq_map_en_rx_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rdm_cpu_id_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_desc_dca_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_head_dca_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_pld_dca_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
