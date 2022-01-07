; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_can_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/peak_canfd/extr_peak_pciefd_main.c_pciefd_can_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pciefd_board = type { i64, %struct.TYPE_8__*, %struct.pciefd_can**, i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.pciefd_can = type { i64, i32, %struct.TYPE_7__, i8*, i32, i8*, i32, %struct.pciefd_board*, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32, i32 }

@PCIEFD_ECHO_SKB_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to alloc candev object\0A\00", align 1
@pciefd_pre_cmd = common dso_local global i32 0, align 4
@pciefd_write_cmd = common dso_local global i32 0, align 4
@pciefd_post_cmd = common dso_local global i32 0, align 4
@pciefd_enable_tx_path = common dso_local global i32 0, align 4
@pciefd_alloc_tx_msg = common dso_local global i32 0, align 4
@pciefd_write_tx_msg = common dso_local global i32 0, align 4
@PCIEFD_RX_DMA_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Rx dmam_alloc_coherent(%u) failure\0A\00", align 1
@PCIEFD_TX_DMA_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Tx dmam_alloc_coherent(%u) failure\0A\00", align 1
@CANFD_MISC_TS_RST = common dso_local global i32 0, align 4
@PCIEFD_REG_CAN_MISC = common dso_local global i32 0, align 4
@PCIEFD_REG_CAN_CLK_SEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"couldn't register CAN device: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"%s at reg_base=0x%p irq=%d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pciefd_board*)* @pciefd_can_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pciefd_can_probe(%struct.pciefd_board* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pciefd_board*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pciefd_can*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pciefd_board* %0, %struct.pciefd_board** %3, align 8
  %8 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %9 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i32, i32* @PCIEFD_ECHO_SKB_MAX, align 4
  %12 = call %struct.net_device* @alloc_peak_canfd_dev(i32 112, i64 %10, i32 %11)
  store %struct.net_device* %12, %struct.net_device** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = icmp ne %struct.net_device* %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %17 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %16, i32 0, i32 1
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = call i32 (i32*, i8*, ...) @dev_err(i32* %19, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %218

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = call %struct.pciefd_can* @netdev_priv(%struct.net_device* %22)
  store %struct.pciefd_can* %23, %struct.pciefd_can** %5, align 8
  %24 = load i32, i32* @pciefd_pre_cmd, align 4
  %25 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %26 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 9
  store i32 %24, i32* %27, align 4
  %28 = load i32, i32* @pciefd_write_cmd, align 4
  %29 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %30 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 8
  store i32 %28, i32* %31, align 8
  %32 = load i32, i32* @pciefd_post_cmd, align 4
  %33 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %34 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 7
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* @pciefd_enable_tx_path, align 4
  %37 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %38 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 6
  store i32 %36, i32* %39, align 8
  %40 = load i32, i32* @pciefd_alloc_tx_msg, align 4
  %41 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %42 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 5
  store i32 %40, i32* %43, align 4
  %44 = load i32, i32* @pciefd_write_tx_msg, align 4
  %45 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %46 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %49 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %48, i32 0, i32 8
  %50 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %51 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  store i32* %49, i32** %52, align 8
  %53 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %54 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32 4, i32* %55, align 8
  %56 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %57 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %58 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %57, i32 0, i32 7
  store %struct.pciefd_board* %56, %struct.pciefd_board** %58, align 8
  %59 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %60 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %63 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @PCIEFD_CANX_OFF(i32 %65)
  %67 = add nsw i64 %61, %66
  %68 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %69 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  %70 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %71 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %70, i32 0, i32 1
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32, i32* @PCIEFD_RX_DMA_SIZE, align 4
  %75 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %76 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %75, i32 0, i32 6
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call i8* @dmam_alloc_coherent(i32* %73, i32 %74, i32* %76, i32 %77)
  %79 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %80 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %79, i32 0, i32 5
  store i8* %78, i8** %80, align 8
  %81 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %82 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %81, i32 0, i32 5
  %83 = load i8*, i8** %82, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %21
  %86 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %87 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %86, i32 0, i32 1
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 0
  %90 = load i32, i32* @PCIEFD_RX_DMA_SIZE, align 4
  %91 = call i32 (i32*, i8*, ...) @dev_err(i32* %89, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %90)
  br label %215

92:                                               ; preds = %21
  %93 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %94 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %93, i32 0, i32 1
  %95 = load %struct.TYPE_8__*, %struct.TYPE_8__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* @PCIEFD_TX_DMA_SIZE, align 4
  %98 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %99 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %98, i32 0, i32 4
  %100 = load i32, i32* @GFP_KERNEL, align 4
  %101 = call i8* @dmam_alloc_coherent(i32* %96, i32 %97, i32* %99, i32 %100)
  %102 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %103 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %102, i32 0, i32 3
  store i8* %101, i8** %103, align 8
  %104 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %105 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %104, i32 0, i32 3
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %115, label %108

108:                                              ; preds = %92
  %109 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %110 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %109, i32 0, i32 1
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = load i32, i32* @PCIEFD_TX_DMA_SIZE, align 4
  %114 = call i32 (i32*, i8*, ...) @dev_err(i32* %112, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %113)
  br label %215

115:                                              ; preds = %92
  %116 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %117 = load i32, i32* @CANFD_MISC_TS_RST, align 4
  %118 = load i32, i32* @PCIEFD_REG_CAN_MISC, align 4
  %119 = call i32 @pciefd_can_writereg(%struct.pciefd_can* %116, i32 %117, i32 %118)
  %120 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %121 = load i32, i32* @PCIEFD_REG_CAN_CLK_SEL, align 4
  %122 = call i32 @pciefd_can_readreg(%struct.pciefd_can* %120, i32 %121)
  store i32 %122, i32* %6, align 4
  %123 = load i32, i32* %6, align 4
  switch i32 %123, label %154 [
    i32 133, label %124
    i32 132, label %130
    i32 131, label %136
    i32 130, label %142
    i32 129, label %148
    i32 128, label %158
  ]

124:                                              ; preds = %115
  %125 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %126 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i32 20000000, i32* %129, align 4
  br label %164

130:                                              ; preds = %115
  %131 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %132 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 0
  store i32 24000000, i32* %135, align 4
  br label %164

136:                                              ; preds = %115
  %137 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %138 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %140, i32 0, i32 0
  store i32 30000000, i32* %141, align 4
  br label %164

142:                                              ; preds = %115
  %143 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %144 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %143, i32 0, i32 2
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 0
  store i32 40000000, i32* %147, align 4
  br label %164

148:                                              ; preds = %115
  %149 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %150 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %149, i32 0, i32 2
  %151 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32 60000000, i32* %153, align 4
  br label %164

154:                                              ; preds = %115
  %155 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %156 = load i32, i32* @PCIEFD_REG_CAN_CLK_SEL, align 4
  %157 = call i32 @pciefd_can_writereg(%struct.pciefd_can* %155, i32 128, i32 %156)
  br label %158

158:                                              ; preds = %115, %154
  %159 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %160 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  store i32 80000000, i32* %163, align 4
  br label %164

164:                                              ; preds = %158, %148, %142, %136, %130, %124
  %165 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %166 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.net_device*, %struct.net_device** %4, align 8
  %171 = getelementptr inbounds %struct.net_device, %struct.net_device* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 4
  %172 = load %struct.net_device*, %struct.net_device** %4, align 8
  %173 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %174 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %173, i32 0, i32 1
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %174, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  %177 = call i32 @SET_NETDEV_DEV(%struct.net_device* %172, i32* %176)
  %178 = load %struct.net_device*, %struct.net_device** %4, align 8
  %179 = call i32 @register_candev(%struct.net_device* %178)
  store i32 %179, i32* %7, align 4
  %180 = load i32, i32* %7, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %189

182:                                              ; preds = %164
  %183 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %184 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %183, i32 0, i32 1
  %185 = load %struct.TYPE_8__*, %struct.TYPE_8__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %7, align 4
  %188 = call i32 (i32*, i8*, ...) @dev_err(i32* %186, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %187)
  br label %215

189:                                              ; preds = %164
  %190 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %191 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %190, i32 0, i32 1
  %192 = call i32 @spin_lock_init(i32* %191)
  %193 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %194 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %195 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %194, i32 0, i32 2
  %196 = load %struct.pciefd_can**, %struct.pciefd_can*** %195, align 8
  %197 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %198 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.pciefd_can*, %struct.pciefd_can** %196, i64 %199
  store %struct.pciefd_can* %193, %struct.pciefd_can** %200, align 8
  %201 = load %struct.pciefd_board*, %struct.pciefd_board** %3, align 8
  %202 = getelementptr inbounds %struct.pciefd_board, %struct.pciefd_board* %201, i32 0, i32 1
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 0
  %205 = load %struct.net_device*, %struct.net_device** %4, align 8
  %206 = getelementptr inbounds %struct.net_device, %struct.net_device* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.pciefd_can*, %struct.pciefd_can** %5, align 8
  %209 = getelementptr inbounds %struct.pciefd_can, %struct.pciefd_can* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load %struct.net_device*, %struct.net_device** %4, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 4
  %214 = call i32 @dev_info(i32* %204, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32 %207, i64 %210, i32 %213)
  store i32 0, i32* %2, align 4
  br label %221

215:                                              ; preds = %182, %108, %85
  %216 = load %struct.net_device*, %struct.net_device** %4, align 8
  %217 = call i32 @free_candev(%struct.net_device* %216)
  br label %218

218:                                              ; preds = %215, %15
  %219 = load i32, i32* @ENOMEM, align 4
  %220 = sub nsw i32 0, %219
  store i32 %220, i32* %2, align 4
  br label %221

221:                                              ; preds = %218, %189
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local %struct.net_device* @alloc_peak_canfd_dev(i32, i64, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.pciefd_can* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @PCIEFD_CANX_OFF(i32) #1

declare dso_local i8* @dmam_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @pciefd_can_writereg(%struct.pciefd_can*, i32, i32) #1

declare dso_local i32 @pciefd_can_readreg(%struct.pciefd_can*, i32) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @register_candev(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i64, i32) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
