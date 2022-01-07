; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_res_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_res_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx_config = type { i32, i64, i32, i32 }
%struct.bna_res_info = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.bna_mem_info }
%struct.TYPE_3__ = type { i32, i32 }
%struct.bna_mem_info = type { i32, i32, i8* }

@BNA_RXP_SINGLE = common dso_local global i64 0, align 8
@BFI_CQ_WI_SIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BFI_RXQ_WI_SIZE = common dso_local global i32 0, align 4
@BNA_RES_T_MEM = common dso_local global i8* null, align 8
@BNA_RX_RES_MEM_T_CCB = common dso_local global i64 0, align 8
@BNA_MEM_T_KVA = common dso_local global i8* null, align 8
@BNA_RX_RES_MEM_T_RCB = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CQPT = common dso_local global i64 0, align 8
@BNA_MEM_T_DMA = common dso_local global i8* null, align 8
@BNA_RX_RES_MEM_T_CSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CQPT_PAGE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DPAGE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HPAGE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_IBIDX = common dso_local global i64 0, align 8
@BFI_IBIDX_SIZE = common dso_local global i32 0, align 4
@BNA_RX_RES_MEM_T_RIT = common dso_local global i64 0, align 8
@BFI_ENET_RSS_RIT_MAX = common dso_local global i32 0, align 4
@BNA_RES_T_INTR = common dso_local global i8* null, align 8
@BNA_RX_RES_T_INTR = common dso_local global i64 0, align 8
@BNA_INTR_T_MSIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bna_rx_res_req(%struct.bna_rx_config* %0, %struct.bna_res_info* %1) #0 {
  %3 = alloca %struct.bna_rx_config*, align 8
  %4 = alloca %struct.bna_res_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.bna_mem_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.bna_rx_config* %0, %struct.bna_rx_config** %3, align 8
  store %struct.bna_res_info* %1, %struct.bna_res_info** %4, align 8
  %15 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %16 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %14, align 4
  %18 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %19 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @BNA_RXP_SINGLE, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %28

24:                                               ; preds = %2
  %25 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %26 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  br label %28

28:                                               ; preds = %24, %23
  %29 = phi i32 [ 0, %23 ], [ %27, %24 ]
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  %32 = add nsw i32 %30, %31
  %33 = call i32 @roundup_pow_of_two(i32 %32)
  store i32 %33, i32* %12, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* @BFI_CQ_WI_SIZE, align 4
  %36 = mul nsw i32 %34, %35
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = call i32 @ALIGN(i32 %37, i32 %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @SIZE_TO_PAGES(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* %14, align 4
  %43 = call i32 @roundup_pow_of_two(i32 %42)
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @BFI_RXQ_WI_SIZE, align 4
  %46 = mul nsw i32 %44, %45
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = call i32 @ALIGN(i32 %47, i32 %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = call i32 @SIZE_TO_PAGES(i32 %50)
  store i32 %51, i32* %10, align 4
  %52 = load i64, i64* @BNA_RXP_SINGLE, align 8
  %53 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %54 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %52, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %28
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @roundup_pow_of_two(i32 %58)
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @BFI_RXQ_WI_SIZE, align 4
  %62 = mul nsw i32 %60, %61
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* @PAGE_SIZE, align 4
  %65 = call i32 @ALIGN(i32 %63, i32 %64)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @SIZE_TO_PAGES(i32 %66)
  store i32 %67, i32* %9, align 4
  br label %69

68:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %57
  %70 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %71 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %72 = load i64, i64* @BNA_RX_RES_MEM_T_CCB, align 8
  %73 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %71, i64 %72
  %74 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %73, i32 0, i32 1
  store i8* %70, i8** %74, align 8
  %75 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %76 = load i64, i64* @BNA_RX_RES_MEM_T_CCB, align 8
  %77 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %75, i64 %76
  %78 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store %struct.bna_mem_info* %79, %struct.bna_mem_info** %11, align 8
  %80 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %81 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %82 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %81, i32 0, i32 2
  store i8* %80, i8** %82, align 8
  %83 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %84 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %83, i32 0, i32 0
  store i32 4, i32* %84, align 8
  %85 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %86 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %89 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  %90 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %91 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %92 = load i64, i64* @BNA_RX_RES_MEM_T_RCB, align 8
  %93 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %91, i64 %92
  %94 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %93, i32 0, i32 1
  store i8* %90, i8** %94, align 8
  %95 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %96 = load i64, i64* @BNA_RX_RES_MEM_T_RCB, align 8
  %97 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %95, i64 %96
  %98 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store %struct.bna_mem_info* %99, %struct.bna_mem_info** %11, align 8
  %100 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %101 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %102 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %104 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %103, i32 0, i32 0
  store i32 4, i32* %104, align 8
  %105 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %106 = call i32 @BNA_GET_RXQS(%struct.bna_rx_config* %105)
  %107 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %108 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %107, i32 0, i32 1
  store i32 %106, i32* %108, align 4
  %109 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %110 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %111 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT, align 8
  %112 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %110, i64 %111
  %113 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %112, i32 0, i32 1
  store i8* %109, i8** %113, align 8
  %114 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %115 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT, align 8
  %116 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %114, i64 %115
  %117 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 1
  store %struct.bna_mem_info* %118, %struct.bna_mem_info** %11, align 8
  %119 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %120 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %121 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %120, i32 0, i32 2
  store i8* %119, i8** %121, align 8
  %122 = load i32, i32* %8, align 4
  %123 = sext i32 %122 to i64
  %124 = mul i64 %123, 4
  %125 = trunc i64 %124 to i32
  %126 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %127 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 8
  %128 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %129 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %132 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 4
  %133 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %134 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %135 = load i64, i64* @BNA_RX_RES_MEM_T_CSWQPT, align 8
  %136 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %134, i64 %135
  %137 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %136, i32 0, i32 1
  store i8* %133, i8** %137, align 8
  %138 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %139 = load i64, i64* @BNA_RX_RES_MEM_T_CSWQPT, align 8
  %140 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %138, i64 %139
  %141 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  store %struct.bna_mem_info* %142, %struct.bna_mem_info** %11, align 8
  %143 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %144 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %145 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %144, i32 0, i32 2
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %8, align 4
  %147 = sext i32 %146 to i64
  %148 = mul i64 %147, 8
  %149 = trunc i64 %148 to i32
  %150 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %151 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %150, i32 0, i32 0
  store i32 %149, i32* %151, align 8
  %152 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %153 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %156 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 4
  %157 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %158 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %159 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT_PAGE, align 8
  %160 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %158, i64 %159
  %161 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %160, i32 0, i32 1
  store i8* %157, i8** %161, align 8
  %162 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %163 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT_PAGE, align 8
  %164 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %162, i64 %163
  %165 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  store %struct.bna_mem_info* %166, %struct.bna_mem_info** %11, align 8
  %167 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %168 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %169 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %168, i32 0, i32 2
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* @PAGE_SIZE, align 4
  %171 = load i32, i32* %8, align 4
  %172 = mul nsw i32 %170, %171
  %173 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %174 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  %175 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %176 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %179 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %178, i32 0, i32 1
  store i32 %177, i32* %179, align 4
  %180 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %181 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %182 = load i64, i64* @BNA_RX_RES_MEM_T_DQPT, align 8
  %183 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %181, i64 %182
  %184 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %183, i32 0, i32 1
  store i8* %180, i8** %184, align 8
  %185 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %186 = load i64, i64* @BNA_RX_RES_MEM_T_DQPT, align 8
  %187 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %185, i64 %186
  %188 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  store %struct.bna_mem_info* %189, %struct.bna_mem_info** %11, align 8
  %190 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %191 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %192 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %191, i32 0, i32 2
  store i8* %190, i8** %192, align 8
  %193 = load i32, i32* %10, align 4
  %194 = sext i32 %193 to i64
  %195 = mul i64 %194, 4
  %196 = trunc i64 %195 to i32
  %197 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %198 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %197, i32 0, i32 0
  store i32 %196, i32* %198, align 8
  %199 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %200 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 4
  %202 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %203 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %202, i32 0, i32 1
  store i32 %201, i32* %203, align 4
  %204 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %205 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %206 = load i64, i64* @BNA_RX_RES_MEM_T_DSWQPT, align 8
  %207 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %205, i64 %206
  %208 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %207, i32 0, i32 1
  store i8* %204, i8** %208, align 8
  %209 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %210 = load i64, i64* @BNA_RX_RES_MEM_T_DSWQPT, align 8
  %211 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %209, i64 %210
  %212 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  store %struct.bna_mem_info* %213, %struct.bna_mem_info** %11, align 8
  %214 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %215 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %216 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %215, i32 0, i32 2
  store i8* %214, i8** %216, align 8
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = mul i64 %218, 8
  %220 = trunc i64 %219 to i32
  %221 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %222 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 8
  %223 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %224 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %227 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %226, i32 0, i32 1
  store i32 %225, i32* %227, align 4
  %228 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %229 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %230 = load i64, i64* @BNA_RX_RES_MEM_T_DPAGE, align 8
  %231 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %229, i64 %230
  %232 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %231, i32 0, i32 1
  store i8* %228, i8** %232, align 8
  %233 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %234 = load i64, i64* @BNA_RX_RES_MEM_T_DPAGE, align 8
  %235 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %233, i64 %234
  %236 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 1
  store %struct.bna_mem_info* %237, %struct.bna_mem_info** %11, align 8
  %238 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %239 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %240 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %239, i32 0, i32 2
  store i8* %238, i8** %240, align 8
  %241 = load i32, i32* @PAGE_SIZE, align 4
  %242 = load i32, i32* %10, align 4
  %243 = mul nsw i32 %241, %242
  %244 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %245 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  %246 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %247 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %250 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %249, i32 0, i32 1
  store i32 %248, i32* %250, align 4
  %251 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %252 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %253 = load i64, i64* @BNA_RX_RES_MEM_T_HQPT, align 8
  %254 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %252, i64 %253
  %255 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %254, i32 0, i32 1
  store i8* %251, i8** %255, align 8
  %256 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %257 = load i64, i64* @BNA_RX_RES_MEM_T_HQPT, align 8
  %258 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %256, i64 %257
  %259 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %259, i32 0, i32 1
  store %struct.bna_mem_info* %260, %struct.bna_mem_info** %11, align 8
  %261 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %262 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %263 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %262, i32 0, i32 2
  store i8* %261, i8** %263, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = mul i64 %265, 4
  %267 = trunc i64 %266 to i32
  %268 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %269 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %268, i32 0, i32 0
  store i32 %267, i32* %269, align 8
  %270 = load i32, i32* %9, align 4
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %276

272:                                              ; preds = %69
  %273 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %274 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %273, i32 0, i32 3
  %275 = load i32, i32* %274, align 4
  br label %277

276:                                              ; preds = %69
  br label %277

277:                                              ; preds = %276, %272
  %278 = phi i32 [ %275, %272 ], [ 0, %276 ]
  %279 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %280 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %279, i32 0, i32 1
  store i32 %278, i32* %280, align 4
  %281 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %282 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %283 = load i64, i64* @BNA_RX_RES_MEM_T_HSWQPT, align 8
  %284 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %282, i64 %283
  %285 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %284, i32 0, i32 1
  store i8* %281, i8** %285, align 8
  %286 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %287 = load i64, i64* @BNA_RX_RES_MEM_T_HSWQPT, align 8
  %288 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %286, i64 %287
  %289 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 1
  store %struct.bna_mem_info* %290, %struct.bna_mem_info** %11, align 8
  %291 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %292 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %293 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %292, i32 0, i32 2
  store i8* %291, i8** %293, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = mul i64 %295, 8
  %297 = trunc i64 %296 to i32
  %298 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %299 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %298, i32 0, i32 0
  store i32 %297, i32* %299, align 8
  %300 = load i32, i32* %9, align 4
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %306

302:                                              ; preds = %277
  %303 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %304 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %303, i32 0, i32 3
  %305 = load i32, i32* %304, align 4
  br label %307

306:                                              ; preds = %277
  br label %307

307:                                              ; preds = %306, %302
  %308 = phi i32 [ %305, %302 ], [ 0, %306 ]
  %309 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %310 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %309, i32 0, i32 1
  store i32 %308, i32* %310, align 4
  %311 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %312 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %313 = load i64, i64* @BNA_RX_RES_MEM_T_HPAGE, align 8
  %314 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %312, i64 %313
  %315 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %314, i32 0, i32 1
  store i8* %311, i8** %315, align 8
  %316 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %317 = load i64, i64* @BNA_RX_RES_MEM_T_HPAGE, align 8
  %318 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %316, i64 %317
  %319 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 1
  store %struct.bna_mem_info* %320, %struct.bna_mem_info** %11, align 8
  %321 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %322 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %323 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %322, i32 0, i32 2
  store i8* %321, i8** %323, align 8
  %324 = load i32, i32* @PAGE_SIZE, align 4
  %325 = load i32, i32* %9, align 4
  %326 = mul nsw i32 %324, %325
  %327 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %328 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %327, i32 0, i32 0
  store i32 %326, i32* %328, align 8
  %329 = load i32, i32* %9, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %307
  %332 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %333 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %332, i32 0, i32 3
  %334 = load i32, i32* %333, align 4
  br label %336

335:                                              ; preds = %307
  br label %336

336:                                              ; preds = %335, %331
  %337 = phi i32 [ %334, %331 ], [ 0, %335 ]
  %338 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %339 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %338, i32 0, i32 1
  store i32 %337, i32* %339, align 4
  %340 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %341 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %342 = load i64, i64* @BNA_RX_RES_MEM_T_IBIDX, align 8
  %343 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %341, i64 %342
  %344 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %343, i32 0, i32 1
  store i8* %340, i8** %344, align 8
  %345 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %346 = load i64, i64* @BNA_RX_RES_MEM_T_IBIDX, align 8
  %347 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %345, i64 %346
  %348 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %348, i32 0, i32 1
  store %struct.bna_mem_info* %349, %struct.bna_mem_info** %11, align 8
  %350 = load i8*, i8** @BNA_MEM_T_DMA, align 8
  %351 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %352 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %351, i32 0, i32 2
  store i8* %350, i8** %352, align 8
  %353 = load i32, i32* @BFI_IBIDX_SIZE, align 4
  %354 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %355 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %354, i32 0, i32 0
  store i32 %353, i32* %355, align 8
  %356 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %357 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %356, i32 0, i32 3
  %358 = load i32, i32* %357, align 4
  %359 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %360 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %359, i32 0, i32 1
  store i32 %358, i32* %360, align 4
  %361 = load i8*, i8** @BNA_RES_T_MEM, align 8
  %362 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %363 = load i64, i64* @BNA_RX_RES_MEM_T_RIT, align 8
  %364 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %362, i64 %363
  %365 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %364, i32 0, i32 1
  store i8* %361, i8** %365, align 8
  %366 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %367 = load i64, i64* @BNA_RX_RES_MEM_T_RIT, align 8
  %368 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %366, i64 %367
  %369 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %369, i32 0, i32 1
  store %struct.bna_mem_info* %370, %struct.bna_mem_info** %11, align 8
  %371 = load i8*, i8** @BNA_MEM_T_KVA, align 8
  %372 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %373 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %372, i32 0, i32 2
  store i8* %371, i8** %373, align 8
  %374 = load i32, i32* @BFI_ENET_RSS_RIT_MAX, align 4
  %375 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %376 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %375, i32 0, i32 0
  store i32 %374, i32* %376, align 8
  %377 = load %struct.bna_mem_info*, %struct.bna_mem_info** %11, align 8
  %378 = getelementptr inbounds %struct.bna_mem_info, %struct.bna_mem_info* %377, i32 0, i32 1
  store i32 1, i32* %378, align 4
  %379 = load i8*, i8** @BNA_RES_T_INTR, align 8
  %380 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %381 = load i64, i64* @BNA_RX_RES_T_INTR, align 8
  %382 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %380, i64 %381
  %383 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %382, i32 0, i32 1
  store i8* %379, i8** %383, align 8
  %384 = load i32, i32* @BNA_INTR_T_MSIX, align 4
  %385 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %386 = load i64, i64* @BNA_RX_RES_T_INTR, align 8
  %387 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %385, i64 %386
  %388 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %387, i32 0, i32 0
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %388, i32 0, i32 0
  %390 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %389, i32 0, i32 1
  store i32 %384, i32* %390, align 4
  %391 = load %struct.bna_rx_config*, %struct.bna_rx_config** %3, align 8
  %392 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = load %struct.bna_res_info*, %struct.bna_res_info** %4, align 8
  %395 = load i64, i64* @BNA_RX_RES_T_INTR, align 8
  %396 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %394, i64 %395
  %397 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %396, i32 0, i32 0
  %398 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i32 0, i32 0
  %399 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %398, i32 0, i32 0
  store i32 %393, i32* %399, align 8
  ret void
}

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @SIZE_TO_PAGES(i32) #1

declare dso_local i32 @BNA_GET_RXQS(%struct.bna_rx_config*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
