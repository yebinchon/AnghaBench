; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_ip6_cast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_ip6_cast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PRS_L3_MULTI_CAST = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_IP6 = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_MCAST = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_ADDR_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV6_NO_EXT_AI_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV6_MC = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV6_MC_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_PORT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i16)* @mvpp2_prs_ip6_cast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_ip6_cast(%struct.mvpp2* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvpp2*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.mvpp2_prs_entry, align 4
  %7 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %4, align 8
  store i16 %1, i16* %5, align 2
  %8 = load i16, i16* %5, align 2
  %9 = zext i16 %8 to i32
  %10 = load i16, i16* @MVPP2_PRS_L3_MULTI_CAST, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp ne i32 %9, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %55

16:                                               ; preds = %2
  %17 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %18 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %19 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %20 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %16
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %55

25:                                               ; preds = %16
  %26 = call i32 @memset(%struct.mvpp2_prs_entry* %6, i32 0, i32 4)
  %27 = load i32, i32* @MVPP2_PRS_LU_IP6, align 4
  %28 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %6, i32 %27)
  %29 = load i32, i32* %7, align 4
  %30 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %6, i32 0, i32 0
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* @MVPP2_PRS_LU_IP6, align 4
  %32 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %6, i32 %31)
  %33 = load i32, i32* @MVPP2_PRS_RI_L3_MCAST, align 4
  %34 = load i32, i32* @MVPP2_PRS_RI_L3_ADDR_MASK, align 4
  %35 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %6, i32 %33, i32 %34)
  %36 = load i32, i32* @MVPP2_PRS_IPV6_NO_EXT_AI_BIT, align 4
  %37 = load i32, i32* @MVPP2_PRS_IPV6_NO_EXT_AI_BIT, align 4
  %38 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %6, i32 %36, i32 %37)
  %39 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %40 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %6, i32 -18, i32 %39)
  %41 = load i32, i32* @MVPP2_PRS_IPV6_MC, align 4
  %42 = load i32, i32* @MVPP2_PRS_IPV6_MC_MASK, align 4
  %43 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %6, i32 0, i32 %41, i32 %42)
  %44 = load i32, i32* @MVPP2_PRS_IPV6_NO_EXT_AI_BIT, align 4
  %45 = call i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry* %6, i32 0, i32 %44)
  %46 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %47 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %6, i32 %46)
  %48 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %49 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %6, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @MVPP2_PRS_LU_IP6, align 4
  %52 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %48, i32 %50, i32 %51)
  %53 = load %struct.mvpp2*, %struct.mvpp2** %4, align 8
  %54 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %53, %struct.mvpp2_prs_entry* %6)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %25, %23, %13
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry*, i32, i32, i32) #1

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
