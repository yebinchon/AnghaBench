; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_ip4_cast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_ip4_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_IP4 = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_MC = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_MC_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_MCAST = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_ADDR_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_BC_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_BCAST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_FLOWS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_LU_GEN_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_DIP_AI_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i16)* @mvpp2_prs_ip4_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_ip4_cast(%struct.mvpp2* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.mvpp2_prs_entry, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %4, align 8
  store i16 %1, i16* %5, align 2
  %9 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %10 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %11 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %12 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %9, i32 %10, i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %3, align 4
  br label %69

17:                                               ; preds = %2
  %18 = call i32 @memset(%struct.mvpp2_prs_entry* %6, i32 0, i32 4)
  %19 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %20 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %6, i32 %19)
  %21 = load i32, i32* %8, align 4
  %22 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %6, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i32
  switch i32 %24, label %49 [
    i32 128, label %25
    i32 129, label %32
  ]

25:                                               ; preds = %17
  %26 = load i32, i32* @MVPP2_PRS_IPV4_MC, align 4
  %27 = load i32, i32* @MVPP2_PRS_IPV4_MC_MASK, align 4
  %28 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %6, i32 0, i32 %26, i32 %27)
  %29 = load i32, i32* @MVPP2_PRS_RI_L3_MCAST, align 4
  %30 = load i32, i32* @MVPP2_PRS_RI_L3_ADDR_MASK, align 4
  %31 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %6, i32 %29, i32 %30)
  br label %52

32:                                               ; preds = %17
  %33 = load i32, i32* @MVPP2_PRS_IPV4_BC_MASK, align 4
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %6, i32 0, i32 %34, i32 %35)
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %6, i32 1, i32 %37, i32 %38)
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %6, i32 2, i32 %40, i32 %41)
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %6, i32 3, i32 %43, i32 %44)
  %46 = load i32, i32* @MVPP2_PRS_RI_L3_BCAST, align 4
  %47 = load i32, i32* @MVPP2_PRS_RI_L3_ADDR_MASK, align 4
  %48 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %6, i32 %46, i32 %47)
  br label %52

49:                                               ; preds = %17
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %69

52:                                               ; preds = %32, %25
  %53 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %54 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %6, i32 %53)
  %55 = load i32, i32* @MVPP2_PRS_SRAM_LU_GEN_BIT, align 4
  %56 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %6, i32 %55, i32 1)
  %57 = load i32, i32* @MVPP2_PRS_IPV4_DIP_AI_BIT, align 4
  %58 = load i32, i32* @MVPP2_PRS_IPV4_DIP_AI_BIT, align 4
  %59 = call i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry* %6, i32 %57, i32 %58)
  %60 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %61 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %6, i32 %60)
  %62 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %63 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %6, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %66 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %62, i32 %64, i32 %65)
  %67 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %68 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %67, %struct.mvpp2_prs_entry* %6)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %52, %49, %15
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
