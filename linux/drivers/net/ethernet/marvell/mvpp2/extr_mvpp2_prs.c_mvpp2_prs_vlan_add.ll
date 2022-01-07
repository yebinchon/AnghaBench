; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vlan_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vlan_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_VLAN = common dso_local global i64 0, align 8
@MVPP2_PRS_RI_VLAN_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_DOUBLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_VID = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_AI_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SINGLE_VLAN_AI = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_SINGLE = common dso_local global i32 0, align 4
@MVPP2_PRS_DBL_VLAN_AI_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_VLAN_TRIPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i16, i32, i32)* @mvpp2_prs_vlan_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_vlan_add(%struct.mvpp2* %0, i16 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvpp2_prs_entry, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %15 = call i32 @memset(%struct.mvpp2_prs_entry* %10, i32 0, i32 4)
  %16 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %17 = load i16, i16* %7, align 2
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @mvpp2_prs_vlan_find(%struct.mvpp2* %16, i16 zeroext %17, i32 %18)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %116

22:                                               ; preds = %4
  %23 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %24 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %25 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %26 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %23, i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %22
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %5, align 4
  br label %126

31:                                               ; preds = %22
  %32 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %71, %31
  %34 = load i32, i32* %11, align 4
  %35 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %36 = icmp sge i32 %34, %35
  br i1 %36, label %37, label %74

37:                                               ; preds = %33
  %38 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %39 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %37
  %48 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %49 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %11, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @MVPP2_PRS_LU_VLAN, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47, %37
  br label %71

59:                                               ; preds = %47
  %60 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %61 = load i32, i32* %11, align 4
  %62 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %60, %struct.mvpp2_prs_entry* %10, i32 %61)
  %63 = call i32 @mvpp2_prs_sram_ri_get(%struct.mvpp2_prs_entry* %10)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* @MVPP2_PRS_RI_VLAN_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @MVPP2_PRS_RI_VLAN_DOUBLE, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %59
  br label %74

70:                                               ; preds = %59
  br label %71

71:                                               ; preds = %70, %58
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %11, align 4
  br label %33

74:                                               ; preds = %69, %33
  %75 = load i32, i32* %12, align 4
  %76 = load i32, i32* %11, align 4
  %77 = icmp sle i32 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %74
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %126

81:                                               ; preds = %74
  %82 = call i32 @memset(%struct.mvpp2_prs_entry* %10, i32 0, i32 4)
  %83 = load i32, i32* %12, align 4
  %84 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load i64, i64* @MVPP2_PRS_LU_VLAN, align 8
  %86 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %10, i64 %85)
  %87 = load i16, i16* %7, align 2
  %88 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %10, i32 0, i16 zeroext %87)
  %89 = load i32, i32* @MVPP2_PRS_LU_VID, align 4
  %90 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %10, i32 %89)
  %91 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %92 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %10, i32 0, i32 %91)
  %93 = load i32, i32* %8, align 4
  %94 = load i32, i32* @MVPP2_PRS_SINGLE_VLAN_AI, align 4
  %95 = icmp eq i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %81
  %97 = load i32, i32* @MVPP2_PRS_RI_VLAN_SINGLE, align 4
  %98 = load i32, i32* @MVPP2_PRS_RI_VLAN_MASK, align 4
  %99 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %10, i32 %97, i32 %98)
  br label %107

100:                                              ; preds = %81
  %101 = load i32, i32* @MVPP2_PRS_DBL_VLAN_AI_BIT, align 4
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* @MVPP2_PRS_RI_VLAN_TRIPLE, align 4
  %105 = load i32, i32* @MVPP2_PRS_RI_VLAN_MASK, align 4
  %106 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %10, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %100, %96
  %108 = load i32, i32* %8, align 4
  %109 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %110 = call i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry* %10, i32 %108, i32 %109)
  %111 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %112 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i64, i64* @MVPP2_PRS_LU_VLAN, align 8
  %115 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %111, i32 %113, i64 %114)
  br label %120

116:                                              ; preds = %4
  %117 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %117, %struct.mvpp2_prs_entry* %10, i32 %118)
  br label %120

120:                                              ; preds = %116, %107
  %121 = load i32, i32* %9, align 4
  %122 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %10, i32 %121)
  %123 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %124 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %123, %struct.mvpp2_prs_entry* %10)
  %125 = load i32, i32* %13, align 4
  store i32 %125, i32* %5, align 4
  br label %126

126:                                              ; preds = %120, %78, %29
  %127 = load i32, i32* %5, align 4
  ret i32 %127
}

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_vlan_find(%struct.mvpp2*, i16 zeroext, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_get(%struct.mvpp2_prs_entry*) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i64) #1

declare dso_local i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry*, i32, i16 zeroext) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i64) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
