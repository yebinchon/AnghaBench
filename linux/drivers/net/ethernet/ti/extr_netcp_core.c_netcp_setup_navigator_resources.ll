; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_setup_navigator_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_core.c_netcp_setup_navigator_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.netcp_intf = type { i8*, i32, i32, %struct.TYPE_6__*, i8**, i8*, i64*, i8*, i8*, i8*, i8*, i32, i32, i8*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.knav_queue_notify_config = type { %struct.netcp_intf*, i32 }
%struct.knav_dma_cfg = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i8**, i32, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"rx-pool-%s\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Couldn't create rx pool\0A\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"tx-pool-%s\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Couldn't create tx pool\0A\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"tx-compl-%s\00", align 1
@netcp_tx_notify = common dso_local global i32 0, align 4
@KNAV_QUEUE_SET_NOTIFIER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [12 x i8] c"rx-compl-%s\00", align 1
@netcp_rx_notify = common dso_local global i32 0, align 4
@KNAV_DMA_FDQ_PER_CHAN = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [13 x i8] c"rx-fdq-%s-%d\00", align 1
@KNAV_QUEUE_GP = common dso_local global i8* null, align 8
@DMA_DEV_TO_MEM = common dso_local global i32 0, align 4
@DMA_DROP = common dso_local global i32 0, align 4
@DMA_DESC_HOST = common dso_local global i32 0, align 4
@NETCP_SOP_OFFSET = common dso_local global i32 0, align 4
@DMA_THRESH_NONE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"failed opening rx chan(%s\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"opened RX channel: %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @netcp_setup_navigator_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netcp_setup_navigator_resources(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.netcp_intf*, align 8
  %5 = alloca %struct.knav_queue_notify_config, align 8
  %6 = alloca %struct.knav_dma_cfg, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [16 x i32], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.netcp_intf* @netdev_priv(%struct.net_device* %11)
  store %struct.netcp_intf* %12, %struct.netcp_intf** %4, align 8
  store i8* null, i8** %7, align 8
  %13 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %14 = load %struct.net_device*, %struct.net_device** %3, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 (i32*, i32, i8*, i8*, ...) @snprintf(i32* %13, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %19 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %20 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %19, i32 0, i32 15
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %23 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @knav_pool_create(i32* %18, i32 %21, i32 %24)
  %26 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %27 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %26, i32 0, i32 13
  store i8* %25, i8** %27, align 8
  %28 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %29 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %28, i32 0, i32 13
  %30 = load i8*, i8** %29, align 8
  %31 = call i64 @IS_ERR_OR_NULL(i8* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %42

33:                                               ; preds = %1
  %34 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %35 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %39 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %38, i32 0, i32 13
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 @PTR_ERR(i8* %40)
  store i32 %41, i32* %9, align 4
  br label %326

42:                                               ; preds = %1
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 (i32*, i32, i8*, i8*, ...) @snprintf(i32* %43, i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i8* %46)
  %48 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %49 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %50 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %49, i32 0, i32 12
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %53 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %52, i32 0, i32 11
  %54 = load i32, i32* %53, align 8
  %55 = call i8* @knav_pool_create(i32* %48, i32 %51, i32 %54)
  %56 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %57 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %56, i32 0, i32 10
  store i8* %55, i8** %57, align 8
  %58 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %59 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %58, i32 0, i32 10
  %60 = load i8*, i8** %59, align 8
  %61 = call i64 @IS_ERR_OR_NULL(i8* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %42
  %64 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %65 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 (i32, i8*, ...) @dev_err(i32 %66, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %68 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %69 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %68, i32 0, i32 10
  %70 = load i8*, i8** %69, align 8
  %71 = call i32 @PTR_ERR(i8* %70)
  store i32 %71, i32* %9, align 4
  br label %326

72:                                               ; preds = %42
  %73 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %74 = load %struct.net_device*, %struct.net_device** %3, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 0
  %76 = load i8*, i8** %75, align 8
  %77 = call i32 (i32*, i32, i8*, i8*, ...) @snprintf(i32* %73, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), i8* %76)
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %79 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %80 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %79, i32 0, i32 9
  %81 = load i8*, i8** %80, align 8
  %82 = call i8* @knav_queue_open(i32* %78, i8* %81, i32 0)
  %83 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %84 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %83, i32 0, i32 8
  store i8* %82, i8** %84, align 8
  %85 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %86 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %85, i32 0, i32 8
  %87 = load i8*, i8** %86, align 8
  %88 = call i64 @IS_ERR(i8* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %95

90:                                               ; preds = %72
  %91 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %92 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %91, i32 0, i32 8
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @PTR_ERR(i8* %93)
  store i32 %94, i32* %9, align 4
  br label %326

95:                                               ; preds = %72
  %96 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %97 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %96, i32 0, i32 8
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @knav_queue_get_id(i8* %98)
  %100 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %101 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %100, i32 0, i32 9
  store i8* %99, i8** %101, align 8
  %102 = load i32, i32* @netcp_tx_notify, align 4
  %103 = getelementptr inbounds %struct.knav_queue_notify_config, %struct.knav_queue_notify_config* %5, i32 0, i32 1
  store i32 %102, i32* %103, align 8
  %104 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %105 = getelementptr inbounds %struct.knav_queue_notify_config, %struct.knav_queue_notify_config* %5, i32 0, i32 0
  store %struct.netcp_intf* %104, %struct.netcp_intf** %105, align 8
  %106 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %107 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %106, i32 0, i32 8
  %108 = load i8*, i8** %107, align 8
  %109 = load i32, i32* @KNAV_QUEUE_SET_NOTIFIER, align 4
  %110 = ptrtoint %struct.knav_queue_notify_config* %5 to i64
  %111 = call i32 @knav_queue_device_control(i8* %108, i32 %109, i64 %110)
  store i32 %111, i32* %9, align 4
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %95
  br label %326

115:                                              ; preds = %95
  %116 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %117 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %116, i32 0, i32 8
  %118 = load i8*, i8** %117, align 8
  %119 = call i32 @knav_queue_disable_notify(i8* %118)
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %121 = load %struct.net_device*, %struct.net_device** %3, align 8
  %122 = getelementptr inbounds %struct.net_device, %struct.net_device* %121, i32 0, i32 0
  %123 = load i8*, i8** %122, align 8
  %124 = call i32 (i32*, i32, i8*, i8*, ...) @snprintf(i32* %120, i32 64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %123)
  %125 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %126 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %127 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %126, i32 0, i32 5
  %128 = load i8*, i8** %127, align 8
  %129 = call i8* @knav_queue_open(i32* %125, i8* %128, i32 0)
  %130 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %131 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %130, i32 0, i32 7
  store i8* %129, i8** %131, align 8
  %132 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %133 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %132, i32 0, i32 7
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @IS_ERR(i8* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %115
  %138 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %139 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %138, i32 0, i32 7
  %140 = load i8*, i8** %139, align 8
  %141 = call i32 @PTR_ERR(i8* %140)
  store i32 %141, i32* %9, align 4
  br label %326

142:                                              ; preds = %115
  %143 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %144 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %143, i32 0, i32 7
  %145 = load i8*, i8** %144, align 8
  %146 = call i8* @knav_queue_get_id(i8* %145)
  %147 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %148 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %147, i32 0, i32 5
  store i8* %146, i8** %148, align 8
  %149 = load i32, i32* @netcp_rx_notify, align 4
  %150 = getelementptr inbounds %struct.knav_queue_notify_config, %struct.knav_queue_notify_config* %5, i32 0, i32 1
  store i32 %149, i32* %150, align 8
  %151 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %152 = getelementptr inbounds %struct.knav_queue_notify_config, %struct.knav_queue_notify_config* %5, i32 0, i32 0
  store %struct.netcp_intf* %151, %struct.netcp_intf** %152, align 8
  %153 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %154 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %153, i32 0, i32 7
  %155 = load i8*, i8** %154, align 8
  %156 = load i32, i32* @KNAV_QUEUE_SET_NOTIFIER, align 4
  %157 = ptrtoint %struct.knav_queue_notify_config* %5 to i64
  %158 = call i32 @knav_queue_device_control(i8* %155, i32 %156, i64 %157)
  store i32 %158, i32* %9, align 4
  %159 = load i32, i32* %9, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %142
  br label %326

162:                                              ; preds = %142
  %163 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %164 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %163, i32 0, i32 7
  %165 = load i8*, i8** %164, align 8
  %166 = call i32 @knav_queue_disable_notify(i8* %165)
  store i32 0, i32* %10, align 4
  br label %167

167:                                              ; preds = %217, %162
  %168 = load i32, i32* %10, align 4
  %169 = load i32, i32* @KNAV_DMA_FDQ_PER_CHAN, align 4
  %170 = icmp slt i32 %168, %169
  br i1 %170, label %171, label %180

171:                                              ; preds = %167
  %172 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %173 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %172, i32 0, i32 6
  %174 = load i64*, i64** %173, align 8
  %175 = load i32, i32* %10, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i64, i64* %174, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = icmp ne i64 %178, 0
  br label %180

180:                                              ; preds = %171, %167
  %181 = phi i1 [ false, %167 ], [ %179, %171 ]
  br i1 %181, label %182, label %220

182:                                              ; preds = %180
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %184 = load %struct.net_device*, %struct.net_device** %3, align 8
  %185 = getelementptr inbounds %struct.net_device, %struct.net_device* %184, i32 0, i32 0
  %186 = load i8*, i8** %185, align 8
  %187 = load i32, i32* %10, align 4
  %188 = call i32 (i32*, i32, i8*, i8*, ...) @snprintf(i32* %183, i32 64, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i8* %186, i32 %187)
  %189 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %190 = load i8*, i8** @KNAV_QUEUE_GP, align 8
  %191 = call i8* @knav_queue_open(i32* %189, i8* %190, i32 0)
  %192 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %193 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %192, i32 0, i32 4
  %194 = load i8**, i8*** %193, align 8
  %195 = load i32, i32* %10, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds i8*, i8** %194, i64 %196
  store i8* %191, i8** %197, align 8
  %198 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %199 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %198, i32 0, i32 4
  %200 = load i8**, i8*** %199, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i8*, i8** %200, i64 %202
  %204 = load i8*, i8** %203, align 8
  %205 = call i64 @IS_ERR(i8* %204)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %216

207:                                              ; preds = %182
  %208 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %209 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %208, i32 0, i32 4
  %210 = load i8**, i8*** %209, align 8
  %211 = load i32, i32* %10, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  %214 = load i8*, i8** %213, align 8
  %215 = call i32 @PTR_ERR(i8* %214)
  store i32 %215, i32* %9, align 4
  br label %326

216:                                              ; preds = %182
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %10, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %10, align 4
  br label %167

220:                                              ; preds = %180
  %221 = call i32 @memset(%struct.knav_dma_cfg* %6, i32 0, i32 64)
  %222 = load i32, i32* @DMA_DEV_TO_MEM, align 4
  %223 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %6, i32 0, i32 1
  store i32 %222, i32* %223, align 8
  %224 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %6, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 0
  %226 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %225, i32 0, i32 0
  store i32 1, i32* %226, align 8
  %227 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %6, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 1
  store i32 1, i32* %229, align 4
  %230 = load i32, i32* @DMA_DROP, align 4
  %231 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %6, i32 0, i32 0
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %232, i32 0, i32 8
  store i32 %230, i32* %233, align 8
  %234 = load i32, i32* @DMA_DESC_HOST, align 4
  %235 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %6, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 7
  store i32 %234, i32* %237, align 4
  %238 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %6, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %239, i32 0, i32 2
  store i32 0, i32* %240, align 8
  %241 = load i32, i32* @NETCP_SOP_OFFSET, align 4
  %242 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %6, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %242, i32 0, i32 0
  %244 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %243, i32 0, i32 6
  store i32 %241, i32* %244, align 8
  %245 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %246 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %245, i32 0, i32 5
  %247 = load i8*, i8** %246, align 8
  %248 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %6, i32 0, i32 0
  %249 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %248, i32 0, i32 0
  %250 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %249, i32 0, i32 5
  store i8* %247, i8** %250, align 8
  %251 = load i32, i32* @DMA_THRESH_NONE, align 4
  %252 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %6, i32 0, i32 0
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 4
  store i32 %251, i32* %254, align 8
  store i32 0, i32* %10, align 4
  br label %255

255:                                              ; preds = %286, %220
  %256 = load i32, i32* %10, align 4
  %257 = load i32, i32* @KNAV_DMA_FDQ_PER_CHAN, align 4
  %258 = icmp slt i32 %256, %257
  br i1 %258, label %259, label %289

259:                                              ; preds = %255
  %260 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %261 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %260, i32 0, i32 4
  %262 = load i8**, i8*** %261, align 8
  %263 = load i32, i32* %10, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i8*, i8** %262, i64 %264
  %266 = load i8*, i8** %265, align 8
  %267 = icmp ne i8* %266, null
  br i1 %267, label %268, label %277

268:                                              ; preds = %259
  %269 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %270 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %269, i32 0, i32 4
  %271 = load i8**, i8*** %270, align 8
  %272 = load i32, i32* %10, align 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i8*, i8** %271, i64 %273
  %275 = load i8*, i8** %274, align 8
  %276 = call i8* @knav_queue_get_id(i8* %275)
  store i8* %276, i8** %7, align 8
  br label %277

277:                                              ; preds = %268, %259
  %278 = load i8*, i8** %7, align 8
  %279 = getelementptr inbounds %struct.knav_dma_cfg, %struct.knav_dma_cfg* %6, i32 0, i32 0
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 3
  %282 = load i8**, i8*** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8*, i8** %282, i64 %284
  store i8* %278, i8** %285, align 8
  br label %286

286:                                              ; preds = %277
  %287 = load i32, i32* %10, align 4
  %288 = add nsw i32 %287, 1
  store i32 %288, i32* %10, align 4
  br label %255

289:                                              ; preds = %255
  %290 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %291 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %290, i32 0, i32 3
  %292 = load %struct.TYPE_6__*, %struct.TYPE_6__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %296 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = call i8* @knav_dma_open_channel(i32 %294, i32 %297, %struct.knav_dma_cfg* %6)
  %299 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %300 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %299, i32 0, i32 0
  store i8* %298, i8** %300, align 8
  %301 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %302 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %301, i32 0, i32 0
  %303 = load i8*, i8** %302, align 8
  %304 = call i64 @IS_ERR(i8* %303)
  %305 = icmp ne i64 %304, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %289
  %307 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %308 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 8
  %310 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %311 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %310, i32 0, i32 2
  %312 = load i32, i32* %311, align 4
  %313 = call i32 (i32, i8*, ...) @dev_err(i32 %309, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %312)
  %314 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %315 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %314, i32 0, i32 0
  %316 = load i8*, i8** %315, align 8
  %317 = call i32 @PTR_ERR(i8* %316)
  store i32 %317, i32* %9, align 4
  br label %326

318:                                              ; preds = %289
  %319 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %320 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %323 = getelementptr inbounds %struct.netcp_intf, %struct.netcp_intf* %322, i32 0, i32 0
  %324 = load i8*, i8** %323, align 8
  %325 = call i32 @dev_dbg(i32 %321, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i8* %324)
  store i32 0, i32* %2, align 4
  br label %330

326:                                              ; preds = %306, %207, %161, %137, %114, %90, %63, %33
  %327 = load %struct.netcp_intf*, %struct.netcp_intf** %4, align 8
  %328 = call i32 @netcp_free_navigator_resources(%struct.netcp_intf* %327)
  %329 = load i32, i32* %9, align 4
  store i32 %329, i32* %2, align 4
  br label %330

330:                                              ; preds = %326, %318
  %331 = load i32, i32* %2, align 4
  ret i32 %331
}

declare dso_local %struct.netcp_intf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @snprintf(i32*, i32, i8*, i8*, ...) #1

declare dso_local i8* @knav_pool_create(i32*, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(i8*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @knav_queue_open(i32*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i8* @knav_queue_get_id(i8*) #1

declare dso_local i32 @knav_queue_device_control(i8*, i32, i64) #1

declare dso_local i32 @knav_queue_disable_notify(i8*) #1

declare dso_local i32 @memset(%struct.knav_dma_cfg*, i32, i32) #1

declare dso_local i8* @knav_dma_open_channel(i32, i32, %struct.knav_dma_cfg*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @netcp_free_navigator_resources(%struct.netcp_intf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
