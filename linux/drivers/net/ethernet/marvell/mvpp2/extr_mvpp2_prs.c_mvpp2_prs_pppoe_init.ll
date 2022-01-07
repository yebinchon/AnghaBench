; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_pppoe_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_pppoe_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { i32 }
%struct.mvpp2_prs_entry = type { i32, i32* }

@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_PPPOE = common dso_local global i32 0, align 4
@PPP_IP = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_IP4 = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_IP4_OPT = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_PROTO_MASK = common dso_local global i32 0, align 4
@MVPP2_ETH_TYPE_LEN = common dso_local global i64 0, align 8
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_UDF_TYPE_L3 = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_OP_SEL_UDF_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_HEAD = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_IHL = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_HEAD_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_IHL_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_RI_WORD = common dso_local global i64 0, align 8
@MVPP2_PRS_SRAM_RI_CTRL_WORD = common dso_local global i64 0, align 8
@MVPP2_PRS_RI_L3_IP4 = common dso_local global i32 0, align 4
@PPP_IPV6 = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_IP6 = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_IP6 = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_UN = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_FLOWS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_LU_GEN_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*)* @mvpp2_prs_pppoe_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_pppoe_init(%struct.mvpp2* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mvpp2*, align 8
  %4 = alloca %struct.mvpp2_prs_entry, align 8
  %5 = alloca i32, align 4
  store %struct.mvpp2* %0, %struct.mvpp2** %3, align 8
  %6 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %7 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %8 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %9 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %6, i32 %7, i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %147

14:                                               ; preds = %1
  %15 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 16)
  %16 = load i32, i32* @MVPP2_PRS_LU_PPPOE, align 4
  %17 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @PPP_IP, align 4
  %21 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %4, i32 0, i32 %20)
  %22 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %23 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %22)
  %24 = load i32, i32* @MVPP2_PRS_RI_L3_IP4_OPT, align 4
  %25 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %26 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %24, i32 %25)
  %27 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %28 = add nsw i64 %27, 4
  %29 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %30 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %4, i64 %28, i32 %29)
  %31 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L3, align 4
  %32 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %33 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %34 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %4, i32 %31, i64 %32, i32 %33)
  %35 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %36 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MVPP2_PRS_LU_PPPOE, align 4
  %39 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %35, i32 %37, i32 %38)
  %40 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %41 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %40, %struct.mvpp2_prs_entry* %4)
  %42 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %43 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %44 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %45 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %42, i32 %43, i32 %44)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %14
  %49 = load i32, i32* %5, align 4
  store i32 %49, i32* %2, align 4
  br label %147

50:                                               ; preds = %14
  %51 = load i32, i32* %5, align 4
  %52 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %54 = load i32, i32* @MVPP2_PRS_IPV4_HEAD, align 4
  %55 = load i32, i32* @MVPP2_PRS_IPV4_IHL, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @MVPP2_PRS_IPV4_HEAD_MASK, align 4
  %58 = load i32, i32* @MVPP2_PRS_IPV4_IHL_MASK, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %4, i64 %53, i32 %56, i32 %59)
  %61 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* @MVPP2_PRS_SRAM_RI_WORD, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  store i32 0, i32* %64, align 4
  %65 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @MVPP2_PRS_SRAM_RI_CTRL_WORD, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  store i32 0, i32* %68, align 4
  %69 = load i32, i32* @MVPP2_PRS_RI_L3_IP4, align 4
  %70 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %71 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %69, i32 %70)
  %72 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %73 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MVPP2_PRS_LU_PPPOE, align 4
  %76 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %72, i32 %74, i32 %75)
  %77 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %78 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %77, %struct.mvpp2_prs_entry* %4)
  %79 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %80 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %81 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %82 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %79, i32 %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %50
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %147

87:                                               ; preds = %50
  %88 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 16)
  %89 = load i32, i32* @MVPP2_PRS_LU_PPPOE, align 4
  %90 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %89)
  %91 = load i32, i32* %5, align 4
  %92 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %91, i32* %92, align 8
  %93 = load i32, i32* @PPP_IPV6, align 4
  %94 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %4, i32 0, i32 %93)
  %95 = load i32, i32* @MVPP2_PRS_LU_IP6, align 4
  %96 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %95)
  %97 = load i32, i32* @MVPP2_PRS_RI_L3_IP6, align 4
  %98 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %99 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %97, i32 %98)
  %100 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %101 = add nsw i64 %100, 4
  %102 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %103 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %4, i64 %101, i32 %102)
  %104 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L3, align 4
  %105 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %106 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %107 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %4, i32 %104, i64 %105, i32 %106)
  %108 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %109 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @MVPP2_PRS_LU_PPPOE, align 4
  %112 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %108, i32 %110, i32 %111)
  %113 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %114 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %113, %struct.mvpp2_prs_entry* %4)
  %115 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %116 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %117 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %118 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %115, i32 %116, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %87
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %147

123:                                              ; preds = %87
  %124 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 16)
  %125 = load i32, i32* @MVPP2_PRS_LU_PPPOE, align 4
  %126 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %125)
  %127 = load i32, i32* %5, align 4
  %128 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %127, i32* %128, align 8
  %129 = load i32, i32* @MVPP2_PRS_RI_L3_UN, align 4
  %130 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %131 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %129, i32 %130)
  %132 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %133 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %132)
  %134 = load i32, i32* @MVPP2_PRS_SRAM_LU_GEN_BIT, align 4
  %135 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %4, i32 %134, i32 1)
  %136 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L3, align 4
  %137 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %138 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %139 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %4, i32 %136, i64 %137, i32 %138)
  %140 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %141 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @MVPP2_PRS_LU_PPPOE, align 4
  %144 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %140, i32 %142, i32 %143)
  %145 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %146 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %145, %struct.mvpp2_prs_entry* %4)
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %123, %121, %85, %48, %12
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i64, i32) #1

declare dso_local i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry*, i32, i64, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry*, i64, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
