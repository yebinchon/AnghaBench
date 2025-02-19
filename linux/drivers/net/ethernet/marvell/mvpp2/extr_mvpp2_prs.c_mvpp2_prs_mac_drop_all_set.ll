; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_mac_drop_all_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_mac_drop_all_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvpp2_prs_entry = type { i64 }

@MVPP2_PE_DROP_ALL = common dso_local global i64 0, align 8
@MVPP2_PRS_LU_MAC = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_DROP_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_LU_GEN_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_FLOWS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvpp2*, i32, i32)* @mvpp2_prs_mac_drop_all_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvpp2_prs_mac_drop_all_set(%struct.mvpp2* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mvpp2_prs_entry, align 8
  store %struct.mvpp2* %0, %struct.mvpp2** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %9 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i64, i64* @MVPP2_PE_DROP_ALL, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %18 = load i64, i64* @MVPP2_PE_DROP_ALL, align 8
  %19 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %17, %struct.mvpp2_prs_entry* %7, i64 %18)
  br label %39

20:                                               ; preds = %3
  %21 = call i32 @memset(%struct.mvpp2_prs_entry* %7, i32 0, i32 8)
  %22 = load i32, i32* @MVPP2_PRS_LU_MAC, align 4
  %23 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %7, i32 %22)
  %24 = load i64, i64* @MVPP2_PE_DROP_ALL, align 8
  %25 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %7, i32 0, i32 0
  store i64 %24, i64* %25, align 8
  %26 = load i32, i32* @MVPP2_PRS_RI_DROP_MASK, align 4
  %27 = load i32, i32* @MVPP2_PRS_RI_DROP_MASK, align 4
  %28 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %7, i32 %26, i32 %27)
  %29 = load i32, i32* @MVPP2_PRS_SRAM_LU_GEN_BIT, align 4
  %30 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %7, i32 %29, i32 1)
  %31 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %32 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %7, i32 %31)
  %33 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %34 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %7, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @MVPP2_PRS_LU_MAC, align 4
  %37 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %33, i64 %35, i32 %36)
  %38 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %7, i32 0)
  br label %39

39:                                               ; preds = %20, %16
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry* %7, i32 %40, i32 %41)
  %43 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %44 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %43, %struct.mvpp2_prs_entry* %7)
  ret void
}

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i64) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i64, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
