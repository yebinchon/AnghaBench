; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_double_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_double_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_VLAN = common dso_local global i64 0, align 8
@MVPP2_PRS_RI_VLAN_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_SINGLE = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_TRIPLE = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@MVPP2_VLAN_TAG_LEN = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_DOUBLE = common dso_local global i32 0, align 4
@MVPP2_PRS_DBL_VLAN_AI_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_AI_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i16, i16, i32)* @mvpp2_prs_double_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_double_vlan_add(%struct.mvpp2* %0, i16 zeroext %1, i16 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.mvpp2_prs_entry, align 4
  %15 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %16 = call i32 @memset(%struct.mvpp2_prs_entry* %14, i32 0, i32 4)
  %17 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %18 = load i16, i16* %7, align 2
  %19 = load i16, i16* %8, align 2
  %20 = call i32 @mvpp2_prs_double_vlan_find(%struct.mvpp2* %17, i16 zeroext %18, i16 zeroext %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %128

23:                                               ; preds = %4
  %24 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %25 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %26 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %27 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %24, i32 %25, i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %11, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = load i32, i32* %11, align 4
  store i32 %31, i32* %5, align 4
  br label %138

32:                                               ; preds = %23
  %33 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %34 = call i32 @mvpp2_prs_double_vlan_ai_free_get(%struct.mvpp2* %33)
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* %12, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %12, align 4
  store i32 %38, i32* %5, align 4
  br label %138

39:                                               ; preds = %32
  %40 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  store i32 %40, i32* %10, align 4
  br label %41

41:                                               ; preds = %84, %39
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %44 = icmp sle i32 %42, %43
  br i1 %44, label %45, label %87

45:                                               ; preds = %41
  %46 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %47 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %45
  %56 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %57 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @MVPP2_PRS_LU_VLAN, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55, %45
  br label %84

67:                                               ; preds = %55
  %68 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %68, %struct.mvpp2_prs_entry* %14, i32 %69)
  %71 = call i32 @mvpp2_prs_sram_ri_get(%struct.mvpp2_prs_entry* %14)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* @MVPP2_PRS_RI_VLAN_MASK, align 4
  %73 = load i32, i32* %15, align 4
  %74 = and i32 %73, %72
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* @MVPP2_PRS_RI_VLAN_SINGLE, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %82, label %78

78:                                               ; preds = %67
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @MVPP2_PRS_RI_VLAN_TRIPLE, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %78, %67
  br label %87

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %66
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %10, align 4
  br label %41

87:                                               ; preds = %82, %41
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp sge i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load i32, i32* @ERANGE, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %138

94:                                               ; preds = %87
  %95 = call i32 @memset(%struct.mvpp2_prs_entry* %14, i32 0, i32 4)
  %96 = load i64, i64* @MVPP2_PRS_LU_VLAN, align 8
  %97 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %14, i64 %96)
  %98 = load i32, i32* %11, align 4
  %99 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %14, i32 0, i32 0
  store i32 %98, i32* %99, align 4
  %100 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %101 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 1, i32* %105, align 4
  %106 = load i16, i16* %7, align 2
  %107 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %14, i32 0, i16 zeroext %106)
  %108 = load i16, i16* %8, align 2
  %109 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %14, i32 4, i16 zeroext %108)
  %110 = load i64, i64* @MVPP2_PRS_LU_VLAN, align 8
  %111 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %14, i64 %110)
  %112 = load i32, i32* @MVPP2_VLAN_TAG_LEN, align 4
  %113 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %114 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %14, i32 %112, i32 %113)
  %115 = load i32, i32* @MVPP2_PRS_RI_VLAN_DOUBLE, align 4
  %116 = load i32, i32* @MVPP2_PRS_RI_VLAN_MASK, align 4
  %117 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %14, i32 %115, i32 %116)
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* @MVPP2_PRS_DBL_VLAN_AI_BIT, align 4
  %120 = or i32 %118, %119
  %121 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %122 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %14, i32 %120, i32 %121)
  %123 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %124 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %14, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i64, i64* @MVPP2_PRS_LU_VLAN, align 8
  %127 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %123, i32 %125, i64 %126)
  br label %132

128:                                              ; preds = %4
  %129 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %130 = load i32, i32* %11, align 4
  %131 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %129, %struct.mvpp2_prs_entry* %14, i32 %130)
  br label %132

132:                                              ; preds = %128, %94
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %14, i32 %133)
  %135 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %136 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %135, %struct.mvpp2_prs_entry* %14)
  %137 = load i32, i32* %13, align 4
  store i32 %137, i32* %5, align 4
  br label %138

138:                                              ; preds = %132, %91, %37, %30
  %139 = load i32, i32* %5, align 4
  ret i32 %139
}

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_double_vlan_find(%struct.mvpp2*, i16 zeroext, i16 zeroext) #1

declare dso_local i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_double_vlan_ai_free_get(%struct.mvpp2*) #1

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_get(%struct.mvpp2_prs_entry*) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i64) #1

declare dso_local i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry*, i32, i16 zeroext) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i64) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i64) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
