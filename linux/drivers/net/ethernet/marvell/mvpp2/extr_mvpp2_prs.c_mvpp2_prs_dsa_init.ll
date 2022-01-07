; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_dsa_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_dsa_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PRS_UNTAGGED = common dso_local global i32 0, align 4
@MVPP2_PRS_EDSA = common dso_local global i32 0, align 4
@MVPP2_PRS_TAGGED = common dso_local global i32 0, align 4
@MVPP2_PRS_DSA = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_DSA = common dso_local global i32 0, align 4
@MVPP2_PE_DSA_DEFAULT = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_VLAN = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_MAC = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_AI_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*)* @mvpp2_prs_dsa_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_prs_dsa_init(%struct.mvpp2* %0) #0 {
  %2 = alloca %struct.mvpp2*, align 8
  %3 = alloca %struct.mvpp2_prs_entry, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %2, align 8
  %4 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %5 = load i32, i32* @MVPP2_PRS_UNTAGGED, align 4
  %6 = load i32, i32* @MVPP2_PRS_EDSA, align 4
  %7 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %4, i32 0, i32 0, i32 %5, i32 %6)
  %8 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %9 = load i32, i32* @MVPP2_PRS_TAGGED, align 4
  %10 = load i32, i32* @MVPP2_PRS_EDSA, align 4
  %11 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %8, i32 0, i32 0, i32 %9, i32 %10)
  %12 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %13 = load i32, i32* @MVPP2_PRS_UNTAGGED, align 4
  %14 = load i32, i32* @MVPP2_PRS_DSA, align 4
  %15 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %12, i32 0, i32 0, i32 %13, i32 %14)
  %16 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %17 = load i32, i32* @MVPP2_PRS_TAGGED, align 4
  %18 = load i32, i32* @MVPP2_PRS_DSA, align 4
  %19 = call i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %16, i32 0, i32 0, i32 %17, i32 %18)
  %20 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %21 = load i32, i32* @MVPP2_PRS_UNTAGGED, align 4
  %22 = load i32, i32* @MVPP2_PRS_EDSA, align 4
  %23 = call i32 @mvpp2_prs_dsa_tag_ethertype_set(%struct.mvpp2* %20, i32 0, i32 0, i32 %21, i32 %22)
  %24 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %25 = load i32, i32* @MVPP2_PRS_TAGGED, align 4
  %26 = load i32, i32* @MVPP2_PRS_EDSA, align 4
  %27 = call i32 @mvpp2_prs_dsa_tag_ethertype_set(%struct.mvpp2* %24, i32 0, i32 0, i32 %25, i32 %26)
  %28 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %29 = load i32, i32* @MVPP2_PRS_UNTAGGED, align 4
  %30 = load i32, i32* @MVPP2_PRS_DSA, align 4
  %31 = call i32 @mvpp2_prs_dsa_tag_ethertype_set(%struct.mvpp2* %28, i32 0, i32 1, i32 %29, i32 %30)
  %32 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %33 = load i32, i32* @MVPP2_PRS_TAGGED, align 4
  %34 = load i32, i32* @MVPP2_PRS_DSA, align 4
  %35 = call i32 @mvpp2_prs_dsa_tag_ethertype_set(%struct.mvpp2* %32, i32 0, i32 1, i32 %33, i32 %34)
  %36 = call i32 @memset(%struct.mvpp2_prs_entry* %3, i32 0, i32 4)
  %37 = load i32, i32* @MVPP2_PRS_LU_DSA, align 4
  %38 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %3, i32 %37)
  %39 = load i32, i32* @MVPP2_PE_DSA_DEFAULT, align 4
  %40 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %3, i32 0, i32 0
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* @MVPP2_PRS_LU_VLAN, align 4
  %42 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %3, i32 %41)
  %43 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %44 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %3, i32 0, i32 %43)
  %45 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %46 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %3, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @MVPP2_PRS_LU_MAC, align 4
  %49 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %45, i32 %47, i32 %48)
  %50 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %51 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %3, i32 0, i32 %50)
  %52 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %53 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %3, i32 %52)
  %54 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %55 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %54, %struct.mvpp2_prs_entry* %3)
  ret void
}

declare dso_local i32 @mvpp2_prs_dsa_tag_set(%struct.mvpp2*, i32, i32, i32, i32) #1

declare dso_local i32 @mvpp2_prs_dsa_tag_ethertype_set(%struct.mvpp2*, i32, i32, i32, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
