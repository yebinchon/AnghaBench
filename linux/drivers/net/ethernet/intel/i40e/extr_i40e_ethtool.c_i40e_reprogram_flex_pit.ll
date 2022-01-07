; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_reprogram_flex_pit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_reprogram_flex_pit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_pf = type { i32, i32, i32 }

@I40E_FLEX_PIT_IDX_START_L3 = common dso_local global i32 0, align 4
@I40E_FLEX_PIT_IDX_START_L4 = common dso_local global i32 0, align 4
@I40E_L3_GLQF_ORT_IDX = common dso_local global i32 0, align 4
@I40E_L4_GLQF_ORT_IDX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_pf*)* @i40e_reprogram_flex_pit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_reprogram_flex_pit(%struct.i40e_pf* %0) #0 {
  %2 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_pf* %0, %struct.i40e_pf** %2, align 8
  %3 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %4 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %5 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %4, i32 0, i32 2
  %6 = load i32, i32* @I40E_FLEX_PIT_IDX_START_L3, align 4
  %7 = call i32 @__i40e_reprogram_flex_pit(%struct.i40e_pf* %3, i32* %5, i32 %6)
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 1
  %11 = load i32, i32* @I40E_FLEX_PIT_IDX_START_L4, align 4
  %12 = call i32 @__i40e_reprogram_flex_pit(%struct.i40e_pf* %8, i32* %10, i32 %11)
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 0
  %15 = load i32, i32* @I40E_L3_GLQF_ORT_IDX, align 4
  %16 = call i32 @I40E_GLQF_ORT(i32 %15)
  %17 = load i32, i32* @I40E_FLEX_PIT_IDX_START_L3, align 4
  %18 = call i32 @I40E_ORT_PREP_VAL(i32 %17, i32 3, i32 1)
  %19 = call i32 @i40e_write_rx_ctl(i32* %14, i32 %16, i32 %18)
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %20, i32 0, i32 0
  %22 = load i32, i32* @I40E_L4_GLQF_ORT_IDX, align 4
  %23 = call i32 @I40E_GLQF_ORT(i32 %22)
  %24 = load i32, i32* @I40E_FLEX_PIT_IDX_START_L4, align 4
  %25 = call i32 @I40E_ORT_PREP_VAL(i32 %24, i32 3, i32 1)
  %26 = call i32 @i40e_write_rx_ctl(i32* %21, i32 %23, i32 %25)
  ret void
}

declare dso_local i32 @__i40e_reprogram_flex_pit(%struct.i40e_pf*, i32*, i32) #1

declare dso_local i32 @i40e_write_rx_ctl(i32*, i32, i32) #1

declare dso_local i32 @I40E_GLQF_ORT(i32) #1

declare dso_local i32 @I40E_ORT_PREP_VAL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
