; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_ring_tx_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_ring_tx_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_ring_s = type { i32, i32, i64 }
%struct.aq_ring_param_s = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_ring_s*, %struct.aq_ring_param_s*)* @hw_atl_b0_hw_ring_tx_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_ring_tx_init(%struct.aq_hw_s* %0, %struct.aq_ring_s* %1, %struct.aq_ring_param_s* %2) #0 {
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
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %21 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @hw_atl_reg_tx_dma_desc_base_addresslswset(%struct.aq_hw_s* %18, i32 %19, i32 %22)
  %24 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %27 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @hw_atl_reg_tx_dma_desc_base_addressmswset(%struct.aq_hw_s* %24, i32 %25, i32 %28)
  %30 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %31 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %32 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = udiv i32 %33, 8
  %35 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %36 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @hw_atl_tdm_tx_desc_len_set(%struct.aq_hw_s* %30, i32 %34, i32 %37)
  %39 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %40 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %41 = call i32 @hw_atl_b0_hw_tx_ring_tail_update(%struct.aq_hw_s* %39, %struct.aq_ring_s* %40)
  %42 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %43 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %44 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @hw_atl_tdm_tx_desc_wr_wb_threshold_set(%struct.aq_hw_s* %42, i32 0, i32 %45)
  %47 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %48 = load %struct.aq_ring_param_s*, %struct.aq_ring_param_s** %6, align 8
  %49 = getelementptr inbounds %struct.aq_ring_param_s, %struct.aq_ring_param_s* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %52 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @hw_atl_itr_irq_map_tx_set(%struct.aq_hw_s* %47, i32 %50, i32 %53)
  %55 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %56 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %57 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @hw_atl_itr_irq_map_en_tx_set(%struct.aq_hw_s* %55, i32 1, i32 %58)
  %60 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %61 = load %struct.aq_ring_param_s*, %struct.aq_ring_param_s** %6, align 8
  %62 = getelementptr inbounds %struct.aq_ring_param_s, %struct.aq_ring_param_s* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %65 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @hw_atl_tdm_cpu_id_set(%struct.aq_hw_s* %60, i32 %63, i32 %66)
  %68 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %69 = load %struct.aq_ring_s*, %struct.aq_ring_s** %5, align 8
  %70 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @hw_atl_tdm_tx_desc_dca_en_set(%struct.aq_hw_s* %68, i32 0, i32 %71)
  %73 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %74 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %73)
  ret i32 %74
}

declare dso_local i32 @hw_atl_reg_tx_dma_desc_base_addresslswset(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_reg_tx_dma_desc_base_addressmswset(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_tdm_tx_desc_len_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_b0_hw_tx_ring_tail_update(%struct.aq_hw_s*, %struct.aq_ring_s*) #1

declare dso_local i32 @hw_atl_tdm_tx_desc_wr_wb_threshold_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_itr_irq_map_tx_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_itr_irq_map_en_tx_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_tdm_cpu_id_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @hw_atl_tdm_tx_desc_dca_en_set(%struct.aq_hw_s*, i32, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
