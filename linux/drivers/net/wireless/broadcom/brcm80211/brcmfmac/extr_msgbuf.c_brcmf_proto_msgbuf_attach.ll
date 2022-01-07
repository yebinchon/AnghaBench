; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_proto_msgbuf_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_msgbuf.c_brcmf_proto_msgbuf_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_pub = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, %struct.brcmf_bus_msgbuf* }
%struct.brcmf_bus_msgbuf = type { i64, i64, i32, i64, i64 }
%struct.TYPE_3__ = type { %struct.brcmf_msgbuf*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.brcmf_msgbuf = type { i32, i32, i64, i64, i64, i64, i64, %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf*, i32, i32, i32, i32, i32, i32, i8*, i8*, i32, %struct.brcmf_commonring**, %struct.brcmf_commonring**, i32, %struct.brcmf_pub*, i32, i32* }
%struct.brcmf_commonring = type { i32 }

@BRCMF_FLOWRING_HASHSIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"driver not configured for this many flowrings %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"msgbuf_txflow\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"workqueue creation failed\0A\00", align 1
@brcmf_msgbuf_txflow_worker = common dso_local global i32 0, align 4
@BRCMF_TX_IOCTL_MAX_MSG_SIZE = common dso_local global i32 0, align 4
@brcmf_msgbuf_hdrpull = common dso_local global i32 0, align 4
@brcmf_msgbuf_query_dcmd = common dso_local global i32 0, align 4
@brcmf_msgbuf_set_dcmd = common dso_local global i32 0, align 4
@brcmf_msgbuf_tx_queue_data = common dso_local global i32 0, align 4
@brcmf_msgbuf_configure_addr_mode = common dso_local global i32 0, align 4
@brcmf_msgbuf_delete_peer = common dso_local global i32 0, align 4
@brcmf_msgbuf_add_tdls_peer = common dso_local global i32 0, align 4
@brcmf_msgbuf_rxreorder = common dso_local global i32 0, align 4
@brcmf_msgbuf_debugfs_create = common dso_local global i32 0, align 4
@BRCMF_MSGBUF_MAX_IOCTLRESPBUF_POST = common dso_local global i32 0, align 4
@BRCMF_MSGBUF_MAX_EVENTBUF_POST = common dso_local global i32 0, align 4
@NR_TX_PKTIDS = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@NR_RX_PKTIDS = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@MSGBUF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [60 x i8] c"Feeding buffers, rx data %d, rx event %d, rx ioctl resp %d\0A\00", align 1
@brcmf_msgbuf_flowring_worker = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @brcmf_proto_msgbuf_attach(%struct.brcmf_pub* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.brcmf_pub*, align 8
  %4 = alloca %struct.brcmf_bus_msgbuf*, align 8
  %5 = alloca %struct.brcmf_msgbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.brcmf_pub* %0, %struct.brcmf_pub** %3, align 8
  %8 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %9 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %11, align 8
  store %struct.brcmf_bus_msgbuf* %12, %struct.brcmf_bus_msgbuf** %4, align 8
  %13 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %4, align 8
  %14 = getelementptr inbounds %struct.brcmf_bus_msgbuf, %struct.brcmf_bus_msgbuf* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BRCMF_FLOWRING_HASHSIZE, align 8
  %17 = icmp sge i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %20 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %4, align 8
  %21 = getelementptr inbounds %struct.brcmf_bus_msgbuf, %struct.brcmf_bus_msgbuf* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %19, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %22)
  %24 = load i64, i64* @BRCMF_FLOWRING_HASHSIZE, align 8
  %25 = sub nsw i64 %24, 1
  %26 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %4, align 8
  %27 = getelementptr inbounds %struct.brcmf_bus_msgbuf, %struct.brcmf_bus_msgbuf* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %28

28:                                               ; preds = %18, %1
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call i8* @kzalloc(i32 168, i32 %29)
  %31 = bitcast i8* %30 to %struct.brcmf_msgbuf*
  store %struct.brcmf_msgbuf* %31, %struct.brcmf_msgbuf** %5, align 8
  %32 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %33 = icmp ne %struct.brcmf_msgbuf* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %28
  br label %298

35:                                               ; preds = %28
  %36 = call i32* @create_singlethread_workqueue(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %37 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %38 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %37, i32 0, i32 24
  store i32* %36, i32** %38, align 8
  %39 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %40 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %39, i32 0, i32 24
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %35
  %44 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %45 = call i32 (%struct.brcmf_pub*, i8*, ...) @bphy_err(%struct.brcmf_pub* %44, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  br label %298

46:                                               ; preds = %35
  %47 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %48 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %47, i32 0, i32 23
  %49 = load i32, i32* @brcmf_msgbuf_txflow_worker, align 4
  %50 = call i32 @INIT_WORK(i32* %48, i32 %49)
  %51 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %4, align 8
  %52 = getelementptr inbounds %struct.brcmf_bus_msgbuf, %struct.brcmf_bus_msgbuf* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @BITS_TO_LONGS(i64 %53)
  store i32 %54, i32* %7, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 8
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call i8* @kzalloc(i32 %59, i32 %60)
  %62 = bitcast i8* %61 to %struct.brcmf_msgbuf*
  %63 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %64 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %63, i32 0, i32 9
  store %struct.brcmf_msgbuf* %62, %struct.brcmf_msgbuf** %64, align 8
  %65 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %66 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %65, i32 0, i32 9
  %67 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %66, align 8
  %68 = icmp ne %struct.brcmf_msgbuf* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %46
  br label %298

70:                                               ; preds = %46
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @kzalloc(i32 %71, i32 %72)
  %74 = bitcast i8* %73 to %struct.brcmf_msgbuf*
  %75 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %76 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %75, i32 0, i32 8
  store %struct.brcmf_msgbuf* %74, %struct.brcmf_msgbuf** %76, align 8
  %77 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %78 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %77, i32 0, i32 8
  %79 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %78, align 8
  %80 = icmp ne %struct.brcmf_msgbuf* %79, null
  br i1 %80, label %82, label %81

81:                                               ; preds = %70
  br label %298

82:                                               ; preds = %70
  %83 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %84 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %85 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %84, i32 0, i32 22
  store %struct.brcmf_pub* %83, %struct.brcmf_pub** %85, align 8
  %86 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %87 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %86, i32 0, i32 0
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @BRCMF_TX_IOCTL_MAX_MSG_SIZE, align 4
  %92 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %93 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %92, i32 0, i32 5
  %94 = load i32, i32* @GFP_KERNEL, align 4
  %95 = call i64 @dma_alloc_coherent(i32 %90, i32 %91, i64* %93, i32 %94)
  %96 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %97 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %96, i32 0, i32 6
  store i64 %95, i64* %97, align 8
  %98 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %99 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %98, i32 0, i32 6
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %82
  br label %298

103:                                              ; preds = %82
  %104 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %105 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = trunc i64 %106 to i32
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = ashr i32 %108, 32
  %110 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %111 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* %6, align 4
  %113 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %114 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @brcmf_msgbuf_hdrpull, align 4
  %116 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %117 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %116, i32 0, i32 1
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 9
  store i32 %115, i32* %119, align 8
  %120 = load i32, i32* @brcmf_msgbuf_query_dcmd, align 4
  %121 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %122 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %121, i32 0, i32 1
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 8
  store i32 %120, i32* %124, align 4
  %125 = load i32, i32* @brcmf_msgbuf_set_dcmd, align 4
  %126 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %127 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %126, i32 0, i32 1
  %128 = load %struct.TYPE_3__*, %struct.TYPE_3__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %128, i32 0, i32 7
  store i32 %125, i32* %129, align 8
  %130 = load i32, i32* @brcmf_msgbuf_tx_queue_data, align 4
  %131 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %132 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %131, i32 0, i32 1
  %133 = load %struct.TYPE_3__*, %struct.TYPE_3__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 6
  store i32 %130, i32* %134, align 4
  %135 = load i32, i32* @brcmf_msgbuf_configure_addr_mode, align 4
  %136 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %137 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %136, i32 0, i32 1
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 5
  store i32 %135, i32* %139, align 8
  %140 = load i32, i32* @brcmf_msgbuf_delete_peer, align 4
  %141 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %142 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %141, i32 0, i32 1
  %143 = load %struct.TYPE_3__*, %struct.TYPE_3__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %143, i32 0, i32 4
  store i32 %140, i32* %144, align 4
  %145 = load i32, i32* @brcmf_msgbuf_add_tdls_peer, align 4
  %146 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %147 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %146, i32 0, i32 1
  %148 = load %struct.TYPE_3__*, %struct.TYPE_3__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  store i32 %145, i32* %149, align 8
  %150 = load i32, i32* @brcmf_msgbuf_rxreorder, align 4
  %151 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %152 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %151, i32 0, i32 1
  %153 = load %struct.TYPE_3__*, %struct.TYPE_3__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %153, i32 0, i32 2
  store i32 %150, i32* %154, align 4
  %155 = load i32, i32* @brcmf_msgbuf_debugfs_create, align 4
  %156 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %157 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %156, i32 0, i32 1
  %158 = load %struct.TYPE_3__*, %struct.TYPE_3__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  store i32 %155, i32* %159, align 8
  %160 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %161 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %162 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %161, i32 0, i32 1
  %163 = load %struct.TYPE_3__*, %struct.TYPE_3__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 0
  store %struct.brcmf_msgbuf* %160, %struct.brcmf_msgbuf** %164, align 8
  %165 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %166 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %165, i32 0, i32 21
  %167 = call i32 @init_waitqueue_head(i32* %166)
  %168 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %4, align 8
  %169 = getelementptr inbounds %struct.brcmf_bus_msgbuf, %struct.brcmf_bus_msgbuf* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = inttoptr i64 %170 to %struct.brcmf_commonring**
  %172 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %173 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %172, i32 0, i32 20
  store %struct.brcmf_commonring** %171, %struct.brcmf_commonring*** %173, align 8
  %174 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %4, align 8
  %175 = getelementptr inbounds %struct.brcmf_bus_msgbuf, %struct.brcmf_bus_msgbuf* %174, i32 0, i32 3
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to %struct.brcmf_commonring**
  %178 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %179 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %178, i32 0, i32 19
  store %struct.brcmf_commonring** %177, %struct.brcmf_commonring*** %179, align 8
  %180 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %4, align 8
  %181 = getelementptr inbounds %struct.brcmf_bus_msgbuf, %struct.brcmf_bus_msgbuf* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %184 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %183, i32 0, i32 2
  store i64 %182, i64* %184, align 8
  %185 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %186 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %185, i32 0, i32 2
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @GFP_KERNEL, align 4
  %189 = call %struct.brcmf_msgbuf* @kcalloc(i64 %187, i32 168, i32 %188)
  %190 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %191 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %190, i32 0, i32 7
  store %struct.brcmf_msgbuf* %189, %struct.brcmf_msgbuf** %191, align 8
  %192 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %193 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %192, i32 0, i32 7
  %194 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %193, align 8
  %195 = icmp ne %struct.brcmf_msgbuf* %194, null
  br i1 %195, label %197, label %196

196:                                              ; preds = %103
  br label %298

197:                                              ; preds = %103
  %198 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %4, align 8
  %199 = getelementptr inbounds %struct.brcmf_bus_msgbuf, %struct.brcmf_bus_msgbuf* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %202 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %201, i32 0, i32 18
  store i32 %200, i32* %202, align 8
  %203 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %4, align 8
  %204 = getelementptr inbounds %struct.brcmf_bus_msgbuf, %struct.brcmf_bus_msgbuf* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %207 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %206, i32 0, i32 3
  store i64 %205, i64* %207, align 8
  %208 = load i32, i32* @BRCMF_MSGBUF_MAX_IOCTLRESPBUF_POST, align 4
  %209 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %210 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %209, i32 0, i32 13
  store i32 %208, i32* %210, align 4
  %211 = load i32, i32* @BRCMF_MSGBUF_MAX_EVENTBUF_POST, align 4
  %212 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %213 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %212, i32 0, i32 14
  store i32 %211, i32* %213, align 8
  %214 = load i32, i32* @NR_TX_PKTIDS, align 4
  %215 = load i32, i32* @DMA_TO_DEVICE, align 4
  %216 = call i8* @brcmf_msgbuf_init_pktids(i32 %214, i32 %215)
  %217 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %218 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %217, i32 0, i32 17
  store i8* %216, i8** %218, align 8
  %219 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %220 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %219, i32 0, i32 17
  %221 = load i8*, i8** %220, align 8
  %222 = icmp ne i8* %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %197
  br label %298

224:                                              ; preds = %197
  %225 = load i32, i32* @NR_RX_PKTIDS, align 4
  %226 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %227 = call i8* @brcmf_msgbuf_init_pktids(i32 %225, i32 %226)
  %228 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %229 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %228, i32 0, i32 16
  store i8* %227, i8** %229, align 8
  %230 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %231 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %230, i32 0, i32 16
  %232 = load i8*, i8** %231, align 8
  %233 = icmp ne i8* %232, null
  br i1 %233, label %235, label %234

234:                                              ; preds = %224
  br label %298

235:                                              ; preds = %224
  %236 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %237 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %236, i32 0, i32 0
  %238 = load %struct.TYPE_4__*, %struct.TYPE_4__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.brcmf_bus_msgbuf*, %struct.brcmf_bus_msgbuf** %4, align 8
  %242 = getelementptr inbounds %struct.brcmf_bus_msgbuf, %struct.brcmf_bus_msgbuf* %241, i32 0, i32 0
  %243 = load i64, i64* %242, align 8
  %244 = call i32 @brcmf_flowring_attach(i32 %240, i64 %243)
  %245 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %246 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %245, i32 0, i32 15
  store i32 %244, i32* %246, align 4
  %247 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %248 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %247, i32 0, i32 15
  %249 = load i32, i32* %248, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %252, label %251

251:                                              ; preds = %235
  br label %298

252:                                              ; preds = %235
  %253 = load i32, i32* @MSGBUF, align 4
  %254 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %255 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %254, i32 0, i32 3
  %256 = load i64, i64* %255, align 8
  %257 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %258 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %257, i32 0, i32 14
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %261 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %260, i32 0, i32 13
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @brcmf_dbg(i32 %253, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %256, i32 %259, i32 %262)
  store i32 0, i32* %7, align 4
  br label %264

264:                                              ; preds = %280, %252
  %265 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %266 = call i32 @brcmf_msgbuf_rxbuf_data_fill(%struct.brcmf_msgbuf* %265)
  %267 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %268 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %267, i32 0, i32 3
  %269 = load i64, i64* %268, align 8
  %270 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %271 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %270, i32 0, i32 4
  %272 = load i64, i64* %271, align 8
  %273 = icmp ne i64 %269, %272
  br i1 %273, label %274, label %276

274:                                              ; preds = %264
  %275 = call i32 @msleep(i32 10)
  br label %277

276:                                              ; preds = %264
  br label %283

277:                                              ; preds = %274
  %278 = load i32, i32* %7, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %7, align 4
  br label %280

280:                                              ; preds = %277
  %281 = load i32, i32* %7, align 4
  %282 = icmp slt i32 %281, 10
  br i1 %282, label %264, label %283

283:                                              ; preds = %280, %276
  %284 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %285 = call i32 @brcmf_msgbuf_rxbuf_event_post(%struct.brcmf_msgbuf* %284)
  %286 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %287 = call i32 @brcmf_msgbuf_rxbuf_ioctlresp_post(%struct.brcmf_msgbuf* %286)
  %288 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %289 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %288, i32 0, i32 12
  %290 = load i32, i32* @brcmf_msgbuf_flowring_worker, align 4
  %291 = call i32 @INIT_WORK(i32* %289, i32 %290)
  %292 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %293 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %292, i32 0, i32 11
  %294 = call i32 @spin_lock_init(i32* %293)
  %295 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %296 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %295, i32 0, i32 10
  %297 = call i32 @INIT_LIST_HEAD(i32* %296)
  store i32 0, i32* %2, align 4
  br label %340

298:                                              ; preds = %251, %234, %223, %196, %102, %81, %69, %43, %34
  %299 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %300 = icmp ne %struct.brcmf_msgbuf* %299, null
  br i1 %300, label %301, label %337

301:                                              ; preds = %298
  %302 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %303 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %302, i32 0, i32 9
  %304 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %303, align 8
  %305 = call i32 @kfree(%struct.brcmf_msgbuf* %304)
  %306 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %307 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %306, i32 0, i32 8
  %308 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %307, align 8
  %309 = call i32 @kfree(%struct.brcmf_msgbuf* %308)
  %310 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %311 = call i32 @brcmf_msgbuf_release_pktids(%struct.brcmf_msgbuf* %310)
  %312 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %313 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %312, i32 0, i32 7
  %314 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %313, align 8
  %315 = call i32 @kfree(%struct.brcmf_msgbuf* %314)
  %316 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %317 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %316, i32 0, i32 6
  %318 = load i64, i64* %317, align 8
  %319 = icmp ne i64 %318, 0
  br i1 %319, label %320, label %334

320:                                              ; preds = %301
  %321 = load %struct.brcmf_pub*, %struct.brcmf_pub** %3, align 8
  %322 = getelementptr inbounds %struct.brcmf_pub, %struct.brcmf_pub* %321, i32 0, i32 0
  %323 = load %struct.TYPE_4__*, %struct.TYPE_4__** %322, align 8
  %324 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %323, i32 0, i32 0
  %325 = load i32, i32* %324, align 8
  %326 = load i32, i32* @BRCMF_TX_IOCTL_MAX_MSG_SIZE, align 4
  %327 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %328 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %327, i32 0, i32 6
  %329 = load i64, i64* %328, align 8
  %330 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %331 = getelementptr inbounds %struct.brcmf_msgbuf, %struct.brcmf_msgbuf* %330, i32 0, i32 5
  %332 = load i64, i64* %331, align 8
  %333 = call i32 @dma_free_coherent(i32 %325, i32 %326, i64 %329, i64 %332)
  br label %334

334:                                              ; preds = %320, %301
  %335 = load %struct.brcmf_msgbuf*, %struct.brcmf_msgbuf** %5, align 8
  %336 = call i32 @kfree(%struct.brcmf_msgbuf* %335)
  br label %337

337:                                              ; preds = %334, %298
  %338 = load i32, i32* @ENOMEM, align 4
  %339 = sub nsw i32 0, %338
  store i32 %339, i32* %2, align 4
  br label %340

340:                                              ; preds = %337, %283
  %341 = load i32, i32* %2, align 4
  ret i32 %341
}

declare dso_local i32 @bphy_err(%struct.brcmf_pub*, i8*, ...) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i64) #1

declare dso_local i64 @dma_alloc_coherent(i32, i32, i64*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local %struct.brcmf_msgbuf* @kcalloc(i64, i32, i32) #1

declare dso_local i8* @brcmf_msgbuf_init_pktids(i32, i32) #1

declare dso_local i32 @brcmf_flowring_attach(i32, i64) #1

declare dso_local i32 @brcmf_dbg(i32, i8*, i64, i32, i32) #1

declare dso_local i32 @brcmf_msgbuf_rxbuf_data_fill(%struct.brcmf_msgbuf*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @brcmf_msgbuf_rxbuf_event_post(%struct.brcmf_msgbuf*) #1

declare dso_local i32 @brcmf_msgbuf_rxbuf_ioctlresp_post(%struct.brcmf_msgbuf*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kfree(%struct.brcmf_msgbuf*) #1

declare dso_local i32 @brcmf_msgbuf_release_pktids(%struct.brcmf_msgbuf*) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
