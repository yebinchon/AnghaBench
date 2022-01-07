; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_etype_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_prs.c_mvpp2_prs_etype_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i8* }
%struct.mvpp2_prs_entry = type { i32, i32* }

@MVPP2_PE_FIRST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PE_LAST_FREE_TID = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_L2 = common dso_local global i32 0, align 4
@ETH_P_PPP_SES = common dso_local global i32 0, align 4
@MVPP2_PPPOE_HDR_SIZE = common dso_local global i64 0, align 8
@MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_PPPOE = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_PPPOE_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_UDF_L2_DEF = common dso_local global i8* null, align 8
@ETH_P_ARP = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_FLOWS = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_LU_GEN_BIT = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_ARP = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_PROTO_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_UDF_TYPE_L3 = common dso_local global i32 0, align 4
@MVPP2_ETH_TYPE_LEN = common dso_local global i64 0, align 8
@MVPP2_PRS_SRAM_OP_SEL_UDF_ADD = common dso_local global i32 0, align 4
@MVPP2_IP_LBDT_TYPE = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_CPU_CODE_RX_SPEC = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_UDF3_RX_SPECIAL = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_CPU_CODE_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_UDF3_MASK = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_HEAD = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_IHL = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_HEAD_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_IPV4_IHL_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_LU_IP4 = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_IP4 = common dso_local global i32 0, align 4
@MVPP2_PRS_SRAM_RI_WORD = common dso_local global i64 0, align 8
@MVPP2_PRS_SRAM_RI_CTRL_WORD = common dso_local global i64 0, align 8
@MVPP2_PRS_RI_L3_IP4_OPT = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@MVPP2_MAX_L3_ADDR_SIZE = common dso_local global i64 0, align 8
@MVPP2_PRS_LU_IP6 = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_IP6 = common dso_local global i32 0, align 4
@MVPP2_PE_ETH_TYPE_UN = common dso_local global i64 0, align 8
@MVPP2_PRS_PORT_MASK = common dso_local global i32 0, align 4
@MVPP2_PRS_RI_L3_UN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvpp2*)* @mvpp2_prs_etype_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_prs_etype_init(%struct.mvpp2* %0) #0 {
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
  br label %422

14:                                               ; preds = %1
  %15 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 16)
  %16 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %17 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* @ETH_P_PPP_SES, align 4
  %21 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %4, i32 0, i32 %20)
  %22 = load i64, i64* @MVPP2_PPPOE_HDR_SIZE, align 8
  %23 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %24 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %4, i64 %22, i32 %23)
  %25 = load i32, i32* @MVPP2_PRS_LU_PPPOE, align 4
  %26 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %25)
  %27 = load i32, i32* @MVPP2_PRS_RI_PPPOE_MASK, align 4
  %28 = load i32, i32* @MVPP2_PRS_RI_PPPOE_MASK, align 4
  %29 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %27, i32 %28)
  %30 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %31 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %34 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %30, i32 %32, i32 %33)
  %35 = load i8*, i8** @MVPP2_PRS_UDF_L2_DEF, align 8
  %36 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %37 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 1
  store i8* %35, i8** %43, align 8
  %44 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %45 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %53 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = load i32, i32* @MVPP2_PRS_RI_PPPOE_MASK, align 4
  %57 = load i32, i32* @MVPP2_PRS_RI_PPPOE_MASK, align 4
  %58 = call i32 @mvpp2_prs_shadow_ri_set(%struct.mvpp2* %52, i64 %55, i32 %56, i32 %57)
  %59 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %60 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %59, %struct.mvpp2_prs_entry* %4)
  %61 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %62 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %63 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %64 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %61, i32 %62, i32 %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %14
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %422

69:                                               ; preds = %14
  %70 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 16)
  %71 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %72 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %71)
  %73 = load i32, i32* %5, align 4
  %74 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %73, i32* %74, align 8
  %75 = load i32, i32* @ETH_P_ARP, align 4
  %76 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %4, i32 0, i32 %75)
  %77 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %78 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %77)
  %79 = load i32, i32* @MVPP2_PRS_SRAM_LU_GEN_BIT, align 4
  %80 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %4, i32 %79, i32 1)
  %81 = load i32, i32* @MVPP2_PRS_RI_L3_ARP, align 4
  %82 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %83 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %81, i32 %82)
  %84 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L3, align 4
  %85 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %86 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %87 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %4, i32 %84, i64 %85, i32 %86)
  %88 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %89 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %92 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %88, i32 %90, i32 %91)
  %93 = load i8*, i8** @MVPP2_PRS_UDF_L2_DEF, align 8
  %94 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %95 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %94, i32 0, i32 0
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  store i8* %93, i8** %101, align 8
  %102 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %103 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  store i32 1, i32* %109, align 8
  %110 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %111 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = load i32, i32* @MVPP2_PRS_RI_L3_ARP, align 4
  %115 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %116 = call i32 @mvpp2_prs_shadow_ri_set(%struct.mvpp2* %110, i64 %113, i32 %114, i32 %115)
  %117 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %118 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %117, %struct.mvpp2_prs_entry* %4)
  %119 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %120 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %121 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %122 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %119, i32 %120, i32 %121)
  store i32 %122, i32* %5, align 4
  %123 = load i32, i32* %5, align 4
  %124 = icmp slt i32 %123, 0
  br i1 %124, label %125, label %127

125:                                              ; preds = %69
  %126 = load i32, i32* %5, align 4
  store i32 %126, i32* %2, align 4
  br label %422

127:                                              ; preds = %69
  %128 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 16)
  %129 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %130 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %129)
  %131 = load i32, i32* %5, align 4
  %132 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %131, i32* %132, align 8
  %133 = load i32, i32* @MVPP2_IP_LBDT_TYPE, align 4
  %134 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %4, i32 0, i32 %133)
  %135 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %136 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %135)
  %137 = load i32, i32* @MVPP2_PRS_SRAM_LU_GEN_BIT, align 4
  %138 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %4, i32 %137, i32 1)
  %139 = load i32, i32* @MVPP2_PRS_RI_CPU_CODE_RX_SPEC, align 4
  %140 = load i32, i32* @MVPP2_PRS_RI_UDF3_RX_SPECIAL, align 4
  %141 = or i32 %139, %140
  %142 = load i32, i32* @MVPP2_PRS_RI_CPU_CODE_MASK, align 4
  %143 = load i32, i32* @MVPP2_PRS_RI_UDF3_MASK, align 4
  %144 = or i32 %142, %143
  %145 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %141, i32 %144)
  %146 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L3, align 4
  %147 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %148 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %149 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %4, i32 %146, i64 %147, i32 %148)
  %150 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %151 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %154 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %150, i32 %152, i32 %153)
  %155 = load i8*, i8** @MVPP2_PRS_UDF_L2_DEF, align 8
  %156 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %157 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %156, i32 0, i32 0
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 1
  store i8* %155, i8** %163, align 8
  %164 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %165 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %164, i32 0, i32 0
  %166 = load %struct.TYPE_2__*, %struct.TYPE_2__** %165, align 8
  %167 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %166, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %170, i32 0, i32 0
  store i32 1, i32* %171, align 8
  %172 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %173 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = sext i32 %174 to i64
  %176 = load i32, i32* @MVPP2_PRS_RI_CPU_CODE_RX_SPEC, align 4
  %177 = load i32, i32* @MVPP2_PRS_RI_UDF3_RX_SPECIAL, align 4
  %178 = or i32 %176, %177
  %179 = load i32, i32* @MVPP2_PRS_RI_CPU_CODE_MASK, align 4
  %180 = load i32, i32* @MVPP2_PRS_RI_UDF3_MASK, align 4
  %181 = or i32 %179, %180
  %182 = call i32 @mvpp2_prs_shadow_ri_set(%struct.mvpp2* %172, i64 %175, i32 %178, i32 %181)
  %183 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %184 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %183, %struct.mvpp2_prs_entry* %4)
  %185 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %186 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %187 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %188 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %185, i32 %186, i32 %187)
  store i32 %188, i32* %5, align 4
  %189 = load i32, i32* %5, align 4
  %190 = icmp slt i32 %189, 0
  br i1 %190, label %191, label %193

191:                                              ; preds = %127
  %192 = load i32, i32* %5, align 4
  store i32 %192, i32* %2, align 4
  br label %422

193:                                              ; preds = %127
  %194 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 16)
  %195 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %196 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %195)
  %197 = load i32, i32* %5, align 4
  %198 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %197, i32* %198, align 8
  %199 = load i32, i32* @ETH_P_IP, align 4
  %200 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %4, i32 0, i32 %199)
  %201 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %202 = load i32, i32* @MVPP2_PRS_IPV4_HEAD, align 4
  %203 = load i32, i32* @MVPP2_PRS_IPV4_IHL, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @MVPP2_PRS_IPV4_HEAD_MASK, align 4
  %206 = load i32, i32* @MVPP2_PRS_IPV4_IHL_MASK, align 4
  %207 = or i32 %205, %206
  %208 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %4, i64 %201, i32 %204, i32 %207)
  %209 = load i32, i32* @MVPP2_PRS_LU_IP4, align 4
  %210 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %209)
  %211 = load i32, i32* @MVPP2_PRS_RI_L3_IP4, align 4
  %212 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %213 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %211, i32 %212)
  %214 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %215 = add nsw i64 %214, 4
  %216 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %217 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %4, i64 %215, i32 %216)
  %218 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L3, align 4
  %219 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %220 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %221 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %4, i32 %218, i64 %219, i32 %220)
  %222 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %223 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %226 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %222, i32 %224, i32 %225)
  %227 = load i8*, i8** @MVPP2_PRS_UDF_L2_DEF, align 8
  %228 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %229 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %228, i32 0, i32 0
  %230 = load %struct.TYPE_2__*, %struct.TYPE_2__** %229, align 8
  %231 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %232 = load i32, i32* %231, align 8
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %230, i64 %233
  %235 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i32 0, i32 1
  store i8* %227, i8** %235, align 8
  %236 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %237 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %236, i32 0, i32 0
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %237, align 8
  %239 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i64 %241
  %243 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %242, i32 0, i32 0
  store i32 0, i32* %243, align 8
  %244 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %245 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = sext i32 %246 to i64
  %248 = load i32, i32* @MVPP2_PRS_RI_L3_IP4, align 4
  %249 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %250 = call i32 @mvpp2_prs_shadow_ri_set(%struct.mvpp2* %244, i64 %247, i32 %248, i32 %249)
  %251 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %252 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %251, %struct.mvpp2_prs_entry* %4)
  %253 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %254 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %255 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %256 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %253, i32 %254, i32 %255)
  store i32 %256, i32* %5, align 4
  %257 = load i32, i32* %5, align 4
  %258 = icmp slt i32 %257, 0
  br i1 %258, label %259, label %261

259:                                              ; preds = %193
  %260 = load i32, i32* %5, align 4
  store i32 %260, i32* %2, align 4
  br label %422

261:                                              ; preds = %193
  %262 = load i32, i32* %5, align 4
  %263 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %262, i32* %263, align 8
  %264 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %265 = load i32, i32* @MVPP2_PRS_IPV4_HEAD, align 4
  %266 = load i32, i32* @MVPP2_PRS_IPV4_HEAD_MASK, align 4
  %267 = call i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry* %4, i64 %264, i32 %265, i32 %266)
  %268 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 1
  %269 = load i32*, i32** %268, align 8
  %270 = load i64, i64* @MVPP2_PRS_SRAM_RI_WORD, align 8
  %271 = getelementptr inbounds i32, i32* %269, i64 %270
  store i32 0, i32* %271, align 4
  %272 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 1
  %273 = load i32*, i32** %272, align 8
  %274 = load i64, i64* @MVPP2_PRS_SRAM_RI_CTRL_WORD, align 8
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32 0, i32* %275, align 4
  %276 = load i32, i32* @MVPP2_PRS_RI_L3_IP4_OPT, align 4
  %277 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %278 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %276, i32 %277)
  %279 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %280 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %281 = load i32, i32* %280, align 8
  %282 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %283 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %279, i32 %281, i32 %282)
  %284 = load i8*, i8** @MVPP2_PRS_UDF_L2_DEF, align 8
  %285 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %286 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %285, i32 0, i32 0
  %287 = load %struct.TYPE_2__*, %struct.TYPE_2__** %286, align 8
  %288 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %287, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %291, i32 0, i32 1
  store i8* %284, i8** %292, align 8
  %293 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %294 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %293, i32 0, i32 0
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %297 = load i32, i32* %296, align 8
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %299, i32 0, i32 0
  store i32 0, i32* %300, align 8
  %301 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %302 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %303 = load i32, i32* %302, align 8
  %304 = sext i32 %303 to i64
  %305 = load i32, i32* @MVPP2_PRS_RI_L3_IP4_OPT, align 4
  %306 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %307 = call i32 @mvpp2_prs_shadow_ri_set(%struct.mvpp2* %301, i64 %304, i32 %305, i32 %306)
  %308 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %309 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %308, %struct.mvpp2_prs_entry* %4)
  %310 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %311 = load i32, i32* @MVPP2_PE_FIRST_FREE_TID, align 4
  %312 = load i32, i32* @MVPP2_PE_LAST_FREE_TID, align 4
  %313 = call i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2* %310, i32 %311, i32 %312)
  store i32 %313, i32* %5, align 4
  %314 = load i32, i32* %5, align 4
  %315 = icmp slt i32 %314, 0
  br i1 %315, label %316, label %318

316:                                              ; preds = %261
  %317 = load i32, i32* %5, align 4
  store i32 %317, i32* %2, align 4
  br label %422

318:                                              ; preds = %261
  %319 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 16)
  %320 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %321 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %320)
  %322 = load i32, i32* %5, align 4
  %323 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %322, i32* %323, align 8
  %324 = load i32, i32* @ETH_P_IPV6, align 4
  %325 = call i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry* %4, i32 0, i32 %324)
  %326 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %327 = add nsw i64 %326, 8
  %328 = load i64, i64* @MVPP2_MAX_L3_ADDR_SIZE, align 8
  %329 = add nsw i64 %327, %328
  %330 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_SHIFT_ADD, align 4
  %331 = call i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry* %4, i64 %329, i32 %330)
  %332 = load i32, i32* @MVPP2_PRS_LU_IP6, align 4
  %333 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %332)
  %334 = load i32, i32* @MVPP2_PRS_RI_L3_IP6, align 4
  %335 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %336 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %334, i32 %335)
  %337 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L3, align 4
  %338 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %339 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %340 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %4, i32 %337, i64 %338, i32 %339)
  %341 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %342 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %345 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %341, i32 %343, i32 %344)
  %346 = load i8*, i8** @MVPP2_PRS_UDF_L2_DEF, align 8
  %347 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %348 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %347, i32 0, i32 0
  %349 = load %struct.TYPE_2__*, %struct.TYPE_2__** %348, align 8
  %350 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %351 = load i32, i32* %350, align 8
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %349, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 1
  store i8* %346, i8** %354, align 8
  %355 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %356 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %355, i32 0, i32 0
  %357 = load %struct.TYPE_2__*, %struct.TYPE_2__** %356, align 8
  %358 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %357, i64 %360
  %362 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %361, i32 0, i32 0
  store i32 0, i32* %362, align 8
  %363 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %364 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %365 = load i32, i32* %364, align 8
  %366 = sext i32 %365 to i64
  %367 = load i32, i32* @MVPP2_PRS_RI_L3_IP6, align 4
  %368 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %369 = call i32 @mvpp2_prs_shadow_ri_set(%struct.mvpp2* %363, i64 %366, i32 %367, i32 %368)
  %370 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %371 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %370, %struct.mvpp2_prs_entry* %4)
  %372 = call i32 @memset(%struct.mvpp2_prs_entry* %4, i32 0, i32 16)
  %373 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %374 = call i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry* %4, i32 %373)
  %375 = load i64, i64* @MVPP2_PE_ETH_TYPE_UN, align 8
  %376 = trunc i64 %375 to i32
  %377 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  store i32 %376, i32* %377, align 8
  %378 = load i32, i32* @MVPP2_PRS_PORT_MASK, align 4
  %379 = call i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry* %4, i32 %378)
  %380 = load i32, i32* @MVPP2_PRS_SRAM_LU_GEN_BIT, align 4
  %381 = call i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry* %4, i32 %380, i32 1)
  %382 = load i32, i32* @MVPP2_PRS_LU_FLOWS, align 4
  %383 = call i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry* %4, i32 %382)
  %384 = load i32, i32* @MVPP2_PRS_RI_L3_UN, align 4
  %385 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %386 = call i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry* %4, i32 %384, i32 %385)
  %387 = load i32, i32* @MVPP2_PRS_SRAM_UDF_TYPE_L3, align 4
  %388 = load i64, i64* @MVPP2_ETH_TYPE_LEN, align 8
  %389 = load i32, i32* @MVPP2_PRS_SRAM_OP_SEL_UDF_ADD, align 4
  %390 = call i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry* %4, i32 %387, i64 %388, i32 %389)
  %391 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %392 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = load i32, i32* @MVPP2_PRS_LU_L2, align 4
  %395 = call i32 @mvpp2_prs_shadow_set(%struct.mvpp2* %391, i32 %393, i32 %394)
  %396 = load i8*, i8** @MVPP2_PRS_UDF_L2_DEF, align 8
  %397 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %398 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %397, i32 0, i32 0
  %399 = load %struct.TYPE_2__*, %struct.TYPE_2__** %398, align 8
  %400 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %401 = load i32, i32* %400, align 8
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %399, i64 %402
  %404 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %403, i32 0, i32 1
  store i8* %396, i8** %404, align 8
  %405 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %406 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %405, i32 0, i32 0
  %407 = load %struct.TYPE_2__*, %struct.TYPE_2__** %406, align 8
  %408 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %409 = load i32, i32* %408, align 8
  %410 = sext i32 %409 to i64
  %411 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %407, i64 %410
  %412 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %411, i32 0, i32 0
  store i32 1, i32* %412, align 8
  %413 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %414 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %4, i32 0, i32 0
  %415 = load i32, i32* %414, align 8
  %416 = sext i32 %415 to i64
  %417 = load i32, i32* @MVPP2_PRS_RI_L3_UN, align 4
  %418 = load i32, i32* @MVPP2_PRS_RI_L3_PROTO_MASK, align 4
  %419 = call i32 @mvpp2_prs_shadow_ri_set(%struct.mvpp2* %413, i64 %416, i32 %417, i32 %418)
  %420 = load %struct.mvpp2*, %struct.mvpp2** %3, align 8
  %421 = call i32 @mvpp2_prs_hw_write(%struct.mvpp2* %420, %struct.mvpp2_prs_entry* %4)
  store i32 0, i32* %2, align 4
  br label %422

422:                                              ; preds = %318, %316, %259, %191, %125, %67, %12
  %423 = load i32, i32* %2, align 4
  ret i32 %423
}

declare dso_local i32 @mvpp2_prs_tcam_first_free(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @memset(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_match_etype(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_shift_set(%struct.mvpp2_prs_entry*, i64, i32) #1

declare dso_local i32 @mvpp2_prs_sram_next_lu_set(%struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_sram_ri_update(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_set(%struct.mvpp2*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_shadow_ri_set(%struct.mvpp2*, i64, i32, i32) #1

declare dso_local i32 @mvpp2_prs_hw_write(%struct.mvpp2*, %struct.mvpp2_prs_entry*) #1

declare dso_local i32 @mvpp2_prs_sram_bits_set(%struct.mvpp2_prs_entry*, i32, i32) #1

declare dso_local i32 @mvpp2_prs_sram_offset_set(%struct.mvpp2_prs_entry*, i32, i64, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_set(%struct.mvpp2_prs_entry*, i64, i32, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_port_map_set(%struct.mvpp2_prs_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
