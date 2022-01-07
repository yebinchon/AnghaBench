; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_dsa_tag_ethertype_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_dsa_tag_ethertype_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_ETYPE_EDSA_TAGGED = common dso_local global i32 0, align 4
@MVPP2_PE_ETYPE_EDSA_UNTAGGED = common dso_local global i32 0, align 4
@MVPP2_PE_ETYPE_DSA_TAGGED = common dso_local global i32 0, align 4
@MVPP2_PE_ETYPE_DSA_UNTAGGED = common dso_local global i32 0, align 4
@MVPP2_PRS_PORT_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_DSA = common dso_local global i32 0, align 4
@ETH_P_EDSA = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_DSA_MASK = common dso_local global i32 0, align 4
@MVPP2_ETH_TYPE_LEN = common dso_local global i64 0, align 8
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_DSA_TAGGED_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_AI_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_VLAN = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_NONE = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_L2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*, i32, i32, i32, i32)* @mvpp2_prs_dsa_tag_ethertype_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_prs_dsa_tag_ethertype_set(%struct.mvpp2* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mvpp2_prs_entry, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %5
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %17
  %21 = load i32, i32* @MVPP2_PE_ETYPE_EDSA_TAGGED, align 4
  br label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @MVPP2_PE_ETYPE_EDSA_UNTAGGED, align 4
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi i32 [ %21, %20 ], [ %23, %22 ]
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 8, i32* %13, align 4
  br label %36

26:                                               ; preds = %5
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* @MVPP2_PE_ETYPE_DSA_TAGGED, align 4
  br label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @MVPP2_PE_ETYPE_DSA_UNTAGGED, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  store i32 %35, i32* %14, align 4
  store i32 4, i32* %13, align 4
  br label %36

36:                                               ; preds = %33, %24
  %37 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %38 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %36
  %47 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %47, %struct.mvpp2_prs_entry* %11, i32 %48)
  br label %96

50:                                               ; preds = %36
  %51 = call i32 @memset(%struct.mvpp2_prs_entry* %11, i32 0, i32 4)
  %52 = load i32, i32* @MVPP2_PRS_LU_DSA, align 4
  %53 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %11, i32 %52)
  %54 = load i32, i32* %12, align 4
  %55 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %11, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @ETH_P_EDSA, align 4
  %57 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %11, i32 0, i32 %56)
  %58 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %11, i32 2, i32 0)
  %59 = load i32, i32* @MVPP2_PRS_RI_DSA_MASK, align 4
  %60 = load i32, i32* @MVPP2_PRS_RI_DSA_MASK, align 4
  %61 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %11, i32 %59, i32 %60)
  %62 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %63 = add nsw i64 2, %62
  %64 = load i32, i32* %13, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %63, %65
  %67 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %68 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %11, i64 %66, i32 %67)
  %69 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %70 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %11, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MVPP2_PRS_LU_DSA, align 4
  %73 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %69, i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %87

76:                                               ; preds = %50
  %77 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %78 = add nsw i64 %77, 2
  %79 = add nsw i64 %78, 3
  %80 = load i32, i32* @MVPP2_PRS_TCAM_DSA_TAGGED_BIT, align 4
  %81 = load i32, i32* @MVPP2_PRS_TCAM_DSA_TAGGED_BIT, align 4
  %82 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %11, i64 %79, i32 %80, i32 %81)
  %83 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %84 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %11, i32 0, i32 %83)
  %85 = load i32, i32* @MVPP2_PRS_LU_VLAN, align 4
  %86 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %11, i32 %85)
  br label %93

87:                                               ; preds = %50
  %88 = load i32, i32* @MVPP2_PRS_RI_VLAN_NONE, align 4
  %89 = load i32, i32* @MVPP2_PRS_RI_VLAN_MASK, align 4
  %90 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %11, i32 %88, i32 %89)
  %91 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %92 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %11, i32 %91)
  br label %93

93:                                               ; preds = %87, %76
  %94 = load i32, i32* %14, align 4
  %95 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %11, i32 %94)
  br label %96

96:                                               ; preds = %93, %46
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %8, align 4
  %99 = call i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry* %11, i32 %97, i32 %98)
  %100 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %101 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %100, %struct.mvpp2_prs_entry* %11)
  ret void
}

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i64, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry*, i64, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
