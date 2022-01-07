; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_flowring_create_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_msgbuf_flowring_create_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_msgbuf = type { i64*, i32, %struct.brcmf_commonring**, i32*, %struct.brcmf_pub* }
%struct.brcmf_commonring = type { i32 }
%struct.brcmf_pub = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.brcmf_msgbuf_work_item = type { i64, i32, i32, i32 }
%struct.msgbuf_tx_flowring_create_req = type { i32, i8*, i8*, %struct.TYPE_6__, i32, i32, i8*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_5__ = type { i64, i32, i32 }

@BRCMF_H2D_TXFLOWRING_MAX_ITEM = common dso_local global i64 0, align 8
@BRCMF_H2D_TXFLOWRING_ITEMSIZE = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"dma_alloc_coherent failed\0A\00", align 1
@BRCMF_FLOWRING_INVALID_ID = common dso_local global i64 0, align 8
@BRCMF_H2D_MSGRING_CONTROL_SUBMIT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"Failed to reserve space in commonring\0A\00", align 1
@MSGBUF_TYPE_FLOW_RING_CREATE = common dso_local global i32 0, align 4
@BRCMF_H2D_MSGRING_FLOWRING_IDSTART = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@MSGBUF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [65 x i8] c"Send Flow Create Req flow ID %d for peer %pM prio %d ifindex %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Failed to write commonring\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcmf_msgbuf*, %struct.brcmf_msgbuf_work_item*)* @brcmf_msgbuf_flowring_create_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @brcmf_msgbuf_flowring_create_worker(%struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf_work_item* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.brcmf_msgbuf*, align 8
  %5 = alloca %struct.brcmf_msgbuf_work_item*, align 8
  %6 = alloca %struct.brcmf_pub*, align 8
  %7 = alloca %struct.msgbuf_tx_flowring_create_req*, align 8
  %8 = alloca %struct.brcmf_commonring*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.brcmf_msgbuf* %0, %struct.brcmf_msgbuf** %4, align 8
  store %struct.brcmf_msgbuf_work_item* %1, %struct.brcmf_msgbuf_work_item** %5, align 8
  %15 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %16 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %15, i32 0, i32 4
  %17 = load %struct.brcmf_pub*, %struct.brcmf_pub** %16, align 8
  store %struct.brcmf_pub* %17, %struct.brcmf_pub** %6, align 8
  %18 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %5, align 8
  %19 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* @BRCMF_H2D_TXFLOWRING_MAX_ITEM, align 8
  %22 = load i64, i64* @BRCMF_H2D_TXFLOWRING_ITEMSIZE, align 8
  %23 = mul i64 %21, %22
  store i64 %23, i64* %12, align 8
  %24 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %25 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %24, i32 0, i32 4
  %26 = load %struct.brcmf_pub*, %struct.brcmf_pub** %25, align 8
  %27 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %12, align 8
  %32 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %33 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @dma_alloc_coherent(i32 %30, i64 %31, i64* %36, i32 %37)
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %2
  %42 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %43 = call i32 @bphy_err(%struct.brcmf_pub* %42, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %44 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %45 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = call i32 @brcmf_flowring_delete(i32 %46, i64 %47)
  %49 = load i64, i64* @BRCMF_FLOWRING_INVALID_ID, align 8
  store i64 %49, i64* %3, align 8
  br label %180

50:                                               ; preds = %2
  %51 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %52 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %10, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* @BRCMF_H2D_TXFLOWRING_MAX_ITEM, align 8
  %58 = load i64, i64* @BRCMF_H2D_TXFLOWRING_ITEMSIZE, align 8
  %59 = load i8*, i8** %11, align 8
  %60 = call i32 @brcmf_commonring_config(i32 %56, i64 %57, i64 %58, i8* %59)
  %61 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %62 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %61, i32 0, i32 2
  %63 = load %struct.brcmf_commonring**, %struct.brcmf_commonring*** %62, align 8
  %64 = load i64, i64* @BRCMF_H2D_MSGRING_CONTROL_SUBMIT, align 8
  %65 = getelementptr inbounds %struct.brcmf_commonring*, %struct.brcmf_commonring** %63, i64 %64
  %66 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %65, align 8
  store %struct.brcmf_commonring* %66, %struct.brcmf_commonring** %8, align 8
  %67 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %8, align 8
  %68 = call i32 @brcmf_commonring_lock(%struct.brcmf_commonring* %67)
  %69 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %8, align 8
  %70 = call i8* @brcmf_commonring_reserve_for_write(%struct.brcmf_commonring* %69)
  store i8* %70, i8** %9, align 8
  %71 = load i8*, i8** %9, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %50
  %74 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %75 = call i32 @bphy_err(%struct.brcmf_pub* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %8, align 8
  %77 = call i32 @brcmf_commonring_unlock(%struct.brcmf_commonring* %76)
  %78 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %79 = load i64, i64* %10, align 8
  %80 = call i32 @brcmf_msgbuf_remove_flowring(%struct.brcmf_msgbuf* %78, i64 %79)
  %81 = load i64, i64* @BRCMF_FLOWRING_INVALID_ID, align 8
  store i64 %81, i64* %3, align 8
  br label %180

82:                                               ; preds = %50
  %83 = load i8*, i8** %9, align 8
  %84 = bitcast i8* %83 to %struct.msgbuf_tx_flowring_create_req*
  store %struct.msgbuf_tx_flowring_create_req* %84, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %85 = load i32, i32* @MSGBUF_TYPE_FLOW_RING_CREATE, align 4
  %86 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %87 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %86, i32 0, i32 7
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  store i32 %85, i32* %88, align 4
  %89 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %5, align 8
  %90 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %93 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %92, i32 0, i32 7
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i32 %91, i32* %94, align 8
  %95 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %96 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %95, i32 0, i32 7
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i64 0, i64* %97, align 8
  %98 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %99 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @brcmf_flowring_tid(i32 %100, i64 %101)
  %103 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %104 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load i64, i64* %10, align 8
  %106 = load i64, i64* @BRCMF_H2D_MSGRING_FLOWRING_IDSTART, align 8
  %107 = add i64 %105, %106
  %108 = call i8* @cpu_to_le16(i64 %107)
  %109 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %110 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %109, i32 0, i32 6
  store i8* %108, i8** %110, align 8
  %111 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %112 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %5, align 8
  %115 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %114, i32 0, i32 3
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ETH_ALEN, align 4
  %118 = call i32 @memcpy(i32 %113, i32 %116, i32 %117)
  %119 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %120 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %5, align 8
  %123 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* @ETH_ALEN, align 4
  %126 = call i32 @memcpy(i32 %121, i32 %124, i32 %125)
  %127 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %128 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %127, i32 0, i32 0
  %129 = load i64*, i64** %128, align 8
  %130 = load i64, i64* %10, align 8
  %131 = getelementptr inbounds i64, i64* %129, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %13, align 4
  %134 = load i32, i32* %13, align 4
  %135 = ashr i32 %134, 32
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %138 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %137, i32 0, i32 3
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  store i8* %136, i8** %139, align 8
  %140 = load i32, i32* %13, align 4
  %141 = call i8* @cpu_to_le32(i32 %140)
  %142 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %143 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 0
  store i8* %141, i8** %144, align 8
  %145 = load i64, i64* @BRCMF_H2D_TXFLOWRING_MAX_ITEM, align 8
  %146 = call i8* @cpu_to_le16(i64 %145)
  %147 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %148 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load i64, i64* @BRCMF_H2D_TXFLOWRING_ITEMSIZE, align 8
  %150 = call i8* @cpu_to_le16(i64 %149)
  %151 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %152 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %151, i32 0, i32 1
  store i8* %150, i8** %152, align 8
  %153 = load i32, i32* @MSGBUF, align 4
  %154 = load i64, i64* %10, align 8
  %155 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %5, align 8
  %156 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.msgbuf_tx_flowring_create_req*, %struct.msgbuf_tx_flowring_create_req** %7, align 8
  %159 = getelementptr inbounds %struct.msgbuf_tx_flowring_create_req, %struct.msgbuf_tx_flowring_create_req* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.brcmf_msgbuf_work_item*, %struct.brcmf_msgbuf_work_item** %5, align 8
  %162 = getelementptr inbounds %struct.brcmf_msgbuf_work_item, %struct.brcmf_msgbuf_work_item* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @brcmf_dbg(i32 %153, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %154, i32 %157, i32 %160, i32 %163)
  %165 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %8, align 8
  %166 = call i32 @brcmf_commonring_write_complete(%struct.brcmf_commonring* %165)
  store i32 %166, i32* %14, align 4
  %167 = load %struct.brcmf_commonring*, %struct.brcmf_commonring** %8, align 8
  %168 = call i32 @brcmf_commonring_unlock(%struct.brcmf_commonring* %167)
  %169 = load i32, i32* %14, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %178

171:                                              ; preds = %82
  %172 = load %struct.brcmf_pub*, %struct.brcmf_pub** %6, align 8
  %173 = call i32 @bphy_err(%struct.brcmf_pub* %172, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %174 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %4, align 8
  %175 = load i64, i64* %10, align 8
  %176 = call i32 @brcmf_msgbuf_remove_flowring(%struct.brcmf_msgbuf* %174, i64 %175)
  %177 = load i64, i64* @BRCMF_FLOWRING_INVALID_ID, align 8
  store i64 %177, i64* %3, align 8
  br label %180

178:                                              ; preds = %82
  %179 = load i64, i64* %10, align 8
  store i64 %179, i64* %3, align 8
  br label %180

180:                                              ; preds = %178, %171, %73, %41
  %181 = load i64, i64* %3, align 8
  ret i64 %181
}

declare dso_local i8* @dma_alloc_coherent(i32, i64, i64*, i32) #1

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*) #1

declare dso_local i32 @brcmf_flowring_delete(i32, i64) #1

declare dso_local i32 @brcmf_commonring_config(i32, i64, i64, i8*) #1

declare dso_local i32 @brcmf_commonring_lock(%struct.brcmf_commonring*) #1

declare dso_local i8* @brcmf_commonring_reserve_for_write(%struct.brcmf_commonring*) #1

declare dso_local i32 @brcmf_commonring_unlock(%struct.brcmf_commonring*) #1

declare dso_local i32 @brcmf_msgbuf_remove_flowring(%struct.brcmf_msgbuf*, i64) #1

declare dso_local i32 @brcmf_flowring_tid(i32, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @brcmf_commonring_write_complete(%struct.brcmf_commonring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
