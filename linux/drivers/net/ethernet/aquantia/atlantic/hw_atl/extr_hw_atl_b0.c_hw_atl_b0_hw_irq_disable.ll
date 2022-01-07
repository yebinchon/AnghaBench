; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_irq_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/hw_atl/extr_hw_atl_b0.c_hw_atl_b0_hw_irq_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_hw_s = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_hw_s*, i32)* @hw_atl_b0_hw_irq_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_atl_b0_hw_irq_disable(%struct.aq_hw_s* %0, i32 %1) #0 {
  %3 = alloca %struct.aq_hw_s*, align 8
  %4 = alloca i32, align 4
  store %struct.aq_hw_s* %0, %struct.aq_hw_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @LODWORD(i32 %6)
  %8 = call i32 @hw_atl_itr_irq_msk_clearlsw_set(%struct.aq_hw_s* %5, i32 %7)
  %9 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @LODWORD(i32 %10)
  %12 = call i32 @hw_atl_itr_irq_status_clearlsw_set(%struct.aq_hw_s* %9, i32 %11)
  %13 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %14 = getelementptr inbounds %struct.aq_hw_s, %struct.aq_hw_s* %13, i32 0, i32 0
  %15 = call i32 @atomic_inc(i32* %14)
  %16 = load %struct.aq_hw_s*, %struct.aq_hw_s** %3, align 8
  %17 = call i32 @aq_hw_err_from_flags(%struct.aq_hw_s* %16)
  ret i32 %17
}

declare dso_local i32 @hw_atl_itr_irq_msk_clearlsw_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @LODWORD(i32) #1

declare dso_local i32 @hw_atl_itr_irq_status_clearlsw_set(%struct.aq_hw_s*, i32) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @aq_hw_err_from_flags(%struct.aq_hw_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
