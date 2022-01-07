; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_def_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_def_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2_port = type { i32, i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_FLOW_ID_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_LU_DONE_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_FLOWS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp2_prs_def_flow(%struct.mvpp2_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2_port*, align 8
  %4 = alloca %struct.mvpp2_prs_entry, align 4
  %5 = alloca i32, align 4
  store %struct.mvpp2_port* %0, %struct.mvpp2_port** %3, align 8
  %6 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 4)
  %7 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %8 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %11 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @mvpp2_prs_flow_find(i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %1
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %18 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %21 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %22 = call i32 @mvpp2_prs_tcam_first_free(i32 %19, i32 %20, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %62

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  %29 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %28, i32* %29, align 4
  %30 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %31 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @MVPP2_PRS_FLOW_ID_MASK, align 4
  %34 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %4, i32 %32, i32 %33)
  %35 = load i32, i32* @MVPP2_PRS_SRAM_LU_DONE_BIT, align 4
  %36 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %4, i32 %35, i32 1)
  %37 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %38 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %43 = call i32 @mvpp2_prs_shadow_set(i32 %39, i32 %41, i32 %42)
  br label %50

44:                                               ; preds = %1
  %45 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %46 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @mvpp2_prs_init_from_hw(i32 %47, %struct.mvpp2_prs_entry* %4, i32 %48)
  br label %50

50:                                               ; preds = %44, %27
  %51 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %52 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %51)
  %53 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %54 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = shl i32 1, %55
  %57 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %4, i32 %56)
  %58 = load %struct.mvpp2_port*, %struct.mvpp2_port** %3, align 8
  %59 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @mvpp2_prs_hw_write(i32 %60, %struct.mvpp2_prs_entry* %4)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %50, %25
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_flow_find(i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_first_free(i32, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(i32, i32, i32) #1

declare dso_local i32 @mvpp2_prs_init_from_hw(i32, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(i32, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
