; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/brocade/bna/extr_bna_tx_rx.c_bna_rx_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bna_rx = type { i32, i64, i32, i32, %struct.TYPE_18__, i32 (%struct.bnad*, %struct.bna_ccb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)*, i32, i64, %struct.bna*, i32, i32, i32, i32, i32, i8*, i32*, i32* }
%struct.TYPE_18__ = type { i32 }
%struct.bna_ccb = type { i64, i64*, i64, i64, i32, %struct.TYPE_16__, i32, i32, i32*, %struct.bna_rcb**, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { i64, i64 }
%struct.bna_rcb = type { i64, i32, %struct.bna_ccb*, i32, %struct.bna_rxq*, i8* }
%struct.bna_rxq = type { i64, i32, %struct.bna_rcb*, i64, i64, i64, i64, i64, i32, i32, %struct.bna_rxp*, %struct.bna_rx* }
%struct.bna_rxp = type { i64, %struct.TYPE_17__, i32, %struct.bna_rx*, i32 }
%struct.TYPE_17__ = type { %struct.bna_ccb*, %struct.TYPE_15__, %struct.bna_rx* }
%struct.TYPE_15__ = type { i64, i32, i32, i32, i64, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.bna = type { i32, %struct.bna_rx_mod }
%struct.bna_rx_mod = type { i32, i32 }
%struct.bnad = type { i32 }
%struct.bna_rx_config = type { i64, i64, i64, i32, i64, %struct.TYPE_18__, i32, i32, i32, i32, i32 }
%struct.bna_rx_event_cbfn = type { i32, i32, i32, i32, i32 (%struct.bnad*, %struct.bna_ccb*)*, i32, i32 (%struct.bnad*, %struct.bna_rcb*)* }
%struct.bna_res_info = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.bna_intr_info }
%struct.TYPE_13__ = type { i64, %struct.bna_mem_descr* }
%struct.bna_mem_descr = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.bna_intr_info = type { i32, i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@BNA_RX_RES_T_INTR = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CCB = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_RCB = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_UNMAPDQ = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_UNMAPHQ = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_CQPT_PAGE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DSWQPT = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_HPAGE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_DPAGE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@BNA_RX_MOD_F_ENET_STARTED = common dso_local global i32 0, align 4
@BNA_RX_MOD_F_ENET_LOOPBACK = common dso_local global i32 0, align 4
@BNA_RX_F_ENET_STARTED = common dso_local global i64 0, align 8
@BNA_RXP_SINGLE = common dso_local global i64 0, align 8
@BNA_RX_RES_MEM_T_IBIDX = common dso_local global i64 0, align 8
@BNA_INTR_T_MSIX = common dso_local global i64 0, align 8
@BFI_RX_INTERPKT_COUNT = common dso_local global i32 0, align 4
@BFI_RX_INTERPKT_TIMEO = common dso_local global i32 0, align 4
@BNA_STATUS_T_DISABLED = common dso_local global i32 0, align 4
@BNA_RXP_HDS = common dso_local global i64 0, align 8
@bna_rx_sm_stopped = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bna_rx* @bna_rx_create(%struct.bna* %0, %struct.bnad* %1, %struct.bna_rx_config* %2, %struct.bna_rx_event_cbfn* %3, %struct.bna_res_info* %4, i8* %5) #0 {
  %7 = alloca %struct.bna_rx*, align 8
  %8 = alloca %struct.bna*, align 8
  %9 = alloca %struct.bnad*, align 8
  %10 = alloca %struct.bna_rx_config*, align 8
  %11 = alloca %struct.bna_rx_event_cbfn*, align 8
  %12 = alloca %struct.bna_res_info*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.bna_rx_mod*, align 8
  %15 = alloca %struct.bna_rx*, align 8
  %16 = alloca %struct.bna_rxp*, align 8
  %17 = alloca %struct.bna_rxq*, align 8
  %18 = alloca %struct.bna_rxq*, align 8
  %19 = alloca %struct.bna_intr_info*, align 8
  %20 = alloca %struct.bna_mem_descr*, align 8
  %21 = alloca %struct.bna_mem_descr*, align 8
  %22 = alloca %struct.bna_mem_descr*, align 8
  %23 = alloca %struct.bna_mem_descr*, align 8
  %24 = alloca %struct.bna_mem_descr*, align 8
  %25 = alloca %struct.bna_mem_descr*, align 8
  %26 = alloca %struct.bna_mem_descr*, align 8
  %27 = alloca %struct.bna_mem_descr*, align 8
  %28 = alloca %struct.bna_mem_descr*, align 8
  %29 = alloca %struct.bna_mem_descr*, align 8
  %30 = alloca %struct.bna_mem_descr*, align 8
  %31 = alloca %struct.bna_mem_descr*, align 8
  %32 = alloca %struct.bna_mem_descr*, align 8
  %33 = alloca i64, align 8
  %34 = alloca i64, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i64, align 8
  %38 = alloca i64, align 8
  %39 = alloca i64, align 8
  %40 = alloca i64, align 8
  store %struct.bna* %0, %struct.bna** %8, align 8
  store %struct.bnad* %1, %struct.bnad** %9, align 8
  store %struct.bna_rx_config* %2, %struct.bna_rx_config** %10, align 8
  store %struct.bna_rx_event_cbfn* %3, %struct.bna_rx_event_cbfn** %11, align 8
  store %struct.bna_res_info* %4, %struct.bna_res_info** %12, align 8
  store i8* %5, i8** %13, align 8
  %41 = load %struct.bna*, %struct.bna** %8, align 8
  %42 = getelementptr inbounds %struct.bna, %struct.bna* %41, i32 0, i32 1
  store %struct.bna_rx_mod* %42, %struct.bna_rx_mod** %14, align 8
  %43 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %44 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %45 = call i32 @bna_rx_res_check(%struct.bna_rx_mod* %43, %struct.bna_rx_config* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %6
  store %struct.bna_rx* null, %struct.bna_rx** %7, align 8
  br label %898

48:                                               ; preds = %6
  %49 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %50 = load i64, i64* @BNA_RX_RES_T_INTR, align 8
  %51 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %49, i64 %50
  %52 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 1
  store %struct.bna_intr_info* %53, %struct.bna_intr_info** %19, align 8
  %54 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %55 = load i64, i64* @BNA_RX_RES_MEM_T_CCB, align 8
  %56 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %54, i64 %55
  %57 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %59, align 8
  %61 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %60, i64 0
  store %struct.bna_mem_descr* %61, %struct.bna_mem_descr** %22, align 8
  %62 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %63 = load i64, i64* @BNA_RX_RES_MEM_T_RCB, align 8
  %64 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %62, i64 %63
  %65 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %67, align 8
  %69 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %68, i64 0
  store %struct.bna_mem_descr* %69, %struct.bna_mem_descr** %23, align 8
  %70 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %71 = load i64, i64* @BNA_RX_RES_MEM_T_UNMAPDQ, align 8
  %72 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %70, i64 %71
  %73 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  %76 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %75, align 8
  %77 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %76, i64 0
  store %struct.bna_mem_descr* %77, %struct.bna_mem_descr** %21, align 8
  %78 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %79 = load i64, i64* @BNA_RX_RES_MEM_T_UNMAPHQ, align 8
  %80 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %78, i64 %79
  %81 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %82, i32 0, i32 1
  %84 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %83, align 8
  %85 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %84, i64 0
  store %struct.bna_mem_descr* %85, %struct.bna_mem_descr** %20, align 8
  %86 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %87 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT, align 8
  %88 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %86, i64 %87
  %89 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 1
  %92 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %91, align 8
  %93 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %92, i64 0
  store %struct.bna_mem_descr* %93, %struct.bna_mem_descr** %24, align 8
  %94 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %95 = load i64, i64* @BNA_RX_RES_MEM_T_CSWQPT, align 8
  %96 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %94, i64 %95
  %97 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 1
  %100 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %99, align 8
  %101 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %100, i64 0
  store %struct.bna_mem_descr* %101, %struct.bna_mem_descr** %25, align 8
  %102 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %103 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT_PAGE, align 8
  %104 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %102, i64 %103
  %105 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 1
  %108 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %107, align 8
  %109 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %108, i64 0
  store %struct.bna_mem_descr* %109, %struct.bna_mem_descr** %26, align 8
  %110 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %111 = load i64, i64* @BNA_RX_RES_MEM_T_HQPT, align 8
  %112 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %110, i64 %111
  %113 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  %116 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %115, align 8
  %117 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %116, i64 0
  store %struct.bna_mem_descr* %117, %struct.bna_mem_descr** %27, align 8
  %118 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %119 = load i64, i64* @BNA_RX_RES_MEM_T_DQPT, align 8
  %120 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %118, i64 %119
  %121 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 1
  %124 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %123, align 8
  %125 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %124, i64 0
  store %struct.bna_mem_descr* %125, %struct.bna_mem_descr** %28, align 8
  %126 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %127 = load i64, i64* @BNA_RX_RES_MEM_T_HSWQPT, align 8
  %128 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %126, i64 %127
  %129 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 1
  %132 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %131, align 8
  %133 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %132, i64 0
  store %struct.bna_mem_descr* %133, %struct.bna_mem_descr** %29, align 8
  %134 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %135 = load i64, i64* @BNA_RX_RES_MEM_T_DSWQPT, align 8
  %136 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %134, i64 %135
  %137 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %138, i32 0, i32 1
  %140 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %139, align 8
  %141 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %140, i64 0
  store %struct.bna_mem_descr* %141, %struct.bna_mem_descr** %30, align 8
  %142 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %143 = load i64, i64* @BNA_RX_RES_MEM_T_HPAGE, align 8
  %144 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %142, i64 %143
  %145 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  %148 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %147, align 8
  %149 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %148, i64 0
  store %struct.bna_mem_descr* %149, %struct.bna_mem_descr** %31, align 8
  %150 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %151 = load i64, i64* @BNA_RX_RES_MEM_T_DPAGE, align 8
  %152 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %150, i64 %151
  %153 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %154, i32 0, i32 1
  %156 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %155, align 8
  %157 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %156, i64 0
  store %struct.bna_mem_descr* %157, %struct.bna_mem_descr** %32, align 8
  %158 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %159 = load i64, i64* @BNA_RX_RES_MEM_T_CQPT_PAGE, align 8
  %160 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %158, i64 %159
  %161 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @PAGE_SIZE, align 8
  %166 = udiv i64 %164, %165
  store i64 %166, i64* %40, align 8
  %167 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %168 = load i64, i64* @BNA_RX_RES_MEM_T_DPAGE, align 8
  %169 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %167, i64 %168
  %170 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = load i64, i64* @PAGE_SIZE, align 8
  %175 = udiv i64 %173, %174
  store i64 %175, i64* %33, align 8
  %176 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %177 = load i64, i64* @BNA_RX_RES_MEM_T_HPAGE, align 8
  %178 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %176, i64 %177
  %179 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @PAGE_SIZE, align 8
  %184 = udiv i64 %182, %183
  store i64 %184, i64* %34, align 8
  %185 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %186 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %187 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %186, i32 0, i32 10
  %188 = load i32, i32* %187, align 4
  %189 = call %struct.bna_rx* @bna_rx_get(%struct.bna_rx_mod* %185, i32 %188)
  store %struct.bna_rx* %189, %struct.bna_rx** %15, align 8
  %190 = load %struct.bna*, %struct.bna** %8, align 8
  %191 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %192 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %191, i32 0, i32 9
  store %struct.bna* %190, %struct.bna** %192, align 8
  %193 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %194 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %193, i32 0, i32 8
  store i64 0, i64* %194, align 8
  %195 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %196 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %195, i32 0, i32 7
  %197 = call i32 @INIT_LIST_HEAD(i32* %196)
  %198 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %199 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %198, i32 0, i32 17
  store i32* null, i32** %199, align 8
  %200 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %201 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %200, i32 0, i32 16
  store i32* null, i32** %201, align 8
  %202 = load i8*, i8** %13, align 8
  %203 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %204 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %203, i32 0, i32 15
  store i8* %202, i8** %204, align 8
  %205 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %206 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %205, i32 0, i32 6
  %207 = load i32 (%struct.bnad*, %struct.bna_rcb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)** %206, align 8
  %208 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %209 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %208, i32 0, i32 6
  store i32 (%struct.bnad*, %struct.bna_rcb*)* %207, i32 (%struct.bnad*, %struct.bna_rcb*)** %209, align 8
  %210 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %211 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %210, i32 0, i32 5
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %214 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %213, i32 0, i32 14
  store i32 %212, i32* %214, align 8
  %215 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %216 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %215, i32 0, i32 4
  %217 = load i32 (%struct.bnad*, %struct.bna_ccb*)*, i32 (%struct.bnad*, %struct.bna_ccb*)** %216, align 8
  %218 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %219 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %218, i32 0, i32 5
  store i32 (%struct.bnad*, %struct.bna_ccb*)* %217, i32 (%struct.bnad*, %struct.bna_ccb*)** %219, align 8
  %220 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %221 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %220, i32 0, i32 3
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %224 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %223, i32 0, i32 13
  store i32 %222, i32* %224, align 4
  %225 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %226 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %225, i32 0, i32 2
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %229 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %228, i32 0, i32 12
  store i32 %227, i32* %229, align 8
  %230 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %231 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %234 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %233, i32 0, i32 11
  store i32 %232, i32* %234, align 4
  %235 = load %struct.bna_rx_event_cbfn*, %struct.bna_rx_event_cbfn** %11, align 8
  %236 = getelementptr inbounds %struct.bna_rx_event_cbfn, %struct.bna_rx_event_cbfn* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %239 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %238, i32 0, i32 10
  store i32 %237, i32* %239, align 8
  %240 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %241 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %240, i32 0, i32 9
  %242 = load %struct.bna*, %struct.bna** %241, align 8
  %243 = getelementptr inbounds %struct.bna, %struct.bna* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 4
  %246 = load i32, i32* @BNA_RX_MOD_F_ENET_STARTED, align 4
  %247 = and i32 %245, %246
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %288

249:                                              ; preds = %48
  %250 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %251 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  switch i32 %252, label %287 [
    i32 128, label %253
    i32 129, label %270
  ]

253:                                              ; preds = %249
  %254 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %255 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %254, i32 0, i32 9
  %256 = load %struct.bna*, %struct.bna** %255, align 8
  %257 = getelementptr inbounds %struct.bna, %struct.bna* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @BNA_RX_MOD_F_ENET_LOOPBACK, align 4
  %261 = and i32 %259, %260
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %269, label %263

263:                                              ; preds = %253
  %264 = load i64, i64* @BNA_RX_F_ENET_STARTED, align 8
  %265 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %266 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %265, i32 0, i32 8
  %267 = load i64, i64* %266, align 8
  %268 = or i64 %267, %264
  store i64 %268, i64* %266, align 8
  br label %269

269:                                              ; preds = %263, %253
  br label %287

270:                                              ; preds = %249
  %271 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %272 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %271, i32 0, i32 9
  %273 = load %struct.bna*, %struct.bna** %272, align 8
  %274 = getelementptr inbounds %struct.bna, %struct.bna* %273, i32 0, i32 1
  %275 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @BNA_RX_MOD_F_ENET_LOOPBACK, align 4
  %278 = and i32 %276, %277
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %286

280:                                              ; preds = %270
  %281 = load i64, i64* @BNA_RX_F_ENET_STARTED, align 8
  %282 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %283 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %282, i32 0, i32 8
  %284 = load i64, i64* %283, align 8
  %285 = or i64 %284, %281
  store i64 %285, i64* %283, align 8
  br label %286

286:                                              ; preds = %280, %270
  br label %287

287:                                              ; preds = %249, %286, %269
  br label %288

288:                                              ; preds = %287, %48
  %289 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %290 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %289, i32 0, i32 0
  %291 = load i64, i64* %290, align 8
  %292 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %293 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %292, i32 0, i32 1
  store i64 %291, i64* %293, align 8
  store i64 0, i64* %39, align 8
  store i64 0, i64* %35, align 8
  store i64 0, i64* %36, align 8
  store i64 0, i64* %37, align 8
  br label %294

294:                                              ; preds = %870, %288
  %295 = load i64, i64* %39, align 8
  %296 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %297 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %296, i32 0, i32 1
  %298 = load i64, i64* %297, align 8
  %299 = icmp ult i64 %295, %298
  br i1 %299, label %300, label %873

300:                                              ; preds = %294
  %301 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %302 = call %struct.bna_rxp* @bna_rxp_get(%struct.bna_rx_mod* %301)
  store %struct.bna_rxp* %302, %struct.bna_rxp** %16, align 8
  %303 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %304 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %303, i32 0, i32 4
  %305 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %306 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %305, i32 0, i32 7
  %307 = call i32 @list_add_tail(i32* %304, i32* %306)
  %308 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %309 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %308, i32 0, i32 1
  %310 = load i64, i64* %309, align 8
  %311 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %312 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %311, i32 0, i32 0
  store i64 %310, i64* %312, align 8
  %313 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %314 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %315 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %314, i32 0, i32 3
  store %struct.bna_rx* %313, %struct.bna_rx** %315, align 8
  %316 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %317 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %318 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %318, i32 0, i32 2
  store %struct.bna_rx* %316, %struct.bna_rx** %319, align 8
  %320 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %321 = call %struct.bna_rxq* @bna_rxq_get(%struct.bna_rx_mod* %320)
  store %struct.bna_rxq* %321, %struct.bna_rxq** %17, align 8
  %322 = load i64, i64* @BNA_RXP_SINGLE, align 8
  %323 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %324 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %323, i32 0, i32 1
  %325 = load i64, i64* %324, align 8
  %326 = icmp eq i64 %322, %325
  br i1 %326, label %327, label %328

327:                                              ; preds = %300
  store %struct.bna_rxq* null, %struct.bna_rxq** %18, align 8
  br label %331

328:                                              ; preds = %300
  %329 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %330 = call %struct.bna_rxq* @bna_rxq_get(%struct.bna_rx_mod* %329)
  store %struct.bna_rxq* %330, %struct.bna_rxq** %18, align 8
  br label %331

331:                                              ; preds = %328, %327
  %332 = load %struct.bna_intr_info*, %struct.bna_intr_info** %19, align 8
  %333 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %332, i32 0, i32 0
  %334 = load i32, i32* %333, align 8
  %335 = icmp eq i32 1, %334
  br i1 %335, label %336, label %345

336:                                              ; preds = %331
  %337 = load %struct.bna_intr_info*, %struct.bna_intr_info** %19, align 8
  %338 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %337, i32 0, i32 2
  %339 = load %struct.TYPE_10__*, %struct.TYPE_10__** %338, align 8
  %340 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %339, i64 0
  %341 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %344 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %343, i32 0, i32 2
  store i32 %342, i32* %344, align 8
  br label %355

345:                                              ; preds = %331
  %346 = load %struct.bna_intr_info*, %struct.bna_intr_info** %19, align 8
  %347 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %346, i32 0, i32 2
  %348 = load %struct.TYPE_10__*, %struct.TYPE_10__** %347, align 8
  %349 = load i64, i64* %39, align 8
  %350 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %348, i64 %349
  %351 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 4
  %353 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %354 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %353, i32 0, i32 2
  store i32 %352, i32* %354, align 8
  br label %355

355:                                              ; preds = %345, %336
  %356 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %357 = load i64, i64* @BNA_RX_RES_MEM_T_IBIDX, align 8
  %358 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %356, i64 %357
  %359 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %358, i32 0, i32 0
  %360 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %360, i32 0, i32 1
  %362 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %361, align 8
  %363 = load i64, i64* %39, align 8
  %364 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %362, i64 %363
  %365 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %364, i32 0, i32 1
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %369 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %368, i32 0, i32 1
  %370 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %369, i32 0, i32 1
  %371 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %370, i32 0, i32 7
  %372 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %371, i32 0, i32 1
  store i32 %367, i32* %372, align 4
  %373 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %374 = load i64, i64* @BNA_RX_RES_MEM_T_IBIDX, align 8
  %375 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %373, i64 %374
  %376 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %375, i32 0, i32 0
  %377 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %376, i32 0, i32 0
  %378 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %377, i32 0, i32 1
  %379 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %378, align 8
  %380 = load i64, i64* %39, align 8
  %381 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %379, i64 %380
  %382 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %381, i32 0, i32 1
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 0
  %384 = load i32, i32* %383, align 8
  %385 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %386 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %385, i32 0, i32 1
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %387, i32 0, i32 7
  %389 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %388, i32 0, i32 0
  store i32 %384, i32* %389, align 8
  %390 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %391 = load i64, i64* @BNA_RX_RES_MEM_T_IBIDX, align 8
  %392 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %390, i64 %391
  %393 = getelementptr inbounds %struct.bna_res_info, %struct.bna_res_info* %392, i32 0, i32 0
  %394 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %393, i32 0, i32 0
  %395 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %394, i32 0, i32 1
  %396 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %395, align 8
  %397 = load i64, i64* %39, align 8
  %398 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %396, i64 %397
  %399 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %398, i32 0, i32 0
  %400 = load i64, i64* %399, align 8
  %401 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %402 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %401, i32 0, i32 1
  %403 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %402, i32 0, i32 1
  %404 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %403, i32 0, i32 4
  store i64 %400, i64* %404, align 8
  %405 = load %struct.bna_intr_info*, %struct.bna_intr_info** %19, align 8
  %406 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %409 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %408, i32 0, i32 1
  %410 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %409, i32 0, i32 1
  %411 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %410, i32 0, i32 0
  store i64 %407, i64* %411, align 8
  %412 = load %struct.bna_intr_info*, %struct.bna_intr_info** %19, align 8
  %413 = getelementptr inbounds %struct.bna_intr_info, %struct.bna_intr_info* %412, i32 0, i32 1
  %414 = load i64, i64* %413, align 8
  %415 = load i64, i64* @BNA_INTR_T_MSIX, align 8
  %416 = icmp eq i64 %414, %415
  br i1 %416, label %417, label %425

417:                                              ; preds = %355
  %418 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %419 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %418, i32 0, i32 2
  %420 = load i32, i32* %419, align 8
  %421 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %422 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %423, i32 0, i32 2
  store i32 %420, i32* %424, align 4
  br label %434

425:                                              ; preds = %355
  %426 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %427 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %426, i32 0, i32 2
  %428 = load i32, i32* %427, align 8
  %429 = call i32 @BIT(i32 %428)
  %430 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %431 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %430, i32 0, i32 1
  %432 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %431, i32 0, i32 1
  %433 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %432, i32 0, i32 2
  store i32 %429, i32* %433, align 4
  br label %434

434:                                              ; preds = %425, %417
  %435 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %436 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %435, i32 0, i32 9
  %437 = load i32, i32* %436, align 8
  %438 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %439 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %439, i32 0, i32 1
  %441 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %440, i32 0, i32 1
  store i32 %437, i32* %441, align 8
  %442 = load i32, i32* @BFI_RX_INTERPKT_COUNT, align 4
  %443 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %444 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %444, i32 0, i32 1
  %446 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %445, i32 0, i32 6
  store i32 %442, i32* %446, align 4
  %447 = load i32, i32* @BFI_RX_INTERPKT_TIMEO, align 4
  %448 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %449 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %448, i32 0, i32 1
  %450 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %449, i32 0, i32 1
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %450, i32 0, i32 5
  store i32 %447, i32* %451, align 8
  %452 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %453 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %454 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %455 = call i32 @bna_rxp_add_rxqs(%struct.bna_rxp* %452, %struct.bna_rxq* %453, %struct.bna_rxq* %454)
  %456 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %457 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %458 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %457, i32 0, i32 11
  store %struct.bna_rx* %456, %struct.bna_rx** %458, align 8
  %459 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %460 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %461 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %460, i32 0, i32 10
  store %struct.bna_rxp* %459, %struct.bna_rxp** %461, align 8
  %462 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %23, align 8
  %463 = load i64, i64* %37, align 8
  %464 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %462, i64 %463
  %465 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %464, i32 0, i32 0
  %466 = load i64, i64* %465, align 8
  %467 = inttoptr i64 %466 to %struct.bna_rcb*
  %468 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %469 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %468, i32 0, i32 2
  store %struct.bna_rcb* %467, %struct.bna_rcb** %469, align 8
  %470 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %21, align 8
  %471 = load i64, i64* %36, align 8
  %472 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %470, i64 %471
  %473 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %472, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = inttoptr i64 %474 to i8*
  %476 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %477 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %476, i32 0, i32 2
  %478 = load %struct.bna_rcb*, %struct.bna_rcb** %477, align 8
  %479 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %478, i32 0, i32 5
  store i8* %475, i8** %479, align 8
  %480 = load i64, i64* %37, align 8
  %481 = add i64 %480, 1
  store i64 %481, i64* %37, align 8
  %482 = load i64, i64* %36, align 8
  %483 = add i64 %482, 1
  store i64 %483, i64* %36, align 8
  %484 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %485 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %484, i32 0, i32 2
  %486 = load i64, i64* %485, align 8
  %487 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %488 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %487, i32 0, i32 2
  %489 = load %struct.bna_rcb*, %struct.bna_rcb** %488, align 8
  %490 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %489, i32 0, i32 0
  store i64 %486, i64* %490, align 8
  %491 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %492 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %491, i32 0, i32 2
  %493 = load i64, i64* %492, align 8
  %494 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %495 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %494, i32 0, i32 0
  store i64 %493, i64* %495, align 8
  %496 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %497 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %496, i32 0, i32 8
  %498 = load i32, i32* %497, align 4
  %499 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %500 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %499, i32 0, i32 9
  store i32 %498, i32* %500, align 4
  %501 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %502 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %501, i32 0, i32 7
  %503 = load i32, i32* %502, align 8
  %504 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %505 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %504, i32 0, i32 8
  store i32 %503, i32* %505, align 8
  %506 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %507 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %506, i32 0, i32 3
  %508 = load i32, i32* %507, align 8
  %509 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %510 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %509, i32 0, i32 1
  store i32 %508, i32* %510, align 8
  %511 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %512 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %513 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %512, i32 0, i32 2
  %514 = load %struct.bna_rcb*, %struct.bna_rcb** %513, align 8
  %515 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %514, i32 0, i32 4
  store %struct.bna_rxq* %511, %struct.bna_rxq** %515, align 8
  %516 = load %struct.bna*, %struct.bna** %8, align 8
  %517 = getelementptr inbounds %struct.bna, %struct.bna* %516, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %520 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %519, i32 0, i32 2
  %521 = load %struct.bna_rcb*, %struct.bna_rcb** %520, align 8
  %522 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %521, i32 0, i32 3
  store i32 %518, i32* %522, align 8
  %523 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %524 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %523, i32 0, i32 2
  %525 = load %struct.bna_rcb*, %struct.bna_rcb** %524, align 8
  %526 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %525, i32 0, i32 1
  store i32 0, i32* %526, align 8
  %527 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %528 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %527, i32 0, i32 6
  store i64 0, i64* %528, align 8
  %529 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %530 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %529, i32 0, i32 7
  store i64 0, i64* %530, align 8
  %531 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %532 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %531, i32 0, i32 4
  store i64 0, i64* %532, align 8
  %533 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %534 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %533, i32 0, i32 5
  store i64 0, i64* %534, align 8
  %535 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %536 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %535, i32 0, i32 3
  store i64 0, i64* %536, align 8
  %537 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %538 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %539 = load i64, i64* %33, align 8
  %540 = load i64, i64* @PAGE_SIZE, align 8
  %541 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %28, align 8
  %542 = load i64, i64* %39, align 8
  %543 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %541, i64 %542
  %544 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %30, align 8
  %545 = load i64, i64* %39, align 8
  %546 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %544, i64 %545
  %547 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %32, align 8
  %548 = load i64, i64* %39, align 8
  %549 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %547, i64 %548
  %550 = call i32 @bna_rxq_qpt_setup(%struct.bna_rxq* %537, %struct.bna_rxp* %538, i64 %539, i64 %540, %struct.bna_mem_descr* %543, %struct.bna_mem_descr* %546, %struct.bna_mem_descr* %549)
  %551 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %552 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %551, i32 0, i32 6
  %553 = load i32 (%struct.bnad*, %struct.bna_rcb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)** %552, align 8
  %554 = icmp ne i32 (%struct.bnad*, %struct.bna_rcb*)* %553, null
  br i1 %554, label %555, label %564

555:                                              ; preds = %434
  %556 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %557 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %556, i32 0, i32 6
  %558 = load i32 (%struct.bnad*, %struct.bna_rcb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)** %557, align 8
  %559 = load %struct.bnad*, %struct.bnad** %9, align 8
  %560 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %561 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %560, i32 0, i32 2
  %562 = load %struct.bna_rcb*, %struct.bna_rcb** %561, align 8
  %563 = call i32 %558(%struct.bnad* %559, %struct.bna_rcb* %562)
  br label %564

564:                                              ; preds = %555, %434
  %565 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %566 = icmp ne %struct.bna_rxq* %565, null
  br i1 %566, label %567, label %685

567:                                              ; preds = %564
  %568 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %569 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %570 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %569, i32 0, i32 11
  store %struct.bna_rx* %568, %struct.bna_rx** %570, align 8
  %571 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %572 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %573 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %572, i32 0, i32 10
  store %struct.bna_rxp* %571, %struct.bna_rxp** %573, align 8
  %574 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %23, align 8
  %575 = load i64, i64* %37, align 8
  %576 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %574, i64 %575
  %577 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %576, i32 0, i32 0
  %578 = load i64, i64* %577, align 8
  %579 = inttoptr i64 %578 to %struct.bna_rcb*
  %580 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %581 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %580, i32 0, i32 2
  store %struct.bna_rcb* %579, %struct.bna_rcb** %581, align 8
  %582 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %20, align 8
  %583 = load i64, i64* %35, align 8
  %584 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %582, i64 %583
  %585 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %584, i32 0, i32 0
  %586 = load i64, i64* %585, align 8
  %587 = inttoptr i64 %586 to i8*
  %588 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %589 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %588, i32 0, i32 2
  %590 = load %struct.bna_rcb*, %struct.bna_rcb** %589, align 8
  %591 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %590, i32 0, i32 5
  store i8* %587, i8** %591, align 8
  %592 = load i64, i64* %37, align 8
  %593 = add i64 %592, 1
  store i64 %593, i64* %37, align 8
  %594 = load i64, i64* %35, align 8
  %595 = add i64 %594, 1
  store i64 %595, i64* %35, align 8
  %596 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %597 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %596, i32 0, i32 4
  %598 = load i64, i64* %597, align 8
  %599 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %600 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %599, i32 0, i32 2
  %601 = load %struct.bna_rcb*, %struct.bna_rcb** %600, align 8
  %602 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %601, i32 0, i32 0
  store i64 %598, i64* %602, align 8
  %603 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %604 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %603, i32 0, i32 4
  %605 = load i64, i64* %604, align 8
  %606 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %607 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %606, i32 0, i32 0
  store i64 %605, i64* %607, align 8
  %608 = load i32, i32* @BNA_STATUS_T_DISABLED, align 4
  %609 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %610 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %609, i32 0, i32 9
  store i32 %608, i32* %610, align 4
  %611 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %612 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %611, i32 0, i32 1
  store i32 1, i32* %612, align 8
  %613 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %614 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %615 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %614, i32 0, i32 2
  %616 = load %struct.bna_rcb*, %struct.bna_rcb** %615, align 8
  %617 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %616, i32 0, i32 4
  store %struct.bna_rxq* %613, %struct.bna_rxq** %617, align 8
  %618 = load %struct.bna*, %struct.bna** %8, align 8
  %619 = getelementptr inbounds %struct.bna, %struct.bna* %618, i32 0, i32 0
  %620 = load i32, i32* %619, align 4
  %621 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %622 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %621, i32 0, i32 2
  %623 = load %struct.bna_rcb*, %struct.bna_rcb** %622, align 8
  %624 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %623, i32 0, i32 3
  store i32 %620, i32* %624, align 8
  %625 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %626 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %625, i32 0, i32 2
  %627 = load %struct.bna_rcb*, %struct.bna_rcb** %626, align 8
  %628 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %627, i32 0, i32 1
  store i32 1, i32* %628, align 8
  %629 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %630 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %629, i32 0, i32 1
  %631 = load i64, i64* %630, align 8
  %632 = load i64, i64* @BNA_RXP_HDS, align 8
  %633 = icmp eq i64 %631, %632
  br i1 %633, label %634, label %639

634:                                              ; preds = %567
  %635 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %636 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %635, i32 0, i32 5
  %637 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %636, i32 0, i32 0
  %638 = load i32, i32* %637, align 8
  br label %643

639:                                              ; preds = %567
  %640 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %641 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %640, i32 0, i32 6
  %642 = load i32, i32* %641, align 4
  br label %643

643:                                              ; preds = %639, %634
  %644 = phi i32 [ %638, %634 ], [ %642, %639 ]
  %645 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %646 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %645, i32 0, i32 8
  store i32 %644, i32* %646, align 8
  %647 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %648 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %647, i32 0, i32 6
  store i64 0, i64* %648, align 8
  %649 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %650 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %649, i32 0, i32 7
  store i64 0, i64* %650, align 8
  %651 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %652 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %651, i32 0, i32 4
  store i64 0, i64* %652, align 8
  %653 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %654 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %653, i32 0, i32 5
  store i64 0, i64* %654, align 8
  %655 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %656 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %655, i32 0, i32 3
  store i64 0, i64* %656, align 8
  %657 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %658 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %659 = load i64, i64* %34, align 8
  %660 = load i64, i64* @PAGE_SIZE, align 8
  %661 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %27, align 8
  %662 = load i64, i64* %39, align 8
  %663 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %661, i64 %662
  %664 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %29, align 8
  %665 = load i64, i64* %39, align 8
  %666 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %664, i64 %665
  %667 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %31, align 8
  %668 = load i64, i64* %39, align 8
  %669 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %667, i64 %668
  %670 = call i32 @bna_rxq_qpt_setup(%struct.bna_rxq* %657, %struct.bna_rxp* %658, i64 %659, i64 %660, %struct.bna_mem_descr* %663, %struct.bna_mem_descr* %666, %struct.bna_mem_descr* %669)
  %671 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %672 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %671, i32 0, i32 6
  %673 = load i32 (%struct.bnad*, %struct.bna_rcb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)** %672, align 8
  %674 = icmp ne i32 (%struct.bnad*, %struct.bna_rcb*)* %673, null
  br i1 %674, label %675, label %684

675:                                              ; preds = %643
  %676 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %677 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %676, i32 0, i32 6
  %678 = load i32 (%struct.bnad*, %struct.bna_rcb*)*, i32 (%struct.bnad*, %struct.bna_rcb*)** %677, align 8
  %679 = load %struct.bnad*, %struct.bnad** %9, align 8
  %680 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %681 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %680, i32 0, i32 2
  %682 = load %struct.bna_rcb*, %struct.bna_rcb** %681, align 8
  %683 = call i32 %678(%struct.bnad* %679, %struct.bna_rcb* %682)
  br label %684

684:                                              ; preds = %675, %643
  br label %685

685:                                              ; preds = %684, %564
  %686 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %22, align 8
  %687 = load i64, i64* %39, align 8
  %688 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %686, i64 %687
  %689 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %688, i32 0, i32 0
  %690 = load i64, i64* %689, align 8
  %691 = inttoptr i64 %690 to %struct.bna_ccb*
  %692 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %693 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %692, i32 0, i32 1
  %694 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %693, i32 0, i32 0
  store %struct.bna_ccb* %691, %struct.bna_ccb** %694, align 8
  %695 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %696 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %695, i32 0, i32 2
  %697 = load i64, i64* %696, align 8
  %698 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %699 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %698, i32 0, i32 1
  %700 = load i64, i64* %699, align 8
  %701 = load i64, i64* @BNA_RXP_SINGLE, align 8
  %702 = icmp eq i64 %700, %701
  br i1 %702, label %703, label %704

703:                                              ; preds = %685
  br label %708

704:                                              ; preds = %685
  %705 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %706 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %705, i32 0, i32 4
  %707 = load i64, i64* %706, align 8
  br label %708

708:                                              ; preds = %704, %703
  %709 = phi i64 [ 0, %703 ], [ %707, %704 ]
  %710 = add i64 %697, %709
  store i64 %710, i64* %38, align 8
  %711 = load i64, i64* %38, align 8
  %712 = call i64 @roundup_pow_of_two(i64 %711)
  store i64 %712, i64* %38, align 8
  %713 = load i64, i64* %38, align 8
  %714 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %715 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %714, i32 0, i32 1
  %716 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %715, i32 0, i32 0
  %717 = load %struct.bna_ccb*, %struct.bna_ccb** %716, align 8
  %718 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %717, i32 0, i32 0
  store i64 %713, i64* %718, align 8
  %719 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %720 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %719, i32 0, i32 1
  %721 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %722 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %721, i32 0, i32 1
  %723 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %722, i32 0, i32 0
  %724 = load %struct.bna_ccb*, %struct.bna_ccb** %723, align 8
  %725 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %724, i32 0, i32 10
  store %struct.TYPE_17__* %720, %struct.TYPE_17__** %725, align 8
  %726 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %727 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %726, i32 0, i32 2
  %728 = load %struct.bna_rcb*, %struct.bna_rcb** %727, align 8
  %729 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %730 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %729, i32 0, i32 1
  %731 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %730, i32 0, i32 0
  %732 = load %struct.bna_ccb*, %struct.bna_ccb** %731, align 8
  %733 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %732, i32 0, i32 9
  %734 = load %struct.bna_rcb**, %struct.bna_rcb*** %733, align 8
  %735 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %734, i64 0
  store %struct.bna_rcb* %728, %struct.bna_rcb** %735, align 8
  %736 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %737 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %736, i32 0, i32 1
  %738 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %737, i32 0, i32 0
  %739 = load %struct.bna_ccb*, %struct.bna_ccb** %738, align 8
  %740 = load %struct.bna_rxq*, %struct.bna_rxq** %17, align 8
  %741 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %740, i32 0, i32 2
  %742 = load %struct.bna_rcb*, %struct.bna_rcb** %741, align 8
  %743 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %742, i32 0, i32 2
  store %struct.bna_ccb* %739, %struct.bna_ccb** %743, align 8
  %744 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %745 = icmp ne %struct.bna_rxq* %744, null
  br i1 %745, label %746, label %765

746:                                              ; preds = %708
  %747 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %748 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %747, i32 0, i32 2
  %749 = load %struct.bna_rcb*, %struct.bna_rcb** %748, align 8
  %750 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %751 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %750, i32 0, i32 1
  %752 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %751, i32 0, i32 0
  %753 = load %struct.bna_ccb*, %struct.bna_ccb** %752, align 8
  %754 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %753, i32 0, i32 9
  %755 = load %struct.bna_rcb**, %struct.bna_rcb*** %754, align 8
  %756 = getelementptr inbounds %struct.bna_rcb*, %struct.bna_rcb** %755, i64 1
  store %struct.bna_rcb* %749, %struct.bna_rcb** %756, align 8
  %757 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %758 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %757, i32 0, i32 1
  %759 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %758, i32 0, i32 0
  %760 = load %struct.bna_ccb*, %struct.bna_ccb** %759, align 8
  %761 = load %struct.bna_rxq*, %struct.bna_rxq** %18, align 8
  %762 = getelementptr inbounds %struct.bna_rxq, %struct.bna_rxq* %761, i32 0, i32 2
  %763 = load %struct.bna_rcb*, %struct.bna_rcb** %762, align 8
  %764 = getelementptr inbounds %struct.bna_rcb, %struct.bna_rcb* %763, i32 0, i32 2
  store %struct.bna_ccb* %760, %struct.bna_ccb** %764, align 8
  br label %765

765:                                              ; preds = %746, %708
  %766 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %767 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %766, i32 0, i32 1
  %768 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %767, i32 0, i32 1
  %769 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %768, i32 0, i32 4
  %770 = load i64, i64* %769, align 8
  %771 = inttoptr i64 %770 to i64*
  %772 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %773 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %772, i32 0, i32 1
  %774 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %773, i32 0, i32 0
  %775 = load %struct.bna_ccb*, %struct.bna_ccb** %774, align 8
  %776 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %775, i32 0, i32 1
  store i64* %771, i64** %776, align 8
  %777 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %778 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %777, i32 0, i32 1
  %779 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %778, i32 0, i32 1
  %780 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %779, i32 0, i32 3
  %781 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %782 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %781, i32 0, i32 1
  %783 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %782, i32 0, i32 0
  %784 = load %struct.bna_ccb*, %struct.bna_ccb** %783, align 8
  %785 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %784, i32 0, i32 8
  store i32* %780, i32** %785, align 8
  %786 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %787 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %786, i32 0, i32 1
  %788 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %787, i32 0, i32 1
  %789 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %788, i32 0, i32 0
  %790 = load i64, i64* %789, align 8
  %791 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %792 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %791, i32 0, i32 1
  %793 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %792, i32 0, i32 0
  %794 = load %struct.bna_ccb*, %struct.bna_ccb** %793, align 8
  %795 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %794, i32 0, i32 2
  store i64 %790, i64* %795, align 8
  %796 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %797 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %796, i32 0, i32 1
  %798 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %797, i32 0, i32 1
  %799 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %798, i32 0, i32 2
  %800 = load i32, i32* %799, align 4
  %801 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %802 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %801, i32 0, i32 1
  %803 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %802, i32 0, i32 0
  %804 = load %struct.bna_ccb*, %struct.bna_ccb** %803, align 8
  %805 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %804, i32 0, i32 7
  store i32 %800, i32* %805, align 4
  %806 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %807 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %806, i32 0, i32 1
  %808 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %807, i32 0, i32 1
  %809 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %808, i32 0, i32 1
  %810 = load i32, i32* %809, align 8
  %811 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %812 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %811, i32 0, i32 1
  %813 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %812, i32 0, i32 0
  %814 = load %struct.bna_ccb*, %struct.bna_ccb** %813, align 8
  %815 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %814, i32 0, i32 6
  store i32 %810, i32* %815, align 8
  %816 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %817 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %816, i32 0, i32 1
  %818 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %817, i32 0, i32 0
  %819 = load %struct.bna_ccb*, %struct.bna_ccb** %818, align 8
  %820 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %819, i32 0, i32 5
  %821 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %820, i32 0, i32 1
  store i64 0, i64* %821, align 8
  %822 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %823 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %822, i32 0, i32 1
  %824 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %823, i32 0, i32 0
  %825 = load %struct.bna_ccb*, %struct.bna_ccb** %824, align 8
  %826 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %825, i32 0, i32 5
  %827 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %826, i32 0, i32 0
  store i64 0, i64* %827, align 8
  %828 = load %struct.bna*, %struct.bna** %8, align 8
  %829 = getelementptr inbounds %struct.bna, %struct.bna* %828, i32 0, i32 0
  %830 = load i32, i32* %829, align 4
  %831 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %832 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %831, i32 0, i32 1
  %833 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %832, i32 0, i32 0
  %834 = load %struct.bna_ccb*, %struct.bna_ccb** %833, align 8
  %835 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %834, i32 0, i32 4
  store i32 %830, i32* %835, align 8
  %836 = load i64, i64* %39, align 8
  %837 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %838 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %837, i32 0, i32 1
  %839 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %838, i32 0, i32 0
  %840 = load %struct.bna_ccb*, %struct.bna_ccb** %839, align 8
  %841 = getelementptr inbounds %struct.bna_ccb, %struct.bna_ccb* %840, i32 0, i32 3
  store i64 %836, i64* %841, align 8
  %842 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %843 = load i64, i64* %40, align 8
  %844 = load i64, i64* @PAGE_SIZE, align 8
  %845 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %24, align 8
  %846 = load i64, i64* %39, align 8
  %847 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %845, i64 %846
  %848 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %25, align 8
  %849 = load i64, i64* %39, align 8
  %850 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %848, i64 %849
  %851 = load %struct.bna_mem_descr*, %struct.bna_mem_descr** %26, align 8
  %852 = load i64, i64* %39, align 8
  %853 = getelementptr inbounds %struct.bna_mem_descr, %struct.bna_mem_descr* %851, i64 %852
  %854 = call i32 @bna_rxp_cqpt_setup(%struct.bna_rxp* %842, i64 %843, i64 %844, %struct.bna_mem_descr* %847, %struct.bna_mem_descr* %850, %struct.bna_mem_descr* %853)
  %855 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %856 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %855, i32 0, i32 5
  %857 = load i32 (%struct.bnad*, %struct.bna_ccb*)*, i32 (%struct.bnad*, %struct.bna_ccb*)** %856, align 8
  %858 = icmp ne i32 (%struct.bnad*, %struct.bna_ccb*)* %857, null
  br i1 %858, label %859, label %869

859:                                              ; preds = %765
  %860 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %861 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %860, i32 0, i32 5
  %862 = load i32 (%struct.bnad*, %struct.bna_ccb*)*, i32 (%struct.bnad*, %struct.bna_ccb*)** %861, align 8
  %863 = load %struct.bnad*, %struct.bnad** %9, align 8
  %864 = load %struct.bna_rxp*, %struct.bna_rxp** %16, align 8
  %865 = getelementptr inbounds %struct.bna_rxp, %struct.bna_rxp* %864, i32 0, i32 1
  %866 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %865, i32 0, i32 0
  %867 = load %struct.bna_ccb*, %struct.bna_ccb** %866, align 8
  %868 = call i32 %862(%struct.bnad* %863, %struct.bna_ccb* %867)
  br label %869

869:                                              ; preds = %859, %765
  br label %870

870:                                              ; preds = %869
  %871 = load i64, i64* %39, align 8
  %872 = add i64 %871, 1
  store i64 %872, i64* %39, align 8
  br label %294

873:                                              ; preds = %294
  %874 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %875 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %874, i32 0, i32 4
  %876 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %877 = getelementptr inbounds %struct.bna_rx_config, %struct.bna_rx_config* %876, i32 0, i32 5
  %878 = bitcast %struct.TYPE_18__* %875 to i8*
  %879 = bitcast %struct.TYPE_18__* %877 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %878, i8* align 8 %879, i64 4, i1 false)
  %880 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %881 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %880, i32 0, i32 3
  %882 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %883 = load %struct.bna_rx_config*, %struct.bna_rx_config** %10, align 8
  %884 = load %struct.bna_res_info*, %struct.bna_res_info** %12, align 8
  %885 = call i32 @bna_rxf_init(i32* %881, %struct.bna_rx* %882, %struct.bna_rx_config* %883, %struct.bna_res_info* %884)
  %886 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %887 = load i32, i32* @bna_rx_sm_stopped, align 4
  %888 = call i32 @bfa_fsm_set_state(%struct.bna_rx* %886, i32 %887)
  %889 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  %890 = getelementptr inbounds %struct.bna_rx, %struct.bna_rx* %889, i32 0, i32 2
  %891 = load i32, i32* %890, align 8
  %892 = call i32 @BIT(i32 %891)
  %893 = load %struct.bna_rx_mod*, %struct.bna_rx_mod** %14, align 8
  %894 = getelementptr inbounds %struct.bna_rx_mod, %struct.bna_rx_mod* %893, i32 0, i32 1
  %895 = load i32, i32* %894, align 4
  %896 = or i32 %895, %892
  store i32 %896, i32* %894, align 4
  %897 = load %struct.bna_rx*, %struct.bna_rx** %15, align 8
  store %struct.bna_rx* %897, %struct.bna_rx** %7, align 8
  br label %898

898:                                              ; preds = %873, %47
  %899 = load %struct.bna_rx*, %struct.bna_rx** %7, align 8
  ret %struct.bna_rx* %899
}

declare dso_local i32 @bna_rx_res_check(%struct.bna_rx_mod*, %struct.bna_rx_config*) #1

declare dso_local %struct.bna_rx* @bna_rx_get(%struct.bna_rx_mod*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local %struct.bna_rxp* @bna_rxp_get(%struct.bna_rx_mod*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local %struct.bna_rxq* @bna_rxq_get(%struct.bna_rx_mod*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @bna_rxp_add_rxqs(%struct.bna_rxp*, %struct.bna_rxq*, %struct.bna_rxq*) #1

declare dso_local i32 @bna_rxq_qpt_setup(%struct.bna_rxq*, %struct.bna_rxp*, i64, i64, %struct.bna_mem_descr*, %struct.bna_mem_descr*, %struct.bna_mem_descr*) #1

declare dso_local i64 @roundup_pow_of_two(i64) #1

declare dso_local i32 @bna_rxp_cqpt_setup(%struct.bna_rxp*, i64, i64, %struct.bna_mem_descr*, %struct.bna_mem_descr*, %struct.bna_mem_descr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bna_rxf_init(i32*, %struct.bna_rx*, %struct.bna_rx_config*, %struct.bna_res_info*) #1

declare dso_local i32 @bfa_fsm_set_state(%struct.bna_rx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
