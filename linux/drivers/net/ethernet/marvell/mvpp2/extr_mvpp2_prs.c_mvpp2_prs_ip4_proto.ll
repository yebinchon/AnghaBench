; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_ip4_proto.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_ip4_proto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32, i32* }

@IPPROTO_TCP = common dso_local global i16 0, align 2
@IPPROTO_UDP = common dso_local global i16 0, align 2
@IPPROTO_IGMP = common dso_local global i16 0, align 2
@EINVAL = common dso_local global i32 0, align 4
@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_IP4 = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_UDF_TYPE_L4 = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_UDF_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_DIP_AI_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_IP_FRAG_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_PROTO_MASK_L = common dso_local global i32 0, align 4
@MVPP2_PRS_TCAM_PROTO_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_PORT_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_RI_WORD = common dso_local global i64 0, align 8
@MVPP2_PRS_SRAM_RI_CTRL_WORD = common dso_local global i64 0, align 8
@MVPP2_PRS_RI_IP_FRAG_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*, i16, i32, i32)* @mvpp2_prs_ip4_proto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_ip4_proto(%struct.mvpp2* %0, i16 zeroext %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mvpp2_prs_entry, align 8
  %11 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %6, align 8
  store i16 %1, i16* %7, align 2
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i16, i16* %7, align 2
  %13 = zext i16 %12 to i32
  %14 = load i16, i16* @IPPROTO_TCP, align 2
  %15 = zext i16 %14 to i32
  %16 = icmp ne i32 %13, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %4
  %18 = load i16, i16* %7, align 2
  %19 = zext i16 %18 to i32
  %20 = load i16, i16* @IPPROTO_UDP, align 2
  %21 = zext i16 %20 to i32
  %22 = icmp ne i32 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load i16, i16* %7, align 2
  %25 = zext i16 %24 to i32
  %26 = load i16, i16* @IPPROTO_IGMP, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %119

32:                                               ; preds = %23, %17, %4
  %33 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %34 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %35 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %36 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %33, i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  store i32 %40, i32* %5, align 4
  br label %119

41:                                               ; preds = %32
  %42 = call i32 @memset(%struct.mvpp2_prs_entry* %10, i32 0, i32 16)
  %43 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %44 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %10, i32 %43)
  %45 = load i32, i32* %11, align 4
  %46 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %48 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %10, i32 %47)
  %49 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %50 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %10, i32 12, i32 %49)
  %51 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L4, align 4
  %52 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %53 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %10, i32 %51, i32 0, i32 %52)
  %54 = load i32, i32* @MVPP2_PRS_IPV4_DIP_AI_BIT, align 4
  %55 = load i32, i32* @MVPP2_PRS_IPV4_DIP_AI_BIT, align 4
  %56 = call i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry* %10, i32 %54, i32 %55)
  %57 = load i32, i32* %8, align 4
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @MVPP2_PRS_RI_IP_FRAG_MASK, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %10, i32 %57, i32 %60)
  %62 = load i32, i32* @MVPP2_PRS_TCAM_PROTO_MASK_L, align 4
  %63 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %10, i32 2, i32 0, i32 %62)
  %64 = load i32, i32* @MVPP2_PRS_TCAM_PROTO_MASK, align 4
  %65 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %10, i32 3, i32 0, i32 %64)
  %66 = load i16, i16* %7, align 2
  %67 = zext i16 %66 to i32
  %68 = load i32, i32* @MVPP2_PRS_TCAM_PROTO_MASK, align 4
  %69 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %10, i32 5, i32 %67, i32 %68)
  %70 = load i32, i32* @MVPP2_PRS_IPV4_DIP_AI_BIT, align 4
  %71 = call i32 @mvpp2_prs_tcam_ai_update(%struct.mvpp2_prs_entry* %10, i32 0, i32 %70)
  %72 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %73 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %10, i32 %72)
  %74 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %75 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %78 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %74, i32 %76, i32 %77)
  %79 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %80 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %79, %struct.mvpp2_prs_entry* %10)
  %81 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %82 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %83 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %84 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %81, i32 %82, i32 %83)
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %41
  %88 = load i32, i32* %11, align 4
  store i32 %88, i32* %5, align 4
  br label %119

89:                                               ; preds = %41
  %90 = load i32, i32* %11, align 4
  %91 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 1
  %93 = load i32*, i32** %92, align 8
  %94 = load i64, i64* @MVPP2_PRS_SRAM_RI_WORD, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 0, i32* %95, align 4
  %96 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* @MVPP2_PRS_SRAM_RI_CTRL_WORD, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 0, i32* %99, align 4
  %100 = load i32, i32* %8, align 4
  %101 = load i32, i32* %9, align 4
  %102 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %10, i32 %100, i32 %101)
  %103 = load i32, i32* %8, align 4
  %104 = load i32, i32* @MVPP2_PRS_RI_IP_FRAG_TRUE, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* %9, align 4
  %107 = load i32, i32* @MVPP2_PRS_RI_IP_FRAG_MASK, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %10, i32 %105, i32 %108)
  %110 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %10, i32 2, i32 0, i32 0)
  %111 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %10, i32 3, i32 0, i32 0)
  %112 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %113 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %10, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %116 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %112, i32 %114, i32 %115)
  %117 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %118 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %117, %struct.mvpp2_prs_entry* %10)
  store i32 0, i32* %5, align 4
  br label %119

119:                                              ; preds = %89, %87, %39, %29
  %120 = load i32, i32* %5, align 4
  ret i32 %120
}

declare dso_local i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry*, i32, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ai_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

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
