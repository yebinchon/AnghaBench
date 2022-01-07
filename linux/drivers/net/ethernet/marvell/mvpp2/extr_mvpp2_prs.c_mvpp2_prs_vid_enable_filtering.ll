; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_enable_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_vid_enable_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, %struct.mvpp2* }
%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_DSA_EXTENDED = common dso_local global i32 0, align 4
@MVPP2_VLAN_TAG_EDSA_LEN = common dso_local global i32 0, align 4
@MVPP2_VLAN_TAG_LEN = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_VID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_L2 = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_DROP_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_AI_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvpp2_prs_vid_enable_filtering(%struct.mvpp2_port* %0) #0 {
  %2 = alloca %struct.mvpp2_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvpp2_prs_entry, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %2, align 8
  %8 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %9 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @MVPP2_PRS_VID_PORT_DFLT(i32 %10)
  store i32 %11, i32* %3, align 4
  %12 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %13 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %12, i32 0, i32 1
  %14 = load %struct.mvpp2*, %struct.mvpp2** %13, align 8
  store %struct.mvpp2* %14, %struct.mvpp2** %4, align 8
  %15 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %16 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i32, i32* %3, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  br label %68

25:                                               ; preds = %1
  %26 = call i32 @memset(%struct.mvpp2_prs_entry* %7, i32 0, i32 4)
  %27 = load i32, i32* %3, align 4
  %28 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %7, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %30 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %31 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @MVPP2_MH_REG(i32 %32)
  %34 = call i32 @mvpp2_read(%struct.mvpp2* %29, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* @MVPP2_DSA_EXTENDED, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* @MVPP2_VLAN_TAG_EDSA_LEN, align 4
  store i32 %40, i32* %6, align 4
  br label %43

41:                                               ; preds = %25
  %42 = load i32, i32* @MVPP2_VLAN_TAG_LEN, align 4
  store i32 %42, i32* %6, align 4
  br label %43

43:                                               ; preds = %41, %39
  %44 = load i32, i32* @MVPP2_PRS_LU_VID, align 4
  %45 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %7, i32 %44)
  %46 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %7, i32 0)
  %47 = load %struct.mvpp2_port*, %struct.mvpp2_port** %2, align 8
  %48 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry* %7, i32 %49, i32 1)
  %51 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %52 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %7, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %55 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %7, i32 %53, i32 %54)
  %56 = load i32, i32* @MVPP2_PRS_RI_DROP_MASK, align 4
  %57 = load i32, i32* @MVPP2_PRS_RI_DROP_MASK, align 4
  %58 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %7, i32 %56, i32 %57)
  %59 = load i32, i32* @MVPP2_PRS_SRAM_AI_MASK, align 4
  %60 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %7, i32 0, i32 %59)
  %61 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %62 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MVPP2_PRS_LU_VID, align 4
  %65 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %61, i32 %63, i32 %64)
  %66 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %67 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %66, %struct.mvpp2_prs_entry* %7)
  br label %68

68:                                               ; preds = %43, %24
  ret void
}

declare dso_local i32 @MVPP2_PRS_VID_PORT_DFLT(i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_read(%struct.mvpp2*, i32) #1

declare dso_local i32 @MVPP2_MH_REG(i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
