; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_mac_promisc_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_mac_promisc_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PRS_L2_UNI_CAST = common dso_local global i32 0, align 4
@MVPP2_PRS_UCAST_VAL = common dso_local global i8 0, align 1
@MVPP2_PE_MAC_UC_PROMISCUOUS = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L2_UCAST = common dso_local global i32 0, align 4
@MVPP2_PRS_MCAST_VAL = common dso_local global i8 0, align 1
@MVPP2_PE_MAC_MC_PROMISCUOUS = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L2_MCAST = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_MAC = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_DSA = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L2_CAST_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_CAST_MASK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mvpp2_prs_mac_promisc_set(%struct.mvpp2* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mvpp2*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mvpp2_prs_entry, align 4
  %10 = alloca i8, align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @MVPP2_PRS_L2_UNI_CAST, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load i8, i8* @MVPP2_PRS_UCAST_VAL, align 1
  store i8 %17, i8* %10, align 1
  %18 = load i32, i32* @MVPP2_PE_MAC_UC_PROMISCUOUS, align 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* @MVPP2_PRS_RI_L2_UCAST, align 4
  store i32 %19, i32* %11, align 4
  br label %24

20:                                               ; preds = %4
  %21 = load i8, i8* @MVPP2_PRS_MCAST_VAL, align 1
  store i8 %21, i8* %10, align 1
  %22 = load i32, i32* @MVPP2_PE_MAC_MC_PROMISCUOUS, align 4
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* @MVPP2_PRS_RI_L2_MCAST, align 4
  store i32 %23, i32* %11, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %26 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %24
  %35 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %35, %struct.mvpp2_prs_entry* %9, i32 %36)
  br label %62

38:                                               ; preds = %24
  %39 = call i32 @memset(%struct.mvpp2_prs_entry* %9, i32 0, i32 4)
  %40 = load i32, i32* @MVPP2_PRS_LU_MAC, align 4
  %41 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %9, i32 %40)
  %42 = load i32, i32* %12, align 4
  %43 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %9, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* @MVPP2_PRS_LU_DSA, align 4
  %45 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %9, i32 %44)
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* @MVPP2_PRS_RI_L2_CAST_MASK, align 4
  %48 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %9, i32 %46, i32 %47)
  %49 = load i8, i8* %10, align 1
  %50 = load i32, i32* @MVPP2_PRS_CAST_MASK, align 4
  %51 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %9, i32 0, i8 zeroext %49, i32 %50)
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = mul nsw i32 2, %52
  %54 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %55 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %9, i32 %53, i32 %54)
  %56 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %9, i32 0)
  %57 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %58 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %9, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @MVPP2_PRS_LU_MAC, align 4
  %61 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %57, i32 %59, i32 %60)
  br label %62

62:                                               ; preds = %38, %34
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry* %9, i32 %63, i32 %64)
  %66 = load %struct.mvpp2*, %struct.mvpp2** %5, align 8
  %67 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %66, %struct.mvpp2_prs_entry* %9)
  ret void
}

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry*, i32, i8 zeroext, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
