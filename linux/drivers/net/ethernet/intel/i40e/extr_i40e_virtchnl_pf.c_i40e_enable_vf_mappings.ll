; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_enable_vf_mappings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_enable_vf_mappings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { i32 }

@I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK = common dso_local global i32 0, align 4
@I40E_VPLAN_MAPENA_TXRX_ENA_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i40e_vf*)* @i40e_enable_vf_mappings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i40e_enable_vf_mappings(%struct.i40e_vf* %0) #0 {
  %2 = alloca %struct.i40e_vf*, align 8
  %3 = alloca %struct.i40e_pf*, align 8
  %4 = alloca %struct.i40e_hw*, align 8
  %5 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %2, align 8
  %6 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %7 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %6, i32 0, i32 2
  %8 = load %struct.i40e_pf*, %struct.i40e_pf** %7, align 8
  store %struct.i40e_pf* %8, %struct.i40e_pf** %3, align 8
  %9 = load %struct.i40e_pf*, %struct.i40e_pf** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %9, i32 0, i32 0
  store %struct.i40e_hw* %10, %struct.i40e_hw** %4, align 8
  %11 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %12 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %13 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @I40E_VSILAN_QBASE(i32 %14)
  %16 = load i32, i32* @I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK, align 4
  %17 = call i32 @i40e_write_rx_ctl(%struct.i40e_hw* %11, i32 %15, i32 %16)
  %18 = load i32, i32* @I40E_VPLAN_MAPENA_TXRX_ENA_MASK, align 4
  store i32 %18, i32* %5, align 4
  %19 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %20 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %21 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @I40E_VPLAN_MAPENA(i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @wr32(%struct.i40e_hw* %19, i32 %23, i32 %24)
  %26 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %27 = call i32 @i40e_map_pf_to_vf_queues(%struct.i40e_vf* %26)
  %28 = load %struct.i40e_vf*, %struct.i40e_vf** %2, align 8
  %29 = call i32 @i40e_map_pf_queues_to_vsi(%struct.i40e_vf* %28)
  %30 = load %struct.i40e_hw*, %struct.i40e_hw** %4, align 8
  %31 = call i32 @i40e_flush(%struct.i40e_hw* %30)
  ret void
}

declare dso_local i32 @i40e_write_rx_ctl(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VSILAN_QBASE(i32) #1

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @I40E_VPLAN_MAPENA(i32) #1

declare dso_local i32 @i40e_map_pf_to_vf_queues(%struct.i40e_vf*) #1

declare dso_local i32 @i40e_map_pf_queues_to_vsi(%struct.i40e_vf*) #1

declare dso_local i32 @i40e_flush(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
