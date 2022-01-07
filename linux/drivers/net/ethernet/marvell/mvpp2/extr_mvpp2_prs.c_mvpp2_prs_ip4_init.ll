; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_ip4_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_ip4_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32 }

@IPPROTO_TCP = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L4_TCP = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L4_PROTO_MASK = common dso_local global i32 0, align 4
@IPPROTO_UDP = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L4_UDP = common dso_local global i32 0, align 4
@IPPROTO_IGMP = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_CPU_CODE_RX_SPEC = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_UDF3_RX_SPECIAL = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_CPU_CODE_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_UDF3_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_L3_BROAD_CAST = common dso_local global i32 0, align 4
@MVPP2_PRS_L3_MULTI_CAST = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_IP4 = common dso_local global i32 0, align 4
@MVPP2_PE_IP4_PROTO_UN = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_UDF_TYPE_L4 = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_UDF_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_DIP_AI_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L4_OTHER = common dso_local global i32 0, align 4
@MVPP2_PRS_PORT_MASK = common dso_local global i32 0, align 4
@MVPP2_PE_IP4_ADDR_UN = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_FLOWS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_LU_GEN_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_UCAST = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_ADDR_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*)* @mvpp2_prs_ip4_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_ip4_init(%struct.mvpp2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca %struct.mvpp2_prs_entry, align 4
  %5 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %3, align 8
  %6 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %7 = load i32, i32* @IPPROTO_TCP, align 4
  %8 = load i32, i32* @MVPP2_PRS_RI_L4_TCP, align 4
  %9 = load i32, i32* @MVPP2_PRS_RI_L4_PROTO_MASK, align 4
  %10 = call i32 @mvpp2_prs_ip4_proto(%struct.mvpp2* %6, i32 %7, i32 %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %109

15:                                               ; preds = %1
  %16 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %17 = load i32, i32* @IPPROTO_UDP, align 4
  %18 = load i32, i32* @MVPP2_PRS_RI_L4_UDP, align 4
  %19 = load i32, i32* @MVPP2_PRS_RI_L4_PROTO_MASK, align 4
  %20 = call i32 @mvpp2_prs_ip4_proto(%struct.mvpp2* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %109

25:                                               ; preds = %15
  %26 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %27 = load i32, i32* @IPPROTO_IGMP, align 4
  %28 = load i32, i32* @MVPP2_PRS_RI_CPU_CODE_RX_SPEC, align 4
  %29 = load i32, i32* @MVPP2_PRS_RI_UDF3_RX_SPECIAL, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @MVPP2_PRS_RI_CPU_CODE_MASK, align 4
  %32 = load i32, i32* @MVPP2_PRS_RI_UDF3_MASK, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @mvpp2_prs_ip4_proto(%struct.mvpp2* %26, i32 %27, i32 %30, i32 %33)
  store i32 %34, i32* %5, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %25
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %109

39:                                               ; preds = %25
  %40 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %41 = load i32, i32* @MVPP2_PRS_L3_BROAD_CAST, align 4
  %42 = call i32 @mvpp2_prs_ip4_cast(%struct.mvpp2* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %109

47:                                               ; preds = %39
  %48 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %49 = load i32, i32* @MVPP2_PRS_L3_MULTI_CAST, align 4
  %50 = call i32 @mvpp2_prs_ip4_cast(%struct.mvpp2* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %109

55:                                               ; preds = %47
  %56 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 4)
  %57 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %58 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %57)
  %59 = load i32, i32* @MVPP2_PE_IP4_PROTO_UN, align 4
  %60 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %62 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %61)
  %63 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %64 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %4, i32 12, i32 %63)
  %65 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L4, align 4
  %66 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %67 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %4, i32 %65, i32 0, i32 %66)
  %68 = load i32, i32* @MVPP2_PRS_IPV4_DIP_AI_BIT, align 4
  %69 = load i32, i32* @MVPP2_PRS_IPV4_DIP_AI_BIT, align 4
  %70 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %4, i32 %68, i32 %69)
  %71 = load i32, i32* @MVPP2_PRS_RI_L4_OTHER, align 4
  %72 = load i32, i32* @MVPP2_PRS_RI_L4_PROTO_MASK, align 4
  %73 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %71, i32 %72)
  %74 = load i32, i32* @MVPP2_PRS_IPV4_DIP_AI_BIT, align 4
  %75 = call i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry* %4, i32 0, i32 %74)
  %76 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %77 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %4, i32 %76)
  %78 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %79 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %82 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %78, i32 %80, i32 %81)
  %83 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %84 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %83, %struct.mvpp2_prs_entry* %4)
  %85 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 4)
  %86 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %87 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %86)
  %88 = load i32, i32* @MVPP2_PE_IP4_ADDR_UN, align 4
  %89 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %88, i32* %89, align 4
  %90 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %91 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %90)
  %92 = load i32, i32* @MVPP2_PRS_SRAM_LU_GEN_BIT, align 4
  %93 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %4, i32 %92, i32 1)
  %94 = load i32, i32* @MVPP2_PRS_RI_L3_UCAST, align 4
  %95 = load i32, i32* @MVPP2_PRS_RI_L3_ADDR_MASK, align 4
  %96 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %94, i32 %95)
  %97 = load i32, i32* @MVPP2_PRS_IPV4_DIP_AI_BIT, align 4
  %98 = load i32, i32* @MVPP2_PRS_IPV4_DIP_AI_BIT, align 4
  %99 = call i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry* %4, i32 %97, i32 %98)
  %100 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %101 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %4, i32 %100)
  %102 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %103 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %106 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %102, i32 %104, i32 %105)
  %107 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %108 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %107, %struct.mvpp2_prs_entry* %4)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %55, %53, %45, %37, %23, %13
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @mvpp2_prs_ip4_proto(%struct.mvpp2*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_prs_ip4_cast(%struct.mvpp2*, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
