; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_def_flow_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_def_flow_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i64 }

@MVPP2_MAX_PORTS = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_FLOWS = common dso_local global i32 0, align 4
@MVPP2_PE_FIRST_DEFAULT_FLOW = common dso_local global i64 0, align 8
@MVPP2_PRS_FLOW_ID_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_LU_DONE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*)* @mvpp2_prs_def_flow_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_prs_def_flow_init(%struct.mvpp2* %0) #0 {
  %2 = alloca %struct.mvpp2*, align 8
  %3 = alloca %struct.mvpp2_prs_entry, align 8
  %4 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %2, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %31, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MVPP2_MAX_PORTS, align 4
  %8 = icmp slt i32 %6, %7
  br i1 %8, label %9, label %34

9:                                                ; preds = %5
  %10 = call i32 @memset(%struct.mvpp2_prs_entry* %3, i32 0, i32 8)
  %11 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %12 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %3, i32 %11)
  %13 = load i64, i64* @MVPP2_PE_FIRST_DEFAULT_FLOW, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = sub nsw i64 %13, %15
  %17 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %3, i32 0, i32 0
  store i64 %16, i64* %17, align 8
  %18 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %3, i32 0)
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @MVPP2_PRS_FLOW_ID_MASK, align 4
  %21 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %3, i32 %19, i32 %20)
  %22 = load i32, i32* @MVPP2_PRS_SRAM_LU_DONE_BIT, align 4
  %23 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %3, i32 %22, i32 1)
  %24 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %25 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %3, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %28 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %24, i64 %26, i32 %27)
  %29 = load %struct.mvpp2*, %struct.mvpp2** %2, align 8
  %30 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %29, %struct.mvpp2_prs_entry* %3)
  br label %31

31:                                               ; preds = %9
  %32 = load i32, i32* %4, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %4, align 4
  br label %5

34:                                               ; preds = %5
  ret void
}

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i64, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
