; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@HW_ATL_B0_INT_MASK = common dso_local global i32 0, align 4
@hw_atl_rdm_rx_dma_desc_cache_init_done_get = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*)* @hw_atl_b0_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_stop(%struct.aq_hw_s* %0) #0 {
  %2 = alloca %struct.aq_hw_s*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %2, align 8
  %5 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %6 = load i32, i32* @HW_ATL_B0_INT_MASK, align 4
  %7 = call i32 @hw_atl_b0_hw_irq_disable(%struct.aq_hw_s* %5, i32 %6)
  %8 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %9 = call i32 @hw_atl_rdm_rx_dma_desc_cache_init_tgl(%struct.aq_hw_s* %8)
  %10 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %11 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %10)
  store i32 %11, i32* %3, align 4
  %12 = load i32, i32* %3, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %23

15:                                               ; preds = %1
  %16 = load i32, i32* @hw_atl_rdm_rx_dma_desc_cache_init_done_get, align 4
  %17 = load %struct.aq_hw_s*, %struct.aq_hw_s** %2, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp eq i32 %19, 1
  %21 = zext i1 %20 to i32
  %22 = call i32 @readx_poll_timeout_atomic(i32 %16, %struct.aq_hw_s* %17, i32 %18, i32 %21, i32 1000, i32 10000)
  br label %23

23:                                               ; preds = %15, %14
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @hw_atl_b0_hw_irq_disable(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @hw_atl_rdm_rx_dma_desc_cache_init_tgl(%struct.aq_hw_s*) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

declare dso_local i32 @readx_poll_timeout_atomic(i32, %struct.aq_hw_s*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
