; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_ring_tx_head_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_ring_tx_head_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }
%struct.aq_ring_s = type { i32, i32 }

@AQ_HW_FLAG_ERR_UNPLUG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, %struct.aq_ring_s*)* @hw_atl_b0_hw_ring_tx_head_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_ring_tx_head_update(%struct.aq_hw_s* %0, %struct.aq_ring_s* %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca %struct.aq_ring_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store %struct.aq_ring_s* %1, %struct.aq_ring_s** %4, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %8 = load %struct.aq_ring_s*, %struct.aq_ring_s** %4, align 8
  %9 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @hw_atl_tdm_tx_desc_head_ptr_get(%struct.aq_hw_s* %7, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %13 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %12, i32 0, i32 0
  %14 = load i32, i32* @AQ_HW_FLAG_ERR_UNPLUG, align 4
  %15 = call i64 @aq_utils_obj_test(i32* %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @ENXIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.aq_ring_s*, %struct.aq_ring_s** %4, align 8
  %23 = getelementptr inbounds %struct.aq_ring_s, %struct.aq_ring_s* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 4
  %24 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %25 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @hw_atl_tdm_tx_desc_head_ptr_get(%struct.aq_hw_s*, i32) #1

declare dso_local i64 @aq_utils_obj_test(i32*, i32) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
