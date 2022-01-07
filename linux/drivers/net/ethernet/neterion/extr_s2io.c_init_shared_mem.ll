; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_init_shared_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/neterion/extr_s2io.c_init_shared_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s2io_nic = type { i64, %struct.TYPE_17__*, %struct.mac_info, %struct.config_param, %struct.net_device* }
%struct.TYPE_17__ = type { i32 }
%struct.mac_info = type { i8*, i32, %struct.TYPE_16__*, i8*, %struct.ring_info*, %struct.fifo_info*, i8* }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64 }
%struct.ring_info = type { i32, i32, i32, %struct.buffAdd**, %struct.rx_block_info*, %struct.s2io_nic*, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.buffAdd = type { i8*, i8*, i8*, i8* }
%struct.rx_block_info = type { i8*, i8*, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32, i64, i64 }
%struct.TYPE_12__ = type { i32, i64, i64 }
%struct.fifo_info = type { i32, i32, %struct.TYPE_18__*, %struct.net_device*, i64, %struct.s2io_nic*, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i32, i64 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.config_param = type { i32, i32, i32, %struct.rx_ring_config*, %struct.tx_fifo_config* }
%struct.rx_ring_config = type { i32 }
%struct.tx_fifo_config = type { i32 }
%struct.net_device = type { i32 }
%struct.RxD_block = type { i64, i64 }

@MAX_AVAILABLE_TXDS = common dso_local global i32 0, align 4
@ERR_DBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Too many TxDs requested: %d, max supported: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [65 x i8] c"Fifo %d: Invalid length (%d) - Valid lengths are 2 through 8192\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@INFO_DBG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Malloc failed for list_info\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [38 x i8] c"pci_alloc_consistent failed for TxDL\0A\00", align 1
@INIT_DBG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [51 x i8] c"%s: Zero DMA address for TxDL. Virtual address %p\0A\00", align 1
@rxd_count = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [58 x i8] c"%s: Ring%d RxD count is not a multiple of RxDs per Block\0A\00", align 1
@FAILURE = common dso_local global i32 0, align 4
@RXD_MODE_1 = common dso_local global i64 0, align 8
@SIZE_OF_BLOCK = common dso_local global i32 0, align 4
@rxd_size = common dso_local global i32* null, align 8
@RXD_MODE_3B = common dso_local global i64 0, align 8
@BUF0_LEN = common dso_local global i64 0, align 8
@ALIGN_SIZE = common dso_local global i64 0, align 8
@BUF1_LEN = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [26 x i8] c"%s: Ring Mem PHY: 0x%llx\0A\00", align 1
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s2io_nic*)* @init_shared_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_shared_mem(%struct.s2io_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s2io_nic*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.RxD_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.buffAdd*, align 8
  %18 = alloca %struct.config_param*, align 8
  %19 = alloca %struct.mac_info*, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.tx_fifo_config*, align 8
  %22 = alloca %struct.tx_fifo_config*, align 8
  %23 = alloca %struct.fifo_info*, align 8
  %24 = alloca %struct.tx_fifo_config*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.fifo_info*, align 8
  %29 = alloca %struct.tx_fifo_config*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i8*, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.fifo_info*, align 8
  %35 = alloca %struct.tx_fifo_config*, align 8
  %36 = alloca %struct.rx_ring_config*, align 8
  %37 = alloca %struct.ring_info*, align 8
  %38 = alloca %struct.rx_ring_config*, align 8
  %39 = alloca %struct.ring_info*, align 8
  %40 = alloca %struct.rx_block_info*, align 8
  %41 = alloca i32, align 4
  %42 = alloca i32, align 4
  %43 = alloca %struct.rx_ring_config*, align 8
  %44 = alloca %struct.ring_info*, align 8
  %45 = alloca i32, align 4
  store %struct.s2io_nic* %0, %struct.s2io_nic** %3, align 8
  store %struct.RxD_block* null, %struct.RxD_block** %9, align 8
  %46 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %47 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %46, i32 0, i32 4
  %48 = load %struct.net_device*, %struct.net_device** %47, align 8
  store %struct.net_device* %48, %struct.net_device** %15, align 8
  %49 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %50 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %49, i32 0, i32 3
  store %struct.config_param* %50, %struct.config_param** %18, align 8
  %51 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %52 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %51, i32 0, i32 2
  store %struct.mac_info* %52, %struct.mac_info** %19, align 8
  store i64 0, i64* %20, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %53

53:                                               ; preds = %71, %1
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.config_param*, %struct.config_param** %18, align 8
  %56 = getelementptr inbounds %struct.config_param, %struct.config_param* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %74

59:                                               ; preds = %53
  %60 = load %struct.config_param*, %struct.config_param** %18, align 8
  %61 = getelementptr inbounds %struct.config_param, %struct.config_param* %60, i32 0, i32 4
  %62 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %62, i64 %64
  store %struct.tx_fifo_config* %65, %struct.tx_fifo_config** %21, align 8
  %66 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %21, align 8
  %67 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, %68
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %59
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %53

74:                                               ; preds = %53
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* @MAX_AVAILABLE_TXDS, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* @ERR_DBG, align 4
  %80 = load i32, i32* %4, align 4
  %81 = load i32, i32* @MAX_AVAILABLE_TXDS, align 4
  %82 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %79, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %80, i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %966

85:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %112, %85
  %87 = load i32, i32* %10, align 4
  %88 = load %struct.config_param*, %struct.config_param** %18, align 8
  %89 = getelementptr inbounds %struct.config_param, %struct.config_param* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp slt i32 %87, %90
  br i1 %91, label %92, label %115

92:                                               ; preds = %86
  %93 = load %struct.config_param*, %struct.config_param** %18, align 8
  %94 = getelementptr inbounds %struct.config_param, %struct.config_param* %93, i32 0, i32 4
  %95 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %94, align 8
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %95, i64 %97
  store %struct.tx_fifo_config* %98, %struct.tx_fifo_config** %22, align 8
  %99 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %22, align 8
  %100 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  store i32 %101, i32* %4, align 4
  %102 = load i32, i32* %4, align 4
  %103 = icmp slt i32 %102, 2
  br i1 %103, label %104, label %111

104:                                              ; preds = %92
  %105 = load i32, i32* @ERR_DBG, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* %4, align 4
  %108 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %105, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), i32 %106, i32 %107)
  %109 = load i32, i32* @EINVAL, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %2, align 4
  br label %966

111:                                              ; preds = %92
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %86

115:                                              ; preds = %86
  %116 = load %struct.config_param*, %struct.config_param** %18, align 8
  %117 = getelementptr inbounds %struct.config_param, %struct.config_param* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sext i32 %118 to i64
  %120 = mul i64 4, %119
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %13, align 4
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = load i32, i32* %13, align 4
  %124 = sdiv i32 %122, %123
  store i32 %124, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %125

125:                                              ; preds = %170, %115
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.config_param*, %struct.config_param** %18, align 8
  %128 = getelementptr inbounds %struct.config_param, %struct.config_param* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %173

131:                                              ; preds = %125
  %132 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %133 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %132, i32 0, i32 5
  %134 = load %struct.fifo_info*, %struct.fifo_info** %133, align 8
  %135 = load i32, i32* %10, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %134, i64 %136
  store %struct.fifo_info* %137, %struct.fifo_info** %23, align 8
  %138 = load %struct.config_param*, %struct.config_param** %18, align 8
  %139 = getelementptr inbounds %struct.config_param, %struct.config_param* %138, i32 0, i32 4
  %140 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %139, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %140, i64 %142
  store %struct.tx_fifo_config* %143, %struct.tx_fifo_config** %24, align 8
  %144 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %24, align 8
  %145 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  store i32 %146, i32* %25, align 4
  %147 = load i32, i32* %25, align 4
  %148 = sext i32 %147 to i64
  %149 = mul i64 %148, 4
  %150 = trunc i64 %149 to i32
  store i32 %150, i32* %26, align 4
  %151 = load i32, i32* %26, align 4
  %152 = load i32, i32* @GFP_KERNEL, align 4
  %153 = call %struct.TYPE_18__* @kzalloc(i32 %151, i32 %152)
  %154 = load %struct.fifo_info*, %struct.fifo_info** %23, align 8
  %155 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %154, i32 0, i32 2
  store %struct.TYPE_18__* %153, %struct.TYPE_18__** %155, align 8
  %156 = load %struct.fifo_info*, %struct.fifo_info** %23, align 8
  %157 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %156, i32 0, i32 2
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %157, align 8
  %159 = icmp ne %struct.TYPE_18__* %158, null
  br i1 %159, label %165, label %160

160:                                              ; preds = %131
  %161 = load i32, i32* @INFO_DBG, align 4
  %162 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %161, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %163 = load i32, i32* @ENOMEM, align 4
  %164 = sub nsw i32 0, %163
  store i32 %164, i32* %2, align 4
  br label %966

165:                                              ; preds = %131
  %166 = load i32, i32* %26, align 4
  %167 = sext i32 %166 to i64
  %168 = load i64, i64* %20, align 8
  %169 = add i64 %168, %167
  store i64 %169, i64* %20, align 8
  br label %170

170:                                              ; preds = %165
  %171 = load i32, i32* %10, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %10, align 4
  br label %125

173:                                              ; preds = %125
  store i32 0, i32* %10, align 4
  br label %174

174:                                              ; preds = %334, %173
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.config_param*, %struct.config_param** %18, align 8
  %177 = getelementptr inbounds %struct.config_param, %struct.config_param* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %175, %178
  br i1 %179, label %180, label %337

180:                                              ; preds = %174
  %181 = load %struct.config_param*, %struct.config_param** %18, align 8
  %182 = getelementptr inbounds %struct.config_param, %struct.config_param* %181, i32 0, i32 4
  %183 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %183, i64 %185
  %187 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %14, align 4
  %190 = call i32 @TXD_MEM_PAGE_CNT(i32 %188, i32 %189)
  store i32 %190, i32* %27, align 4
  %191 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %192 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %191, i32 0, i32 5
  %193 = load %struct.fifo_info*, %struct.fifo_info** %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %193, i64 %195
  store %struct.fifo_info* %196, %struct.fifo_info** %28, align 8
  %197 = load %struct.config_param*, %struct.config_param** %18, align 8
  %198 = getelementptr inbounds %struct.config_param, %struct.config_param* %197, i32 0, i32 4
  %199 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %199, i64 %201
  store %struct.tx_fifo_config* %202, %struct.tx_fifo_config** %29, align 8
  %203 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %204 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %203, i32 0, i32 7
  %205 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %204, i32 0, i32 1
  store i64 0, i64* %205, align 8
  %206 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %29, align 8
  %207 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = sub nsw i32 %208, 1
  %210 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %211 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %210, i32 0, i32 7
  %212 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %211, i32 0, i32 0
  store i32 %209, i32* %212, align 8
  %213 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %214 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %213, i32 0, i32 6
  %215 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %214, i32 0, i32 1
  store i64 0, i64* %215, align 8
  %216 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %29, align 8
  %217 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 4
  %219 = sub nsw i32 %218, 1
  %220 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %221 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %220, i32 0, i32 6
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  store i32 %219, i32* %222, align 8
  %223 = load i32, i32* %10, align 4
  %224 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %225 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %224, i32 0, i32 0
  store i32 %223, i32* %225, align 8
  %226 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %227 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %228 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %227, i32 0, i32 5
  store %struct.s2io_nic* %226, %struct.s2io_nic** %228, align 8
  %229 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %230 = add nsw i64 %229, 2
  %231 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %232 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %231, i32 0, i32 4
  store i64 %230, i64* %232, align 8
  %233 = load %struct.net_device*, %struct.net_device** %15, align 8
  %234 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %235 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %234, i32 0, i32 3
  store %struct.net_device* %233, %struct.net_device** %235, align 8
  store i32 0, i32* %11, align 4
  br label %236

236:                                              ; preds = %330, %180
  %237 = load i32, i32* %11, align 4
  %238 = load i32, i32* %27, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %333

240:                                              ; preds = %236
  store i32 0, i32* %30, align 4
  %241 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %242 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %241, i32 0, i32 1
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  %244 = load i32, i32* @PAGE_SIZE, align 4
  %245 = call i8* @pci_alloc_consistent(%struct.TYPE_17__* %243, i32 %244, i8** %31)
  store i8* %245, i8** %32, align 8
  %246 = load i8*, i8** %32, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %253, label %248

248:                                              ; preds = %240
  %249 = load i32, i32* @INFO_DBG, align 4
  %250 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %249, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %251 = load i32, i32* @ENOMEM, align 4
  %252 = sub nsw i32 0, %251
  store i32 %252, i32* %2, align 4
  br label %966

253:                                              ; preds = %240
  %254 = load i8*, i8** %31, align 8
  %255 = icmp ne i8* %254, null
  br i1 %255, label %283, label %256

256:                                              ; preds = %253
  %257 = load i8*, i8** %32, align 8
  %258 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %259 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %258, i32 0, i32 6
  store i8* %257, i8** %259, align 8
  %260 = load i32, i32* @INIT_DBG, align 4
  %261 = load %struct.net_device*, %struct.net_device** %15, align 8
  %262 = getelementptr inbounds %struct.net_device, %struct.net_device* %261, i32 0, i32 0
  %263 = load i32, i32* %262, align 4
  %264 = load i8*, i8** %32, align 8
  %265 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %260, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %263, i8* %264)
  %266 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %267 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %266, i32 0, i32 1
  %268 = load %struct.TYPE_17__*, %struct.TYPE_17__** %267, align 8
  %269 = load i32, i32* @PAGE_SIZE, align 4
  %270 = call i8* @pci_alloc_consistent(%struct.TYPE_17__* %268, i32 %269, i8** %31)
  store i8* %270, i8** %32, align 8
  %271 = load i8*, i8** %32, align 8
  %272 = icmp ne i8* %271, null
  br i1 %272, label %278, label %273

273:                                              ; preds = %256
  %274 = load i32, i32* @INFO_DBG, align 4
  %275 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %274, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  %276 = load i32, i32* @ENOMEM, align 4
  %277 = sub nsw i32 0, %276
  store i32 %277, i32* %2, align 4
  br label %966

278:                                              ; preds = %256
  %279 = load i32, i32* @PAGE_SIZE, align 4
  %280 = sext i32 %279 to i64
  %281 = load i64, i64* %20, align 8
  %282 = add i64 %281, %280
  store i64 %282, i64* %20, align 8
  br label %283

283:                                              ; preds = %278, %253
  br label %284

284:                                              ; preds = %300, %283
  %285 = load i32, i32* %30, align 4
  %286 = load i32, i32* %14, align 4
  %287 = icmp slt i32 %285, %286
  br i1 %287, label %288, label %329

288:                                              ; preds = %284
  %289 = load i32, i32* %11, align 4
  %290 = load i32, i32* %14, align 4
  %291 = mul nsw i32 %289, %290
  %292 = load i32, i32* %30, align 4
  %293 = add nsw i32 %291, %292
  store i32 %293, i32* %33, align 4
  %294 = load i32, i32* %33, align 4
  %295 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %29, align 8
  %296 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = icmp eq i32 %294, %297
  br i1 %298, label %299, label %300

299:                                              ; preds = %288
  br label %329

300:                                              ; preds = %288
  %301 = load i8*, i8** %32, align 8
  %302 = load i32, i32* %30, align 4
  %303 = load i32, i32* %13, align 4
  %304 = mul nsw i32 %302, %303
  %305 = sext i32 %304 to i64
  %306 = getelementptr i8, i8* %301, i64 %305
  %307 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %308 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %307, i32 0, i32 2
  %309 = load %struct.TYPE_18__*, %struct.TYPE_18__** %308, align 8
  %310 = load i32, i32* %33, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %309, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %312, i32 0, i32 1
  store i8* %306, i8** %313, align 8
  %314 = load i8*, i8** %31, align 8
  %315 = load i32, i32* %30, align 4
  %316 = load i32, i32* %13, align 4
  %317 = mul nsw i32 %315, %316
  %318 = sext i32 %317 to i64
  %319 = getelementptr i8, i8* %314, i64 %318
  %320 = load %struct.fifo_info*, %struct.fifo_info** %28, align 8
  %321 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %320, i32 0, i32 2
  %322 = load %struct.TYPE_18__*, %struct.TYPE_18__** %321, align 8
  %323 = load i32, i32* %33, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %322, i64 %324
  %326 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %325, i32 0, i32 0
  store i8* %319, i8** %326, align 8
  %327 = load i32, i32* %30, align 4
  %328 = add nsw i32 %327, 1
  store i32 %328, i32* %30, align 4
  br label %284

329:                                              ; preds = %299, %284
  br label %330

330:                                              ; preds = %329
  %331 = load i32, i32* %11, align 4
  %332 = add nsw i32 %331, 1
  store i32 %332, i32* %11, align 4
  br label %236

333:                                              ; preds = %236
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %10, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %10, align 4
  br label %174

337:                                              ; preds = %174
  store i32 0, i32* %10, align 4
  br label %338

338:                                              ; preds = %378, %337
  %339 = load i32, i32* %10, align 4
  %340 = load %struct.config_param*, %struct.config_param** %18, align 8
  %341 = getelementptr inbounds %struct.config_param, %struct.config_param* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 8
  %343 = icmp slt i32 %339, %342
  br i1 %343, label %344, label %381

344:                                              ; preds = %338
  %345 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %346 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %345, i32 0, i32 5
  %347 = load %struct.fifo_info*, %struct.fifo_info** %346, align 8
  %348 = load i32, i32* %10, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %347, i64 %349
  store %struct.fifo_info* %350, %struct.fifo_info** %34, align 8
  %351 = load %struct.config_param*, %struct.config_param** %18, align 8
  %352 = getelementptr inbounds %struct.config_param, %struct.config_param* %351, i32 0, i32 4
  %353 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %352, align 8
  %354 = load i32, i32* %10, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %353, i64 %355
  store %struct.tx_fifo_config* %356, %struct.tx_fifo_config** %35, align 8
  %357 = load %struct.tx_fifo_config*, %struct.tx_fifo_config** %35, align 8
  %358 = getelementptr inbounds %struct.tx_fifo_config, %struct.tx_fifo_config* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 4
  store i32 %359, i32* %4, align 4
  %360 = load i32, i32* %4, align 4
  %361 = load i32, i32* @GFP_KERNEL, align 4
  %362 = call i32 @kcalloc(i32 %360, i32 8, i32 %361)
  %363 = load %struct.fifo_info*, %struct.fifo_info** %34, align 8
  %364 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %363, i32 0, i32 1
  store i32 %362, i32* %364, align 4
  %365 = load %struct.fifo_info*, %struct.fifo_info** %34, align 8
  %366 = getelementptr inbounds %struct.fifo_info, %struct.fifo_info* %365, i32 0, i32 1
  %367 = load i32, i32* %366, align 4
  %368 = icmp ne i32 %367, 0
  br i1 %368, label %372, label %369

369:                                              ; preds = %344
  %370 = load i32, i32* @ENOMEM, align 4
  %371 = sub nsw i32 0, %370
  store i32 %371, i32* %2, align 4
  br label %966

372:                                              ; preds = %344
  %373 = load i32, i32* %4, align 4
  %374 = sext i32 %373 to i64
  %375 = mul i64 %374, 8
  %376 = load i64, i64* %20, align 8
  %377 = add i64 %376, %375
  store i64 %377, i64* %20, align 8
  br label %378

378:                                              ; preds = %372
  %379 = load i32, i32* %10, align 4
  %380 = add nsw i32 %379, 1
  store i32 %380, i32* %10, align 4
  br label %338

381:                                              ; preds = %338
  store i32 0, i32* %4, align 4
  store i32 0, i32* %10, align 4
  br label %382

382:                                              ; preds = %449, %381
  %383 = load i32, i32* %10, align 4
  %384 = load %struct.config_param*, %struct.config_param** %18, align 8
  %385 = getelementptr inbounds %struct.config_param, %struct.config_param* %384, i32 0, i32 2
  %386 = load i32, i32* %385, align 8
  %387 = icmp slt i32 %383, %386
  br i1 %387, label %388, label %452

388:                                              ; preds = %382
  %389 = load %struct.config_param*, %struct.config_param** %18, align 8
  %390 = getelementptr inbounds %struct.config_param, %struct.config_param* %389, i32 0, i32 3
  %391 = load %struct.rx_ring_config*, %struct.rx_ring_config** %390, align 8
  %392 = load i32, i32* %10, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %391, i64 %393
  store %struct.rx_ring_config* %394, %struct.rx_ring_config** %36, align 8
  %395 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %396 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %395, i32 0, i32 4
  %397 = load %struct.ring_info*, %struct.ring_info** %396, align 8
  %398 = load i32, i32* %10, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %397, i64 %399
  store %struct.ring_info* %400, %struct.ring_info** %37, align 8
  %401 = load %struct.rx_ring_config*, %struct.rx_ring_config** %36, align 8
  %402 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %401, i32 0, i32 0
  %403 = load i32, i32* %402, align 4
  %404 = load i32*, i32** @rxd_count, align 8
  %405 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %406 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %405, i32 0, i32 0
  %407 = load i64, i64* %406, align 8
  %408 = getelementptr inbounds i32, i32* %404, i64 %407
  %409 = load i32, i32* %408, align 4
  %410 = add nsw i32 %409, 1
  %411 = srem i32 %403, %410
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %421

413:                                              ; preds = %388
  %414 = load i32, i32* @ERR_DBG, align 4
  %415 = load %struct.net_device*, %struct.net_device** %15, align 8
  %416 = getelementptr inbounds %struct.net_device, %struct.net_device* %415, i32 0, i32 0
  %417 = load i32, i32* %416, align 4
  %418 = load i32, i32* %10, align 4
  %419 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %414, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.5, i64 0, i64 0), i32 %417, i32 %418)
  %420 = load i32, i32* @FAILURE, align 4
  store i32 %420, i32* %2, align 4
  br label %966

421:                                              ; preds = %388
  %422 = load %struct.rx_ring_config*, %struct.rx_ring_config** %36, align 8
  %423 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %422, i32 0, i32 0
  %424 = load i32, i32* %423, align 4
  %425 = load i32, i32* %4, align 4
  %426 = add nsw i32 %425, %424
  store i32 %426, i32* %4, align 4
  %427 = load %struct.rx_ring_config*, %struct.rx_ring_config** %36, align 8
  %428 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %427, i32 0, i32 0
  %429 = load i32, i32* %428, align 4
  %430 = load i32*, i32** @rxd_count, align 8
  %431 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %432 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %431, i32 0, i32 0
  %433 = load i64, i64* %432, align 8
  %434 = getelementptr inbounds i32, i32* %430, i64 %433
  %435 = load i32, i32* %434, align 4
  %436 = add nsw i32 %435, 1
  %437 = sdiv i32 %429, %436
  %438 = load %struct.ring_info*, %struct.ring_info** %37, align 8
  %439 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %438, i32 0, i32 0
  store i32 %437, i32* %439, align 8
  %440 = load %struct.rx_ring_config*, %struct.rx_ring_config** %36, align 8
  %441 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %440, i32 0, i32 0
  %442 = load i32, i32* %441, align 4
  %443 = load %struct.ring_info*, %struct.ring_info** %37, align 8
  %444 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %443, i32 0, i32 0
  %445 = load i32, i32* %444, align 8
  %446 = sub nsw i32 %442, %445
  %447 = load %struct.ring_info*, %struct.ring_info** %37, align 8
  %448 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %447, i32 0, i32 1
  store i32 %446, i32* %448, align 4
  br label %449

449:                                              ; preds = %421
  %450 = load i32, i32* %10, align 4
  %451 = add nsw i32 %450, 1
  store i32 %451, i32* %10, align 4
  br label %382

452:                                              ; preds = %382
  %453 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %454 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %453, i32 0, i32 0
  %455 = load i64, i64* %454, align 8
  %456 = load i64, i64* @RXD_MODE_1, align 8
  %457 = icmp eq i64 %455, %456
  br i1 %457, label %458, label %463

458:                                              ; preds = %452
  %459 = load i32, i32* %4, align 4
  %460 = sext i32 %459 to i64
  %461 = mul i64 %460, 4
  %462 = trunc i64 %461 to i32
  store i32 %462, i32* %4, align 4
  br label %468

463:                                              ; preds = %452
  %464 = load i32, i32* %4, align 4
  %465 = sext i32 %464 to i64
  %466 = mul i64 %465, 4
  %467 = trunc i64 %466 to i32
  store i32 %467, i32* %4, align 4
  br label %468

468:                                              ; preds = %463, %458
  store i32 0, i32* %10, align 4
  br label %469

469:                                              ; preds = %707, %468
  %470 = load i32, i32* %10, align 4
  %471 = load %struct.config_param*, %struct.config_param** %18, align 8
  %472 = getelementptr inbounds %struct.config_param, %struct.config_param* %471, i32 0, i32 2
  %473 = load i32, i32* %472, align 8
  %474 = icmp slt i32 %470, %473
  br i1 %474, label %475, label %710

475:                                              ; preds = %469
  %476 = load %struct.config_param*, %struct.config_param** %18, align 8
  %477 = getelementptr inbounds %struct.config_param, %struct.config_param* %476, i32 0, i32 3
  %478 = load %struct.rx_ring_config*, %struct.rx_ring_config** %477, align 8
  %479 = load i32, i32* %10, align 4
  %480 = sext i32 %479 to i64
  %481 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %478, i64 %480
  store %struct.rx_ring_config* %481, %struct.rx_ring_config** %38, align 8
  %482 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %483 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %482, i32 0, i32 4
  %484 = load %struct.ring_info*, %struct.ring_info** %483, align 8
  %485 = load i32, i32* %10, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %484, i64 %486
  store %struct.ring_info* %487, %struct.ring_info** %39, align 8
  %488 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %489 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %488, i32 0, i32 7
  %490 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %489, i32 0, i32 2
  store i64 0, i64* %490, align 8
  %491 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %492 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %491, i32 0, i32 7
  %493 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %492, i32 0, i32 1
  store i64 0, i64* %493, align 8
  %494 = load %struct.rx_ring_config*, %struct.rx_ring_config** %38, align 8
  %495 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %494, i32 0, i32 0
  %496 = load i32, i32* %495, align 4
  %497 = sub nsw i32 %496, 1
  %498 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %499 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %498, i32 0, i32 7
  %500 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %499, i32 0, i32 0
  store i32 %497, i32* %500, align 8
  %501 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %502 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %501, i32 0, i32 6
  %503 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %502, i32 0, i32 2
  store i64 0, i64* %503, align 8
  %504 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %505 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %504, i32 0, i32 6
  %506 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %505, i32 0, i32 1
  store i64 0, i64* %506, align 8
  %507 = load %struct.rx_ring_config*, %struct.rx_ring_config** %38, align 8
  %508 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %507, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = sub nsw i32 %509, 1
  %511 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %512 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %511, i32 0, i32 6
  %513 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %512, i32 0, i32 0
  store i32 %510, i32* %513, align 8
  %514 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %515 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %516 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %515, i32 0, i32 5
  store %struct.s2io_nic* %514, %struct.s2io_nic** %516, align 8
  %517 = load i32, i32* %10, align 4
  %518 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %519 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %518, i32 0, i32 2
  store i32 %517, i32* %519, align 8
  %520 = load %struct.rx_ring_config*, %struct.rx_ring_config** %38, align 8
  %521 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = load i32*, i32** @rxd_count, align 8
  %524 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %525 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %524, i32 0, i32 0
  %526 = load i64, i64* %525, align 8
  %527 = getelementptr inbounds i32, i32* %523, i64 %526
  %528 = load i32, i32* %527, align 4
  %529 = add nsw i32 %528, 1
  %530 = sdiv i32 %522, %529
  store i32 %530, i32* %12, align 4
  store i32 0, i32* %11, align 4
  br label %531

531:                                              ; preds = %648, %475
  %532 = load i32, i32* %11, align 4
  %533 = load i32, i32* %12, align 4
  %534 = icmp slt i32 %532, %533
  br i1 %534, label %535, label %651

535:                                              ; preds = %531
  %536 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %537 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %536, i32 0, i32 4
  %538 = load %struct.rx_block_info*, %struct.rx_block_info** %537, align 8
  %539 = load i32, i32* %11, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %538, i64 %540
  store %struct.rx_block_info* %541, %struct.rx_block_info** %40, align 8
  %542 = load i32, i32* @SIZE_OF_BLOCK, align 4
  store i32 %542, i32* %4, align 4
  %543 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %544 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %543, i32 0, i32 1
  %545 = load %struct.TYPE_17__*, %struct.TYPE_17__** %544, align 8
  %546 = load i32, i32* %4, align 4
  %547 = call i8* @pci_alloc_consistent(%struct.TYPE_17__* %545, i32 %546, i8** %7)
  store i8* %547, i8** %5, align 8
  %548 = load i8*, i8** %5, align 8
  %549 = icmp eq i8* %548, null
  br i1 %549, label %550, label %556

550:                                              ; preds = %535
  %551 = load i8*, i8** %5, align 8
  %552 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %553 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %552, i32 0, i32 1
  store i8* %551, i8** %553, align 8
  %554 = load i32, i32* @ENOMEM, align 4
  %555 = sub nsw i32 0, %554
  store i32 %555, i32* %2, align 4
  br label %966

556:                                              ; preds = %535
  %557 = load i32, i32* %4, align 4
  %558 = sext i32 %557 to i64
  %559 = load i64, i64* %20, align 8
  %560 = add i64 %559, %558
  store i64 %560, i64* %20, align 8
  %561 = load i32*, i32** @rxd_count, align 8
  %562 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %563 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %562, i32 0, i32 0
  %564 = load i64, i64* %563, align 8
  %565 = getelementptr inbounds i32, i32* %561, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = sext i32 %566 to i64
  %568 = mul i64 4, %567
  %569 = trunc i64 %568 to i32
  store i32 %569, i32* %4, align 4
  %570 = load i8*, i8** %5, align 8
  %571 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %572 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %571, i32 0, i32 1
  store i8* %570, i8** %572, align 8
  %573 = load i8*, i8** %7, align 8
  %574 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %575 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %574, i32 0, i32 0
  store i8* %573, i8** %575, align 8
  %576 = load i32, i32* %4, align 4
  %577 = load i32, i32* @GFP_KERNEL, align 4
  %578 = call i8* @kmalloc(i32 %576, i32 %577)
  %579 = bitcast i8* %578 to %struct.TYPE_14__*
  %580 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %581 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %580, i32 0, i32 2
  store %struct.TYPE_14__* %579, %struct.TYPE_14__** %581, align 8
  %582 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %583 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %582, i32 0, i32 2
  %584 = load %struct.TYPE_14__*, %struct.TYPE_14__** %583, align 8
  %585 = icmp ne %struct.TYPE_14__* %584, null
  br i1 %585, label %589, label %586

586:                                              ; preds = %556
  %587 = load i32, i32* @ENOMEM, align 4
  %588 = sub nsw i32 0, %587
  store i32 %588, i32* %2, align 4
  br label %966

589:                                              ; preds = %556
  %590 = load i32, i32* %4, align 4
  %591 = sext i32 %590 to i64
  %592 = load i64, i64* %20, align 8
  %593 = add i64 %592, %591
  store i64 %593, i64* %20, align 8
  store i32 0, i32* %41, align 4
  br label %594

594:                                              ; preds = %644, %589
  %595 = load i32, i32* %41, align 4
  %596 = load i32*, i32** @rxd_count, align 8
  %597 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %598 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %597, i32 0, i32 0
  %599 = load i64, i64* %598, align 8
  %600 = getelementptr inbounds i32, i32* %596, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = icmp slt i32 %595, %601
  br i1 %602, label %603, label %647

603:                                              ; preds = %594
  %604 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %605 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %604, i32 0, i32 1
  %606 = load i8*, i8** %605, align 8
  %607 = load i32*, i32** @rxd_size, align 8
  %608 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %609 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %608, i32 0, i32 0
  %610 = load i64, i64* %609, align 8
  %611 = getelementptr inbounds i32, i32* %607, i64 %610
  %612 = load i32, i32* %611, align 4
  %613 = load i32, i32* %41, align 4
  %614 = mul nsw i32 %612, %613
  %615 = sext i32 %614 to i64
  %616 = getelementptr i8, i8* %606, i64 %615
  %617 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %618 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %617, i32 0, i32 2
  %619 = load %struct.TYPE_14__*, %struct.TYPE_14__** %618, align 8
  %620 = load i32, i32* %41, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %619, i64 %621
  %623 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %622, i32 0, i32 1
  store i8* %616, i8** %623, align 8
  %624 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %625 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %624, i32 0, i32 0
  %626 = load i8*, i8** %625, align 8
  %627 = load i32*, i32** @rxd_size, align 8
  %628 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %629 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %628, i32 0, i32 0
  %630 = load i64, i64* %629, align 8
  %631 = getelementptr inbounds i32, i32* %627, i64 %630
  %632 = load i32, i32* %631, align 4
  %633 = load i32, i32* %41, align 4
  %634 = mul nsw i32 %632, %633
  %635 = sext i32 %634 to i64
  %636 = getelementptr i8, i8* %626, i64 %635
  %637 = load %struct.rx_block_info*, %struct.rx_block_info** %40, align 8
  %638 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %637, i32 0, i32 2
  %639 = load %struct.TYPE_14__*, %struct.TYPE_14__** %638, align 8
  %640 = load i32, i32* %41, align 4
  %641 = sext i32 %640 to i64
  %642 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %639, i64 %641
  %643 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %642, i32 0, i32 0
  store i8* %636, i8** %643, align 8
  br label %644

644:                                              ; preds = %603
  %645 = load i32, i32* %41, align 4
  %646 = add nsw i32 %645, 1
  store i32 %646, i32* %41, align 4
  br label %594

647:                                              ; preds = %594
  br label %648

648:                                              ; preds = %647
  %649 = load i32, i32* %11, align 4
  %650 = add nsw i32 %649, 1
  store i32 %650, i32* %11, align 4
  br label %531

651:                                              ; preds = %531
  store i32 0, i32* %11, align 4
  br label %652

652:                                              ; preds = %703, %651
  %653 = load i32, i32* %11, align 4
  %654 = load i32, i32* %12, align 4
  %655 = icmp slt i32 %653, %654
  br i1 %655, label %656, label %706

656:                                              ; preds = %652
  %657 = load i32, i32* %11, align 4
  %658 = add nsw i32 %657, 1
  %659 = load i32, i32* %12, align 4
  %660 = srem i32 %658, %659
  store i32 %660, i32* %42, align 4
  %661 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %662 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %661, i32 0, i32 4
  %663 = load %struct.rx_block_info*, %struct.rx_block_info** %662, align 8
  %664 = load i32, i32* %11, align 4
  %665 = sext i32 %664 to i64
  %666 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %663, i64 %665
  %667 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %666, i32 0, i32 1
  %668 = load i8*, i8** %667, align 8
  store i8* %668, i8** %5, align 8
  %669 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %670 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %669, i32 0, i32 4
  %671 = load %struct.rx_block_info*, %struct.rx_block_info** %670, align 8
  %672 = load i32, i32* %42, align 4
  %673 = sext i32 %672 to i64
  %674 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %671, i64 %673
  %675 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %674, i32 0, i32 1
  %676 = load i8*, i8** %675, align 8
  store i8* %676, i8** %6, align 8
  %677 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %678 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %677, i32 0, i32 4
  %679 = load %struct.rx_block_info*, %struct.rx_block_info** %678, align 8
  %680 = load i32, i32* %11, align 4
  %681 = sext i32 %680 to i64
  %682 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %679, i64 %681
  %683 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %682, i32 0, i32 0
  %684 = load i8*, i8** %683, align 8
  store i8* %684, i8** %7, align 8
  %685 = load %struct.ring_info*, %struct.ring_info** %39, align 8
  %686 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %685, i32 0, i32 4
  %687 = load %struct.rx_block_info*, %struct.rx_block_info** %686, align 8
  %688 = load i32, i32* %42, align 4
  %689 = sext i32 %688 to i64
  %690 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %687, i64 %689
  %691 = getelementptr inbounds %struct.rx_block_info, %struct.rx_block_info* %690, i32 0, i32 0
  %692 = load i8*, i8** %691, align 8
  store i8* %692, i8** %8, align 8
  %693 = load i8*, i8** %5, align 8
  %694 = bitcast i8* %693 to %struct.RxD_block*
  store %struct.RxD_block* %694, %struct.RxD_block** %9, align 8
  %695 = load i8*, i8** %6, align 8
  %696 = ptrtoint i8* %695 to i64
  %697 = load %struct.RxD_block*, %struct.RxD_block** %9, align 8
  %698 = getelementptr inbounds %struct.RxD_block, %struct.RxD_block* %697, i32 0, i32 0
  store i64 %696, i64* %698, align 8
  %699 = load i8*, i8** %8, align 8
  %700 = ptrtoint i8* %699 to i64
  %701 = load %struct.RxD_block*, %struct.RxD_block** %9, align 8
  %702 = getelementptr inbounds %struct.RxD_block, %struct.RxD_block* %701, i32 0, i32 1
  store i64 %700, i64* %702, align 8
  br label %703

703:                                              ; preds = %656
  %704 = load i32, i32* %11, align 4
  %705 = add nsw i32 %704, 1
  store i32 %705, i32* %11, align 4
  br label %652

706:                                              ; preds = %652
  br label %707

707:                                              ; preds = %706
  %708 = load i32, i32* %10, align 4
  %709 = add nsw i32 %708, 1
  store i32 %709, i32* %10, align 4
  br label %469

710:                                              ; preds = %469
  %711 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %712 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %711, i32 0, i32 0
  %713 = load i64, i64* %712, align 8
  %714 = load i64, i64* @RXD_MODE_3B, align 8
  %715 = icmp eq i64 %713, %714
  br i1 %715, label %716, label %913

716:                                              ; preds = %710
  store i32 0, i32* %10, align 4
  br label %717

717:                                              ; preds = %909, %716
  %718 = load i32, i32* %10, align 4
  %719 = load %struct.config_param*, %struct.config_param** %18, align 8
  %720 = getelementptr inbounds %struct.config_param, %struct.config_param* %719, i32 0, i32 2
  %721 = load i32, i32* %720, align 8
  %722 = icmp slt i32 %718, %721
  br i1 %722, label %723, label %912

723:                                              ; preds = %717
  %724 = load %struct.config_param*, %struct.config_param** %18, align 8
  %725 = getelementptr inbounds %struct.config_param, %struct.config_param* %724, i32 0, i32 3
  %726 = load %struct.rx_ring_config*, %struct.rx_ring_config** %725, align 8
  %727 = load i32, i32* %10, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %726, i64 %728
  store %struct.rx_ring_config* %729, %struct.rx_ring_config** %43, align 8
  %730 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %731 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %730, i32 0, i32 4
  %732 = load %struct.ring_info*, %struct.ring_info** %731, align 8
  %733 = load i32, i32* %10, align 4
  %734 = sext i32 %733 to i64
  %735 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %732, i64 %734
  store %struct.ring_info* %735, %struct.ring_info** %44, align 8
  %736 = load %struct.rx_ring_config*, %struct.rx_ring_config** %43, align 8
  %737 = getelementptr inbounds %struct.rx_ring_config, %struct.rx_ring_config* %736, i32 0, i32 0
  %738 = load i32, i32* %737, align 4
  %739 = load i32*, i32** @rxd_count, align 8
  %740 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %741 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %740, i32 0, i32 0
  %742 = load i64, i64* %741, align 8
  %743 = getelementptr inbounds i32, i32* %739, i64 %742
  %744 = load i32, i32* %743, align 4
  %745 = add nsw i32 %744, 1
  %746 = sdiv i32 %738, %745
  store i32 %746, i32* %12, align 4
  %747 = load i32, i32* %12, align 4
  %748 = sext i32 %747 to i64
  %749 = mul i64 8, %748
  %750 = trunc i64 %749 to i32
  store i32 %750, i32* %4, align 4
  %751 = load i32, i32* %4, align 4
  %752 = load i32, i32* @GFP_KERNEL, align 4
  %753 = call i8* @kmalloc(i32 %751, i32 %752)
  %754 = bitcast i8* %753 to %struct.buffAdd**
  %755 = load %struct.ring_info*, %struct.ring_info** %44, align 8
  %756 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %755, i32 0, i32 3
  store %struct.buffAdd** %754, %struct.buffAdd*** %756, align 8
  %757 = load %struct.ring_info*, %struct.ring_info** %44, align 8
  %758 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %757, i32 0, i32 3
  %759 = load %struct.buffAdd**, %struct.buffAdd*** %758, align 8
  %760 = icmp ne %struct.buffAdd** %759, null
  br i1 %760, label %764, label %761

761:                                              ; preds = %723
  %762 = load i32, i32* @ENOMEM, align 4
  %763 = sub nsw i32 0, %762
  store i32 %763, i32* %2, align 4
  br label %966

764:                                              ; preds = %723
  %765 = load i32, i32* %4, align 4
  %766 = sext i32 %765 to i64
  %767 = load i64, i64* %20, align 8
  %768 = add i64 %767, %766
  store i64 %768, i64* %20, align 8
  store i32 0, i32* %11, align 4
  br label %769

769:                                              ; preds = %905, %764
  %770 = load i32, i32* %11, align 4
  %771 = load i32, i32* %12, align 4
  %772 = icmp slt i32 %770, %771
  br i1 %772, label %773, label %908

773:                                              ; preds = %769
  store i32 0, i32* %45, align 4
  %774 = load i32*, i32** @rxd_count, align 8
  %775 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %776 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %775, i32 0, i32 0
  %777 = load i64, i64* %776, align 8
  %778 = getelementptr inbounds i32, i32* %774, i64 %777
  %779 = load i32, i32* %778, align 4
  %780 = add nsw i32 %779, 1
  %781 = sext i32 %780 to i64
  %782 = mul i64 32, %781
  %783 = trunc i64 %782 to i32
  store i32 %783, i32* %4, align 4
  %784 = load i32, i32* %4, align 4
  %785 = load i32, i32* @GFP_KERNEL, align 4
  %786 = call i8* @kmalloc(i32 %784, i32 %785)
  %787 = bitcast i8* %786 to %struct.buffAdd*
  %788 = load %struct.ring_info*, %struct.ring_info** %44, align 8
  %789 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %788, i32 0, i32 3
  %790 = load %struct.buffAdd**, %struct.buffAdd*** %789, align 8
  %791 = load i32, i32* %11, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds %struct.buffAdd*, %struct.buffAdd** %790, i64 %792
  store %struct.buffAdd* %787, %struct.buffAdd** %793, align 8
  %794 = load %struct.ring_info*, %struct.ring_info** %44, align 8
  %795 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %794, i32 0, i32 3
  %796 = load %struct.buffAdd**, %struct.buffAdd*** %795, align 8
  %797 = load i32, i32* %11, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds %struct.buffAdd*, %struct.buffAdd** %796, i64 %798
  %800 = load %struct.buffAdd*, %struct.buffAdd** %799, align 8
  %801 = icmp ne %struct.buffAdd* %800, null
  br i1 %801, label %805, label %802

802:                                              ; preds = %773
  %803 = load i32, i32* @ENOMEM, align 4
  %804 = sub nsw i32 0, %803
  store i32 %804, i32* %2, align 4
  br label %966

805:                                              ; preds = %773
  %806 = load i32, i32* %4, align 4
  %807 = sext i32 %806 to i64
  %808 = load i64, i64* %20, align 8
  %809 = add i64 %808, %807
  store i64 %809, i64* %20, align 8
  br label %810

810:                                              ; preds = %882, %805
  %811 = load i32, i32* %45, align 4
  %812 = load i32*, i32** @rxd_count, align 8
  %813 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %814 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %813, i32 0, i32 0
  %815 = load i64, i64* %814, align 8
  %816 = getelementptr inbounds i32, i32* %812, i64 %815
  %817 = load i32, i32* %816, align 4
  %818 = icmp ne i32 %811, %817
  br i1 %818, label %819, label %904

819:                                              ; preds = %810
  %820 = load %struct.ring_info*, %struct.ring_info** %44, align 8
  %821 = getelementptr inbounds %struct.ring_info, %struct.ring_info* %820, i32 0, i32 3
  %822 = load %struct.buffAdd**, %struct.buffAdd*** %821, align 8
  %823 = load i32, i32* %11, align 4
  %824 = sext i32 %823 to i64
  %825 = getelementptr inbounds %struct.buffAdd*, %struct.buffAdd** %822, i64 %824
  %826 = load %struct.buffAdd*, %struct.buffAdd** %825, align 8
  %827 = load i32, i32* %45, align 4
  %828 = sext i32 %827 to i64
  %829 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %826, i64 %828
  store %struct.buffAdd* %829, %struct.buffAdd** %17, align 8
  %830 = load i64, i64* @BUF0_LEN, align 8
  %831 = load i64, i64* @ALIGN_SIZE, align 8
  %832 = add i64 %830, %831
  %833 = trunc i64 %832 to i32
  store i32 %833, i32* %4, align 4
  %834 = load i32, i32* %4, align 4
  %835 = load i32, i32* @GFP_KERNEL, align 4
  %836 = call i8* @kmalloc(i32 %834, i32 %835)
  %837 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %838 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %837, i32 0, i32 3
  store i8* %836, i8** %838, align 8
  %839 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %840 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %839, i32 0, i32 3
  %841 = load i8*, i8** %840, align 8
  %842 = icmp ne i8* %841, null
  br i1 %842, label %846, label %843

843:                                              ; preds = %819
  %844 = load i32, i32* @ENOMEM, align 4
  %845 = sub nsw i32 0, %844
  store i32 %845, i32* %2, align 4
  br label %966

846:                                              ; preds = %819
  %847 = load i32, i32* %4, align 4
  %848 = sext i32 %847 to i64
  %849 = load i64, i64* %20, align 8
  %850 = add i64 %849, %848
  store i64 %850, i64* %20, align 8
  %851 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %852 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %851, i32 0, i32 3
  %853 = load i8*, i8** %852, align 8
  %854 = ptrtoint i8* %853 to i64
  store i64 %854, i64* %16, align 8
  %855 = load i64, i64* @ALIGN_SIZE, align 8
  %856 = load i64, i64* %16, align 8
  %857 = add i64 %856, %855
  store i64 %857, i64* %16, align 8
  %858 = load i64, i64* @ALIGN_SIZE, align 8
  %859 = xor i64 %858, -1
  %860 = load i64, i64* %16, align 8
  %861 = and i64 %860, %859
  store i64 %861, i64* %16, align 8
  %862 = load i64, i64* %16, align 8
  %863 = inttoptr i64 %862 to i8*
  %864 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %865 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %864, i32 0, i32 2
  store i8* %863, i8** %865, align 8
  %866 = load i64, i64* @BUF1_LEN, align 8
  %867 = load i64, i64* @ALIGN_SIZE, align 8
  %868 = add i64 %866, %867
  %869 = trunc i64 %868 to i32
  store i32 %869, i32* %4, align 4
  %870 = load i32, i32* %4, align 4
  %871 = load i32, i32* @GFP_KERNEL, align 4
  %872 = call i8* @kmalloc(i32 %870, i32 %871)
  %873 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %874 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %873, i32 0, i32 1
  store i8* %872, i8** %874, align 8
  %875 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %876 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %875, i32 0, i32 1
  %877 = load i8*, i8** %876, align 8
  %878 = icmp ne i8* %877, null
  br i1 %878, label %882, label %879

879:                                              ; preds = %846
  %880 = load i32, i32* @ENOMEM, align 4
  %881 = sub nsw i32 0, %880
  store i32 %881, i32* %2, align 4
  br label %966

882:                                              ; preds = %846
  %883 = load i32, i32* %4, align 4
  %884 = sext i32 %883 to i64
  %885 = load i64, i64* %20, align 8
  %886 = add i64 %885, %884
  store i64 %886, i64* %20, align 8
  %887 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %888 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %887, i32 0, i32 1
  %889 = load i8*, i8** %888, align 8
  %890 = ptrtoint i8* %889 to i64
  store i64 %890, i64* %16, align 8
  %891 = load i64, i64* @ALIGN_SIZE, align 8
  %892 = load i64, i64* %16, align 8
  %893 = add i64 %892, %891
  store i64 %893, i64* %16, align 8
  %894 = load i64, i64* @ALIGN_SIZE, align 8
  %895 = xor i64 %894, -1
  %896 = load i64, i64* %16, align 8
  %897 = and i64 %896, %895
  store i64 %897, i64* %16, align 8
  %898 = load i64, i64* %16, align 8
  %899 = inttoptr i64 %898 to i8*
  %900 = load %struct.buffAdd*, %struct.buffAdd** %17, align 8
  %901 = getelementptr inbounds %struct.buffAdd, %struct.buffAdd* %900, i32 0, i32 0
  store i8* %899, i8** %901, align 8
  %902 = load i32, i32* %45, align 4
  %903 = add nsw i32 %902, 1
  store i32 %903, i32* %45, align 4
  br label %810

904:                                              ; preds = %810
  br label %905

905:                                              ; preds = %904
  %906 = load i32, i32* %11, align 4
  %907 = add nsw i32 %906, 1
  store i32 %907, i32* %11, align 4
  br label %769

908:                                              ; preds = %769
  br label %909

909:                                              ; preds = %908
  %910 = load i32, i32* %10, align 4
  %911 = add nsw i32 %910, 1
  store i32 %911, i32* %10, align 4
  br label %717

912:                                              ; preds = %717
  br label %913

913:                                              ; preds = %912, %710
  store i32 4, i32* %4, align 4
  %914 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %915 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %914, i32 0, i32 1
  %916 = load %struct.TYPE_17__*, %struct.TYPE_17__** %915, align 8
  %917 = load i32, i32* %4, align 4
  %918 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %919 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %918, i32 0, i32 0
  %920 = call i8* @pci_alloc_consistent(%struct.TYPE_17__* %916, i32 %917, i8** %919)
  %921 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %922 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %921, i32 0, i32 3
  store i8* %920, i8** %922, align 8
  %923 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %924 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %923, i32 0, i32 3
  %925 = load i8*, i8** %924, align 8
  %926 = icmp ne i8* %925, null
  br i1 %926, label %930, label %927

927:                                              ; preds = %913
  %928 = load i32, i32* @ENOMEM, align 4
  %929 = sub nsw i32 0, %928
  store i32 %929, i32* %2, align 4
  br label %966

930:                                              ; preds = %913
  %931 = load i32, i32* %4, align 4
  %932 = sext i32 %931 to i64
  %933 = load i64, i64* %20, align 8
  %934 = add i64 %933, %932
  store i64 %934, i64* %20, align 8
  %935 = load i32, i32* %4, align 4
  %936 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %937 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %936, i32 0, i32 1
  store i32 %935, i32* %937, align 8
  %938 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %939 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %938, i32 0, i32 3
  %940 = load i8*, i8** %939, align 8
  store i8* %940, i8** %5, align 8
  %941 = load i8*, i8** %5, align 8
  %942 = bitcast i8* %941 to %struct.TYPE_16__*
  %943 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %944 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %943, i32 0, i32 2
  store %struct.TYPE_16__* %942, %struct.TYPE_16__** %944, align 8
  %945 = load i8*, i8** %5, align 8
  %946 = load i32, i32* %4, align 4
  %947 = call i32 @memset(i8* %945, i32 0, i32 %946)
  %948 = load i32, i32* @INIT_DBG, align 4
  %949 = load %struct.s2io_nic*, %struct.s2io_nic** %3, align 8
  %950 = getelementptr inbounds %struct.s2io_nic, %struct.s2io_nic* %949, i32 0, i32 1
  %951 = load %struct.TYPE_17__*, %struct.TYPE_17__** %950, align 8
  %952 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %951, i32 0, i32 0
  %953 = call i32 @dev_name(i32* %952)
  %954 = load i8*, i8** %7, align 8
  %955 = ptrtoint i8* %954 to i64
  %956 = call i32 (i32, i8*, ...) @DBG_PRINT(i32 %948, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %953, i64 %955)
  %957 = load i64, i64* %20, align 8
  %958 = load %struct.mac_info*, %struct.mac_info** %19, align 8
  %959 = getelementptr inbounds %struct.mac_info, %struct.mac_info* %958, i32 0, i32 2
  %960 = load %struct.TYPE_16__*, %struct.TYPE_16__** %959, align 8
  %961 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %960, i32 0, i32 0
  %962 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %961, i32 0, i32 0
  %963 = load i64, i64* %962, align 8
  %964 = add i64 %963, %957
  store i64 %964, i64* %962, align 8
  %965 = load i32, i32* @SUCCESS, align 4
  store i32 %965, i32* %2, align 4
  br label %966

966:                                              ; preds = %930, %927, %879, %843, %802, %761, %586, %550, %413, %369, %273, %248, %160, %104, %78
  %967 = load i32, i32* %2, align 4
  ret i32 %967
}

declare dso_local i32 @DBG_PRINT(i32, i8*, ...) #1

declare dso_local %struct.TYPE_18__* @kzalloc(i32, i32) #1

declare dso_local i32 @TXD_MEM_PAGE_CNT(i32, i32) #1

declare dso_local i8* @pci_alloc_consistent(%struct.TYPE_17__*, i32, i8**) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
