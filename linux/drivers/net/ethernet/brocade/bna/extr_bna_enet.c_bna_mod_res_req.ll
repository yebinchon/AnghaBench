; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_mod_res_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_enet.c_bna_mod_res_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.bna_attr }
%struct.bna_attr = type { i32, i32, i32, i32 }
%struct.bna_res_info = type { %struct.TYPE_6__, i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i8* }

@BNA_RES_T_MEM = common dso_local global i8* null, align 8
@BNA_MOD_RES_MEM_T_TX_ARRAY = common dso_local global i64 0, align 8
@BNA_MEM_T_KVA = common dso_local global i8* null, align 8
@BNA_MOD_RES_MEM_T_TXQ_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_RX_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_RXP_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_RXQ_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_UCMAC_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_MCMAC_ARRAY = common dso_local global i64 0, align 8
@BNA_MOD_RES_MEM_T_MCHANDLE_ARRAY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_mod_res_req(%struct.bna* %0, %struct.bna_res_info* %1) #0 {
  %3 = alloca %struct.bna*, align 8
  %4 = alloca %struct.bna_res_info*, align 8
  %5 = alloca %struct.bna_attr*, align 8
  store %struct.bna* %0, %struct.bna** %3, align 8
  store %struct.bna_res_info* %1, %struct.bna_res_info** %4, align 8
  %6 = load %struct.bna*, %struct.bna** %3, align 8
  %7 = getelementptr inbounds %struct.bna, %struct.bna* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store %struct.bna_attr* %8, %struct.bna_attr** %5, align 8
  %9 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %10 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %11 = load i64, i64* @BNA_MOD_RES_MEM_T_TX_ARRAY, align 8
  %12 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %10, i64 %11
  %13 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %12, i32 0, i32 1
  store i8* %9, i8** %13, align 8
  %14 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %15 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %16 = load i64, i64* @BNA_MOD_RES_MEM_T_TX_ARRAY, align 8
  %17 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %15, i64 %16
  %18 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 2
  store i8* %14, i8** %20, align 8
  %21 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %22 = load i64, i64* @BNA_MOD_RES_MEM_T_TX_ARRAY, align 8
  %23 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %21, i64 %22
  %24 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.bna_attr*, %struct.bna_attr** %5, align 8
  %28 = getelementptr inbounds %struct.bna_attr, %struct.bna_attr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = mul i64 %30, 4
  %32 = trunc i64 %31 to i32
  %33 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %34 = load i64, i64* @BNA_MOD_RES_MEM_T_TX_ARRAY, align 8
  %35 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %33, i64 %34
  %36 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  store i32 %32, i32* %38, align 4
  %39 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %40 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %41 = load i64, i64* @BNA_MOD_RES_MEM_T_TXQ_ARRAY, align 8
  %42 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %40, i64 %41
  %43 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %42, i32 0, i32 1
  store i8* %39, i8** %43, align 8
  %44 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %45 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %46 = load i64, i64* @BNA_MOD_RES_MEM_T_TXQ_ARRAY, align 8
  %47 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %45, i64 %46
  %48 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  store i8* %44, i8** %50, align 8
  %51 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %52 = load i64, i64* @BNA_MOD_RES_MEM_T_TXQ_ARRAY, align 8
  %53 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %51, i64 %52
  %54 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  %57 = load %struct.bna_attr*, %struct.bna_attr** %5, align 8
  %58 = getelementptr inbounds %struct.bna_attr, %struct.bna_attr* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = mul i64 %60, 4
  %62 = trunc i64 %61 to i32
  %63 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %64 = load i64, i64* @BNA_MOD_RES_MEM_T_TXQ_ARRAY, align 8
  %65 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %63, i64 %64
  %66 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 1
  store i32 %62, i32* %68, align 4
  %69 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %70 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %71 = load i64, i64* @BNA_MOD_RES_MEM_T_RX_ARRAY, align 8
  %72 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %70, i64 %71
  %73 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %72, i32 0, i32 1
  store i8* %69, i8** %73, align 8
  %74 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %75 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %76 = load i64, i64* @BNA_MOD_RES_MEM_T_RX_ARRAY, align 8
  %77 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %75, i64 %76
  %78 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  store i8* %74, i8** %80, align 8
  %81 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %82 = load i64, i64* @BNA_MOD_RES_MEM_T_RX_ARRAY, align 8
  %83 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %81, i64 %82
  %84 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 0
  store i32 1, i32* %86, align 8
  %87 = load %struct.bna_attr*, %struct.bna_attr** %5, align 8
  %88 = getelementptr inbounds %struct.bna_attr, %struct.bna_attr* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = mul i64 %90, 4
  %92 = trunc i64 %91 to i32
  %93 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %94 = load i64, i64* @BNA_MOD_RES_MEM_T_RX_ARRAY, align 8
  %95 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %93, i64 %94
  %96 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 1
  store i32 %92, i32* %98, align 4
  %99 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %100 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %101 = load i64, i64* @BNA_MOD_RES_MEM_T_RXP_ARRAY, align 8
  %102 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %100, i64 %101
  %103 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %102, i32 0, i32 1
  store i8* %99, i8** %103, align 8
  %104 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %105 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %106 = load i64, i64* @BNA_MOD_RES_MEM_T_RXP_ARRAY, align 8
  %107 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %105, i64 %106
  %108 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 2
  store i8* %104, i8** %110, align 8
  %111 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %112 = load i64, i64* @BNA_MOD_RES_MEM_T_RXP_ARRAY, align 8
  %113 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %111, i64 %112
  %114 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  store i32 1, i32* %116, align 8
  %117 = load %struct.bna_attr*, %struct.bna_attr** %5, align 8
  %118 = getelementptr inbounds %struct.bna_attr, %struct.bna_attr* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %124 = load i64, i64* @BNA_MOD_RES_MEM_T_RXP_ARRAY, align 8
  %125 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %123, i64 %124
  %126 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  store i32 %122, i32* %128, align 4
  %129 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %130 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %131 = load i64, i64* @BNA_MOD_RES_MEM_T_RXQ_ARRAY, align 8
  %132 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %130, i64 %131
  %133 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %132, i32 0, i32 1
  store i8* %129, i8** %133, align 8
  %134 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %135 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %136 = load i64, i64* @BNA_MOD_RES_MEM_T_RXQ_ARRAY, align 8
  %137 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %135, i64 %136
  %138 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 2
  store i8* %134, i8** %140, align 8
  %141 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %142 = load i64, i64* @BNA_MOD_RES_MEM_T_RXQ_ARRAY, align 8
  %143 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %141, i64 %142
  %144 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 0
  store i32 1, i32* %146, align 8
  %147 = load %struct.bna_attr*, %struct.bna_attr** %5, align 8
  %148 = getelementptr inbounds %struct.bna_attr, %struct.bna_attr* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %149, 2
  %151 = sext i32 %150 to i64
  %152 = mul i64 %151, 4
  %153 = trunc i64 %152 to i32
  %154 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %155 = load i64, i64* @BNA_MOD_RES_MEM_T_RXQ_ARRAY, align 8
  %156 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %154, i64 %155
  %157 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 1
  store i32 %153, i32* %159, align 4
  %160 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %161 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %162 = load i64, i64* @BNA_MOD_RES_MEM_T_UCMAC_ARRAY, align 8
  %163 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %161, i64 %162
  %164 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %163, i32 0, i32 1
  store i8* %160, i8** %164, align 8
  %165 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %166 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %167 = load i64, i64* @BNA_MOD_RES_MEM_T_UCMAC_ARRAY, align 8
  %168 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %166, i64 %167
  %169 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  store i8* %165, i8** %171, align 8
  %172 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %173 = load i64, i64* @BNA_MOD_RES_MEM_T_UCMAC_ARRAY, align 8
  %174 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %172, i64 %173
  %175 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %174, i32 0, i32 0
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 0
  store i32 1, i32* %177, align 8
  %178 = load %struct.bna_attr*, %struct.bna_attr** %5, align 8
  %179 = getelementptr inbounds %struct.bna_attr, %struct.bna_attr* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = mul nsw i32 %180, 2
  %182 = sext i32 %181 to i64
  %183 = mul i64 %182, 4
  %184 = trunc i64 %183 to i32
  %185 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %186 = load i64, i64* @BNA_MOD_RES_MEM_T_UCMAC_ARRAY, align 8
  %187 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %185, i64 %186
  %188 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %189, i32 0, i32 1
  store i32 %184, i32* %190, align 4
  %191 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %192 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %193 = load i64, i64* @BNA_MOD_RES_MEM_T_MCMAC_ARRAY, align 8
  %194 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %192, i64 %193
  %195 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %194, i32 0, i32 1
  store i8* %191, i8** %195, align 8
  %196 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %197 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %198 = load i64, i64* @BNA_MOD_RES_MEM_T_MCMAC_ARRAY, align 8
  %199 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %197, i64 %198
  %200 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %201, i32 0, i32 2
  store i8* %196, i8** %202, align 8
  %203 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %204 = load i64, i64* @BNA_MOD_RES_MEM_T_MCMAC_ARRAY, align 8
  %205 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %203, i64 %204
  %206 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  store i32 1, i32* %208, align 8
  %209 = load %struct.bna_attr*, %struct.bna_attr** %5, align 8
  %210 = getelementptr inbounds %struct.bna_attr, %struct.bna_attr* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = mul nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = mul i64 %213, 4
  %215 = trunc i64 %214 to i32
  %216 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %217 = load i64, i64* @BNA_MOD_RES_MEM_T_MCMAC_ARRAY, align 8
  %218 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %216, i64 %217
  %219 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %218, i32 0, i32 0
  %220 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 1
  store i32 %215, i32* %221, align 4
  %222 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %223 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %224 = load i64, i64* @BNA_MOD_RES_MEM_T_MCHANDLE_ARRAY, align 8
  %225 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %223, i64 %224
  %226 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %225, i32 0, i32 1
  store i8* %222, i8** %226, align 8
  %227 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %228 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %229 = load i64, i64* @BNA_MOD_RES_MEM_T_MCHANDLE_ARRAY, align 8
  %230 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %228, i64 %229
  %231 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %230, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 2
  store i8* %227, i8** %233, align 8
  %234 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %235 = load i64, i64* @BNA_MOD_RES_MEM_T_MCHANDLE_ARRAY, align 8
  %236 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %234, i64 %235
  %237 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %236, i32 0, i32 0
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  store i32 1, i32* %239, align 8
  %240 = load %struct.bna_attr*, %struct.bna_attr** %5, align 8
  %241 = getelementptr inbounds %struct.bna_attr, %struct.bna_attr* %240, i32 0, i32 3
  %242 = load i32, i32* %241, align 4
  %243 = sext i32 %242 to i64
  %244 = mul i64 %243, 4
  %245 = trunc i64 %244 to i32
  %246 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %247 = load i64, i64* @BNA_MOD_RES_MEM_T_MCHANDLE_ARRAY, align 8
  %248 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %246, i64 %247
  %249 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 1
  store i32 %245, i32* %251, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
