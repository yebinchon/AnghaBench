; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_add_flow.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_add_flow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_FLOW_ID_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_LU_DONE_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_FLOWS = common dso_local global i32 0, align 4
@MVPP2_PRS_PORT_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvpp2_prs_add_flow(%struct.mvpp2* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvpp2_prs_entry, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = call i32 @memset(%struct.mvpp2_prs_entry* %10, i32 0, i32 4)
  %16 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %17 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %18 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %19 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %16, i32 %17, i32 %18)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %13, align 4
  store i32 %23, i32* %5, align 4
  br label %63

24:                                               ; preds = %4
  %25 = load i32, i32* %13, align 4
  %26 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 0
  store i32 %25, i32* %26, align 4
  store i32* %8, i32** %11, align 8
  store i32* %9, i32** %12, align 8
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @MVPP2_PRS_FLOW_ID_MASK, align 4
  %29 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %10, i32 %27, i32 %28)
  %30 = load i32, i32* @MVPP2_PRS_SRAM_LU_DONE_BIT, align 4
  %31 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %10, i32 %30, i32 1)
  store i32 0, i32* %14, align 4
  br label %32

32:                                               ; preds = %48, %24
  %33 = load i32, i32* %14, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load i32, i32* %14, align 4
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %14, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %10, i32 %36, i32 %41, i32 %46)
  br label %48

48:                                               ; preds = %35
  %49 = load i32, i32* %14, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %14, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %53 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %56 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %52, i32 %54, i32 %55)
  %57 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %58 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %10, i32 %57)
  %59 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %60 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %10, i32 %59)
  %61 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %62 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %61, %struct.mvpp2_prs_entry* %10)
  store i32 0, i32* %5, align 4
  br label %63

63:                                               ; preds = %51, %22
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
