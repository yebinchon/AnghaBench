; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_ring_rx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_a0.c_hw_atl_a0_hw_ring_rx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_ring_s = type { i32, i32, i64 }
%struct.aq_ring_param_s = type { i32, i32 }

@AQ_CFG_RX_FRAME_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, %struct.aq_ring_param_s*)* @hw_atl_a0_hw_ring_rx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_a0_hw_ring_rx_init(%struct.aq_hw_s* %0, %struct.aq_ring_s* %1, %struct.aq_ring_param_s* %2) #0 {
  %4 = alloca %struct.aq_hw_s*, align 8
  %5 = alloca %struct.aq_ring_s*, align 8
  %6 = alloca %struct.aq_ring_param_s*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %4, align 8
  store %struct.aq_ring_s* %1, %struct.aq_ring_s** %5, align 8
  store %struct.aq_ring_param_s* %2, %struct.aq_ring_param_s** %6, align 8
  %9 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %10 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %7, align 4
  %13 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %14 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = trunc i64 %15 to i32
  %17 = ashr i32 %16, 32
  store i32 %17, i32* %8, align 4
  %18 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %19 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %20 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @hw_atl_rdm_rx_desc_en_set(%struct.aq_hw_s* %18, i32 0, i32 %21)
  %23 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %24 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %25 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hw_atl_rdm_rx_desc_head_splitting_set(%struct.aq_hw_s* %23, i32 0, i32 %26)
  %28 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %31 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hw_atl_reg_rx_dma_desc_base_addresslswset(%struct.aq_hw_s* %28, i32 %29, i32 %32)
  %34 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %37 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @hw_atl_reg_rx_dma_desc_base_addressmswset(%struct.aq_hw_s* %34, i32 %35, i32 %38)
  %40 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %41 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %42 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = udiv i32 %43, 8
  %45 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %46 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @hw_atl_rdm_rx_desc_len_set(%struct.aq_hw_s* %40, i32 %44, i32 %47)
  %49 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %50 = load i32, i32* @AQ_CFG_RX_FRAME_MAX, align 4
  %51 = udiv i32 %50, 1024
  %52 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %53 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @hw_atl_rdm_rx_desc_data_buff_size_set(%struct.aq_hw_s* %49, i32 %51, i32 %54)
  %56 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %57 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %58 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @hw_atl_rdm_rx_desc_head_buff_size_set(%struct.aq_hw_s* %56, i32 0, i32 %59)
  %61 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %62 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %63 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @hw_atl_rdm_rx_desc_head_splitting_set(%struct.aq_hw_s* %61, i32 0, i32 %64)
  %66 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %67 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %68 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @hw_atl_rpo_rx_desc_vlan_stripping_set(%struct.aq_hw_s* %66, i32 0, i32 %69)
  %71 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %72 = load %struct.aq_ring_param_s*, %struct.aq_ring_param_s** %6, align 8
  %73 = getelementptr inbounds %struct.aq_ring_param_s, %struct.aq_ring_param_s* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %76 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @hw_atl_itr_irq_map_rx_set(%struct.aq_hw_s* %71, i32 %74, i32 %77)
  %79 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %80 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %81 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @hw_atl_itr_irq_map_en_rx_set(%struct.aq_hw_s* %79, i32 1, i32 %82)
  %84 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %85 = load %struct.aq_ring_param_s*, %struct.aq_ring_param_s** %6, align 8
  %86 = getelementptr inbounds %struct.aq_ring_param_s, %struct.aq_ring_param_s* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %89 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @hw_atl_rdm_cpu_id_set(%struct.aq_hw_s* %84, i32 %87, i32 %90)
  %92 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %93 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %94 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @hw_atl_rdm_rx_desc_dca_en_set(%struct.aq_hw_s* %92, i32 0, i32 %95)
  %97 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %98 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %99 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @hw_atl_rdm_rx_head_dca_en_set(%struct.aq_hw_s* %97, i32 0, i32 %100)
  %102 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %103 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %104 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @hw_atl_rdm_rx_pld_dca_en_set(%struct.aq_hw_s* %102, i32 0, i32 %105)
  %107 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %108 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %107)
  ret i32 %108
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
