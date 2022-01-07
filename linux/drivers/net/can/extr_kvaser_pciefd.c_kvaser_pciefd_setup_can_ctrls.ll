; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_setup_can_ctrls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_kvaser_pciefd.c_kvaser_pciefd_setup_can_ctrls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_pciefd = type { i32, %struct.kvaser_pciefd_can**, %struct.TYPE_8__*, i32, i64 }
%struct.kvaser_pciefd_can = type { i64, %struct.TYPE_7__, i32, i32, i64, i32, i32, i32, %struct.TYPE_5__, i64, i64, %struct.kvaser_pciefd* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32*, i32*, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.net_device = type { i32, i32* }

@KVASER_PCIEFD_CAN_TX_MAX_COUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@kvaser_pciefd_netdev_ops = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN0_BASE = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_BASE_OFFSET = common dso_local global i32 0, align 4
@kvaser_pciefd_bec_poll_timer = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_TX_NPACKETS_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_TX_NPACKETS_MAX_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Max Tx count is smaller than expected\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@kvaser_pciefd_bittiming_const = common dso_local global i32 0, align 4
@kvaser_pciefd_set_nominal_bittiming = common dso_local global i32 0, align 4
@kvaser_pciefd_set_data_bittiming = common dso_local global i32 0, align 4
@kvaser_pciefd_set_mode = common dso_local global i32 0, align 4
@kvaser_pciefd_get_berr_counter = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LISTENONLY = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD = common dso_local global i32 0, align 4
@CAN_CTRLMODE_FD_NON_ISO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_STAT_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_STAT_FD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"CAN FD not supported as expected %d\0A\00", align 1
@KVASER_PCIEFD_KCAN_STAT_CAP = common dso_local global i32 0, align 4
@CAN_CTRLMODE_ONE_SHOT = common dso_local global i32 0, align 4
@IFF_ECHO = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_REG = common dso_local global i64 0, align 8
@KVASER_PCIEFD_KCAN_IRQ_ABD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IRQ_TFD = common dso_local global i32 0, align 4
@KVASER_PCIEFD_KCAN_IEN_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_pciefd*)* @kvaser_pciefd_setup_can_ctrls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_pciefd_setup_can_ctrls(%struct.kvaser_pciefd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_pciefd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.kvaser_pciefd_can*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.kvaser_pciefd* %0, %struct.kvaser_pciefd** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %204, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %12 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %207

15:                                               ; preds = %9
  %16 = load i32, i32* @KVASER_PCIEFD_CAN_TX_MAX_COUNT, align 4
  %17 = call %struct.net_device* @alloc_candev(i32 128, i32 %16)
  store %struct.net_device* %17, %struct.net_device** %5, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %208

23:                                               ; preds = %15
  %24 = load %struct.net_device*, %struct.net_device** %5, align 8
  %25 = call %struct.kvaser_pciefd_can* @netdev_priv(%struct.net_device* %24)
  store %struct.kvaser_pciefd_can* %25, %struct.kvaser_pciefd_can** %6, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  store i32* @kvaser_pciefd_netdev_ops, i32** %27, align 8
  %28 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %29 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @KVASER_PCIEFD_KCAN0_BASE, align 8
  %32 = add nsw i64 %30, %31
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @KVASER_PCIEFD_KCAN_BASE_OFFSET, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %32, %36
  %38 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %39 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %38, i32 0, i32 0
  store i64 %37, i64* %39, align 8
  %40 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %41 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %42 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %41, i32 0, i32 11
  store %struct.kvaser_pciefd* %40, %struct.kvaser_pciefd** %42, align 8
  %43 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %44 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %43, i32 0, i32 10
  store i64 0, i64* %44, align 8
  %45 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %46 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %45, i32 0, i32 9
  store i64 0, i64* %46, align 8
  %47 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %48 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %47, i32 0, i32 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %51 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %50, i32 0, i32 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %54 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %53, i32 0, i32 7
  %55 = call i32 @init_completion(i32* %54)
  %56 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %57 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %56, i32 0, i32 6
  %58 = call i32 @init_completion(i32* %57)
  %59 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %60 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %59, i32 0, i32 5
  %61 = load i32, i32* @kvaser_pciefd_bec_poll_timer, align 4
  %62 = call i32 @timer_setup(i32* %60, i32 %61, i32 0)
  %63 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %64 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @KVASER_PCIEFD_KCAN_TX_NPACKETS_REG, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @ioread32(i64 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @KVASER_PCIEFD_KCAN_TX_NPACKETS_MAX_SHIFT, align 4
  %71 = ashr i32 %69, %70
  %72 = and i32 %71, 255
  %73 = load i32, i32* @KVASER_PCIEFD_CAN_TX_MAX_COUNT, align 4
  %74 = icmp slt i32 %72, %73
  br i1 %74, label %75, label %85

75:                                               ; preds = %23
  %76 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %77 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %76, i32 0, i32 2
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 0
  %80 = call i32 (i32*, i8*, ...) @dev_err(i32* %79, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %81 = load %struct.net_device*, %struct.net_device** %5, align 8
  %82 = call i32 @free_candev(%struct.net_device* %81)
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %2, align 4
  br label %208

85:                                               ; preds = %23
  %86 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %87 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %90 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %89, i32 0, i32 1
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %88, i32* %92, align 8
  %93 = load i32, i32* @KVASER_PCIEFD_CAN_TX_MAX_COUNT, align 4
  %94 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %95 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %98 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %97, i32 0, i32 4
  store i64 0, i64* %98, align 8
  %99 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %100 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %99, i32 0, i32 3
  %101 = call i32 @spin_lock_init(i32* %100)
  %102 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %103 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %102, i32 0, i32 2
  %104 = call i32 @spin_lock_init(i32* %103)
  %105 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %106 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 7
  store i32* @kvaser_pciefd_bittiming_const, i32** %107, align 8
  %108 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %109 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 6
  store i32* @kvaser_pciefd_bittiming_const, i32** %110, align 8
  %111 = load i32, i32* @kvaser_pciefd_set_nominal_bittiming, align 4
  %112 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %113 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %113, i32 0, i32 5
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* @kvaser_pciefd_set_data_bittiming, align 4
  %116 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %117 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 4
  store i32 %115, i32* %118, align 8
  %119 = load i32, i32* @kvaser_pciefd_set_mode, align 4
  %120 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %121 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 3
  store i32 %119, i32* %122, align 4
  %123 = load i32, i32* @kvaser_pciefd_get_berr_counter, align 4
  %124 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %125 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %124, i32 0, i32 1
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 2
  store i32 %123, i32* %126, align 8
  %127 = load i32, i32* @CAN_CTRLMODE_LISTENONLY, align 4
  %128 = load i32, i32* @CAN_CTRLMODE_FD, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @CAN_CTRLMODE_FD_NON_ISO, align 4
  %131 = or i32 %129, %130
  %132 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %133 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 1
  store i32 %131, i32* %134, align 4
  %135 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %136 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* @KVASER_PCIEFD_KCAN_STAT_REG, align 8
  %139 = add nsw i64 %137, %138
  %140 = call i32 @ioread32(i64 %139)
  store i32 %140, i32* %7, align 4
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* @KVASER_PCIEFD_KCAN_STAT_FD, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %156, label %145

145:                                              ; preds = %85
  %146 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %147 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %146, i32 0, i32 2
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i32, i32* %4, align 4
  %151 = call i32 (i32*, i8*, ...) @dev_err(i32* %149, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %150)
  %152 = load %struct.net_device*, %struct.net_device** %5, align 8
  %153 = call i32 @free_candev(%struct.net_device* %152)
  %154 = load i32, i32* @ENODEV, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  br label %208

156:                                              ; preds = %85
  %157 = load i32, i32* %7, align 4
  %158 = load i32, i32* @KVASER_PCIEFD_KCAN_STAT_CAP, align 4
  %159 = and i32 %157, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load i32, i32* @CAN_CTRLMODE_ONE_SHOT, align 4
  %163 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %164 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = or i32 %166, %162
  store i32 %167, i32* %165, align 4
  br label %168

168:                                              ; preds = %161, %156
  %169 = load i32, i32* @IFF_ECHO, align 4
  %170 = load %struct.net_device*, %struct.net_device** %5, align 8
  %171 = getelementptr inbounds %struct.net_device, %struct.net_device* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = or i32 %172, %169
  store i32 %173, i32* %171, align 8
  %174 = load %struct.net_device*, %struct.net_device** %5, align 8
  %175 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %176 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %175, i32 0, i32 2
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = call i32 @SET_NETDEV_DEV(%struct.net_device* %174, i32* %178)
  %180 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %181 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %180, i32 0, i32 0
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* @KVASER_PCIEFD_KCAN_IRQ_REG, align 8
  %184 = add nsw i64 %182, %183
  %185 = call i32 @iowrite32(i32 -1, i64 %184)
  %186 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_ABD, align 4
  %187 = load i32, i32* @KVASER_PCIEFD_KCAN_IRQ_TFD, align 4
  %188 = or i32 %186, %187
  %189 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %190 = getelementptr inbounds %struct.kvaser_pciefd_can, %struct.kvaser_pciefd_can* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = load i64, i64* @KVASER_PCIEFD_KCAN_IEN_REG, align 8
  %193 = add nsw i64 %191, %192
  %194 = call i32 @iowrite32(i32 %188, i64 %193)
  %195 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %196 = load %struct.kvaser_pciefd*, %struct.kvaser_pciefd** %3, align 8
  %197 = getelementptr inbounds %struct.kvaser_pciefd, %struct.kvaser_pciefd* %196, i32 0, i32 1
  %198 = load %struct.kvaser_pciefd_can**, %struct.kvaser_pciefd_can*** %197, align 8
  %199 = load i32, i32* %4, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %198, i64 %200
  store %struct.kvaser_pciefd_can* %195, %struct.kvaser_pciefd_can** %201, align 8
  %202 = load %struct.kvaser_pciefd_can*, %struct.kvaser_pciefd_can** %6, align 8
  %203 = call i32 @kvaser_pciefd_pwm_start(%struct.kvaser_pciefd_can* %202)
  br label %204

204:                                              ; preds = %168
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %9

207:                                              ; preds = %9
  store i32 0, i32* %2, align 4
  br label %208

208:                                              ; preds = %207, %145, %75, %20
  %209 = load i32, i32* %2, align 4
  ret i32 %209
}

declare dso_local %struct.net_device* @alloc_candev(i32, i32) #1

declare dso_local %struct.kvaser_pciefd_can* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @free_candev(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @kvaser_pciefd_pwm_start(%struct.kvaser_pciefd_can*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
