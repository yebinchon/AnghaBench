; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_dsa_tag_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_dsa_tag_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_EDSA_TAGGED = common dso_local global i32 0, align 4
@MVPP2_PE_EDSA_UNTAGGED = common dso_local global i32 0, align 4
@MVPP2_PE_DSA_TAGGED = common dso_local global i32 0, align 4
@MVPP2_PE_DSA_UNTAGGED = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_DSA = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_DSA_TAGGED_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_AI_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_SINGLE = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_VID = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_NONE = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_L2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*, i32, i32, i32, i32)* @mvpp2_prs_dsa_tag_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_prs_dsa_tag_set(%struct.mvpp2* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mvpp2_prs_entry, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %5
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %16
  %20 = load i32, i32* @MVPP2_PE_EDSA_TAGGED, align 4
  br label %23

21:                                               ; preds = %16
  %22 = load i32, i32* @MVPP2_PE_EDSA_UNTAGGED, align 4
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi i32 [ %20, %19 ], [ %22, %21 ]
  store i32 %24, i32* %12, align 4
  store i32 8, i32* %13, align 4
  br label %34

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = load i32, i32* @MVPP2_PE_DSA_TAGGED, align 4
  br label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @MVPP2_PE_DSA_UNTAGGED, align 4
  br label %32

32:                                               ; preds = %30, %28
  %33 = phi i32 [ %29, %28 ], [ %31, %30 ]
  store i32 %33, i32* %12, align 4
  store i32 4, i32* %13, align 4
  br label %34

34:                                               ; preds = %32, %23
  %35 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %36 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %45, %struct.mvpp2_prs_entry* %11, i32 %46)
  br label %90

48:                                               ; preds = %34
  %49 = call i32 @memset(%struct.mvpp2_prs_entry* %11, i32 0, i32 4)
  %50 = load i32, i32* @MVPP2_PRS_LU_DSA, align 4
  %51 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %11, i32 %50)
  %52 = load i32, i32* %12, align 4
  %53 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %11, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %55 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %11, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MVPP2_PRS_LU_DSA, align 4
  %58 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %54, i32 %56, i32 %57)
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %79

61:                                               ; preds = %48
  %62 = load i32, i32* @MVPP2_PRS_TCAM_DSA_TAGGED_BIT, align 4
  %63 = load i32, i32* @MVPP2_PRS_TCAM_DSA_TAGGED_BIT, align 4
  %64 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %11, i32 0, i32 %62, i32 %63)
  %65 = load i32, i32* %10, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %69 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %11, i32 1, i32 %68)
  br label %73

70:                                               ; preds = %61
  %71 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %72 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %11, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* @MVPP2_PRS_RI_VLAN_SINGLE, align 4
  %75 = load i32, i32* @MVPP2_PRS_RI_VLAN_MASK, align 4
  %76 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %11, i32 %74, i32 %75)
  %77 = load i32, i32* @MVPP2_PRS_LU_VID, align 4
  %78 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %11, i32 %77)
  br label %88

79:                                               ; preds = %48
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %82 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %11, i32 %80, i32 %81)
  %83 = load i32, i32* @MVPP2_PRS_RI_VLAN_NONE, align 4
  %84 = load i32, i32* @MVPP2_PRS_RI_VLAN_MASK, align 4
  %85 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %11, i32 %83, i32 %84)
  %86 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %87 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %11, i32 %86)
  br label %88

88:                                               ; preds = %79, %73
  %89 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %11, i32 0)
  br label %90

90:                                               ; preds = %88, %44
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = call i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry* %11, i32 %91, i32 %92)
  %94 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %95 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %94, %struct.mvpp2_prs_entry* %11)
  ret void
}

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
