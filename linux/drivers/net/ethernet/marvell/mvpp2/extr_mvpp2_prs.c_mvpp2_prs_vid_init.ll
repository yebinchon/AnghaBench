; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_VID_FLTR_DEFAULT = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_VID = common dso_local global i32 0, align 4
@MVPP2_PRS_EDSA_VID_AI_BIT = common dso_local global i32 0, align 4
@MVPP2_VLAN_TAG_LEN = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_AI_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_L2 = common dso_local global i32 0, align 4
@MVPP2_PRS_PORT_MASK = common dso_local global i32 0, align 4
@MVPP2_PE_VID_EDSA_FLTR_DEFAULT = common dso_local global i32 0, align 4
@MVPP2_VLAN_TAG_EDSA_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*)* @mvpp2_prs_vid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_prs_vid_init(%struct.mvpp2* %0) #0 {
  %2 = alloca %struct.mvpp2*, align 8
  %3 = alloca %struct.mvpp2_prs_entry, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %2, align 8
  %4 = call i32 @memset(%struct.mvpp2_prs_entry* %3, i32 0, i32 4)
  %5 = load i32, i32* @MVPP2_PE_VID_FLTR_DEFAULT, align 4
  %6 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %3, i32 0, i32 0
  store i32 %5, i32* %6, align 4
  %7 = load i32, i32* @MVPP2_PRS_LU_VID, align 4
  %8 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %3, i32 %7)
  %9 = load i32, i32* @MVPP2_PRS_EDSA_VID_AI_BIT, align 4
  %10 = call i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry* %3, i32 0, i32 %9)
  %11 = load i32, i32* @MVPP2_VLAN_TAG_LEN, align 4
  %12 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %13 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %3, i32 %11, i32 %12)
  %14 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %15 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %3, i32 0, i32 %14)
  %16 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %17 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %3, i32 %16)
  %18 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %19 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %3, i32 %18)
  %20 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %21 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %3, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MVPP2_PRS_LU_VID, align 4
  %24 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %20, i32 %22, i32 %23)
  %25 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %26 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %25, %struct.mvpp2_prs_entry* %3)
  %27 = call i32 @memset(%struct.mvpp2_prs_entry* %3, i32 0, i32 4)
  %28 = load i32, i32* @MVPP2_PE_VID_EDSA_FLTR_DEFAULT, align 4
  %29 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %3, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @MVPP2_PRS_LU_VID, align 4
  %31 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %3, i32 %30)
  %32 = load i32, i32* @MVPP2_PRS_EDSA_VID_AI_BIT, align 4
  %33 = load i32, i32* @MVPP2_PRS_EDSA_VID_AI_BIT, align 4
  %34 = call i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry* %3, i32 %32, i32 %33)
  %35 = load i32, i32* @MVPP2_VLAN_TAG_EDSA_LEN, align 4
  %36 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %37 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %3, i32 %35, i32 %36)
  %38 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %39 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %3, i32 0, i32 %38)
  %40 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %41 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %3, i32 %40)
  %42 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %43 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %3, i32 %42)
  %44 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %45 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %3, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @MVPP2_PRS_LU_VID, align 4
  %48 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %44, i32 %46, i32 %47)
  %49 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %50 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %49, %struct.mvpp2_prs_entry* %3)
  ret void
}

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
