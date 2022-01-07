; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_entry_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_entry_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.mvpp2* }
%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_VID_FILT_RANGE_START = common dso_local global i32 0, align 4
@MVPP2_PRS_VLAN_FILT_MAX = common dso_local global i32 0, align 4
@MVPP2_DSA_EXTENDED = common dso_local global i32 0, align 4
@MVPP2_VLAN_TAG_EDSA_LEN = common dso_local global i32 0, align 4
@MVPP2_VLAN_TAG_LEN = common dso_local global i32 0, align 4
@MVPP2_PRS_VLAN_FILT_MAX_ENTRY = common dso_local global i64 0, align 8
@MVPP2_PRS_LU_VID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_L2 = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_VID_TCAM_BYTE = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_AI_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp2_prs_vid_entry_add(%struct.mvpp2_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvpp2*, align 8
  %11 = alloca %struct.mvpp2_prs_entry, align 4
  %12 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load i32, i32* @MVPP2_PE_VID_FILT_RANGE_START, align 4
  %14 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %15 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @MVPP2_PRS_VLAN_FILT_MAX, align 4
  %18 = mul i32 %16, %17
  %19 = add i32 %13, %18
  store i32 %19, i32* %6, align 4
  store i32 4095, i32* %7, align 4
  %20 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %21 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %20, i32 0, i32 1
  %22 = load %struct.mvpp2*, %struct.mvpp2** %21, align 8
  store %struct.mvpp2* %22, %struct.mvpp2** %10, align 8
  %23 = call i32 @memset(%struct.mvpp2_prs_entry* %11, i32 0, i32 4)
  %24 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @mvpp2_prs_vid_range_find(%struct.mvpp2_port* %24, i32 %25, i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = load %struct.mvpp2*, %struct.mvpp2** %10, align 8
  %29 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %30 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @MVPP2_MH_REG(i32 %31)
  %33 = call i32 @mvpp2_read(%struct.mvpp2* %28, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @MVPP2_DSA_EXTENDED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %2
  %39 = load i32, i32* @MVPP2_VLAN_TAG_EDSA_LEN, align 4
  store i32 %39, i32* %9, align 4
  br label %42

40:                                               ; preds = %2
  %41 = load i32, i32* @MVPP2_VLAN_TAG_LEN, align 4
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* %12, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %42
  %46 = load %struct.mvpp2*, %struct.mvpp2** %10, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %6, align 4
  %49 = zext i32 %48 to i64
  %50 = load i64, i64* @MVPP2_PRS_VLAN_FILT_MAX_ENTRY, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %46, i32 %47, i64 %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %3, align 4
  br label %89

57:                                               ; preds = %45
  %58 = load i32, i32* @MVPP2_PRS_LU_VID, align 4
  %59 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %11, i32 %58)
  %60 = load i32, i32* %12, align 4
  %61 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %11, i32 0, i32 0
  store i32 %60, i32* %61, align 4
  %62 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %11, i32 0)
  br label %67

63:                                               ; preds = %42
  %64 = load %struct.mvpp2*, %struct.mvpp2** %10, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %64, %struct.mvpp2_prs_entry* %11, i32 %65)
  br label %67

67:                                               ; preds = %63, %57
  %68 = load %struct.mvpp2_port*, %struct.mvpp2_port** %4, align 8
  %69 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry* %11, i32 %70, i32 1)
  %72 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %73 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %11, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %76 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %11, i32 %74, i32 %75)
  %77 = load i32, i32* @MVPP2_PRS_VID_TCAM_BYTE, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @mvpp2_prs_match_vid(%struct.mvpp2_prs_entry* %11, i32 %77, i32 %78)
  %80 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %81 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %11, i32 0, i32 %80)
  %82 = load %struct.mvpp2*, %struct.mvpp2** %10, align 8
  %83 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %11, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @MVPP2_PRS_LU_VID, align 4
  %86 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %82, i32 %84, i32 %85)
  %87 = load %struct.mvpp2*, %struct.mvpp2** %10, align 8
  %88 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %87, %struct.mvpp2_prs_entry* %11)
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %67, %55
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_vid_range_find(%struct.mvpp2_port*, i32, i32) #1

declare dso_local i32 @mvpp2_read(%struct.mvpp2*, i32) #1

declare dso_local i32 @MVPP2_MH_REG(i32) #1

declare dso_local i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2*, i32, i64) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_match_vid(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
