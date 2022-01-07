; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_llh.c_hw_atl_itr_irq_map_en_rx_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_llh.c_hw_atl_itr_irq_map_en_rx_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_adr = internal global [32 x i32] [i32 8448, i32 8448, i32 8452, i32 8452, i32 8456, i32 8456, i32 8460, i32 8460, i32 8464, i32 8464, i32 8468, i32 8468, i32 8472, i32 8472, i32 8476, i32 8476, i32 8480, i32 8480, i32 8484, i32 8484, i32 8488, i32 8488, i32 8492, i32 8492, i32 8496, i32 8496, i32 8500, i32 8500, i32 8504, i32 8504, i32 8508, i32 8508], align 16
@hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_msk = internal global [32 x i32] [i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128, i32 32768, i32 128], align 16
@hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_shift = internal global [32 x i32] [i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7, i32 15, i32 7], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hw_atl_itr_irq_map_en_rx_set(%struct.aq_hw_s* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.aq_hw_s*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.aq_hw_s*, %struct.aq_hw_s** %4, align 8
  %8 = load i32, i32* %6, align 4
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds [32 x i32], [32 x i32]* @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_adr, i64 0, i64 %9
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [32 x i32], [32 x i32]* @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_msk, i64 0, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [32 x i32], [32 x i32]* @hw_atl_itr_irq_map_en_rx_set.itr_imr_rxren_shift, i64 0, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @aq_hw_write_reg_bit(%struct.aq_hw_s* %7, i32 %11, i32 %15, i32 %19, i32 %20)
  ret void
}

declare dso_local i32 @aq_hw_write_reg_bit(%struct.aq_hw_s*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
