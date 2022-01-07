; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c__init_airo_card.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c__init_airo_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i16, i32, i8*, %struct.airo_info*, i32, i32, i32, %struct.TYPE_8__*, i32*, i32* }
%struct.airo_info = type { i32, i32, i32, i32, %struct.pci_dev*, i32, i32, i32, i32, %struct.net_device*, i32*, i32, i32, %struct.net_device*, i32, %struct.TYPE_8__, i32, i32, %struct.TYPE_7__, i32*, i32, %struct.TYPE_6__, i32, i32, i64 }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.pci_dev = type { i32 }
%struct.device = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@ether_setup = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Couldn't alloc_etherdev\00", align 1
@FLAG_RADIO_DOWN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"Found an MPI350 card\00", align 1
@FLAG_MPI = common dso_local global i32 0, align 4
@mpi_netdev_ops = common dso_local global i32 0, align 4
@airo_netdev_ops = common dso_local global i32 0, align 4
@airo_handler_def = common dso_local global i32 0, align 4
@IFF_TX_SKB_SHARING = common dso_local global i32 0, align 4
@MIC_MSGLEN_MAX = common dso_local global i32 0, align 4
@DRV_NAME = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Couldn't request region\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Could not map memory\00", align 1
@probe = common dso_local global i64 0, align 8
@SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"MAC could not be enabled\00", align 1
@EIO = common dso_local global i32 0, align 4
@fast_bap_read = common dso_local global i32 0, align 4
@FLAG_FLASHING = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c"eth%d\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"Couldn't register_netdev\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"Firmware version %x.%x.%02d\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"WPA supported.\00", align 1
@FLAG_WPA_CAPABLE = common dso_local global i32 0, align 4
@RID_WPA_BSSLISTFIRST = common dso_local global i32 0, align 4
@RID_WPA_BSSLISTNEXT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [59 x i8] c"WPA unsupported with firmware versions older than 5.30.17.\00", align 1
@RID_BSSLISTFIRST = common dso_local global i32 0, align 4
@RID_BSSLISTNEXT = common dso_local global i32 0, align 4
@FLAG_REGISTERED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"MAC enabled %pM\00", align 1
@MAX_FIDS = common dso_local global i32 0, align 4
@AIRO_DEF_MTU = common dso_local global i32 0, align 4
@PCI_SHARED_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (i16, i32, i32, %struct.pci_dev*, %struct.device*)* @_init_airo_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @_init_airo_card(i16 zeroext %0, i32 %1, i32 %2, %struct.pci_dev* %3, %struct.device* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pci_dev*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.airo_info*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_9__, align 4
  store i16 %0, i16* %7, align 2
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.pci_dev* %3, %struct.pci_dev** %10, align 8
  store %struct.device* %4, %struct.device** %11, align 8
  %17 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %18 = load i32, i32* @ether_setup, align 4
  %19 = call %struct.net_device* @alloc_netdev(i32 144, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %18)
  store %struct.net_device* %19, %struct.net_device** %12, align 8
  %20 = load %struct.net_device*, %struct.net_device** %12, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %5
  %23 = call i32 @airo_print_err(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %6, align 8
  br label %433

24:                                               ; preds = %5
  %25 = load %struct.net_device*, %struct.net_device** %12, align 8
  %26 = call %struct.airo_info* @netdev_priv(%struct.net_device* %25)
  %27 = load %struct.net_device*, %struct.net_device** %12, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 3
  store %struct.airo_info* %26, %struct.airo_info** %28, align 8
  store %struct.airo_info* %26, %struct.airo_info** %13, align 8
  %29 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %30 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %29, i32 0, i32 9
  store %struct.net_device* null, %struct.net_device** %30, align 8
  %31 = load i32, i32* @FLAG_RADIO_DOWN, align 4
  %32 = shl i32 1, %31
  %33 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %34 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %36 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %35, i32 0, i32 24
  store i64 0, i64* %36, align 8
  %37 = load %struct.net_device*, %struct.net_device** %12, align 8
  %38 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %39 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %38, i32 0, i32 13
  store %struct.net_device* %37, %struct.net_device** %39, align 8
  %40 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %41 = icmp ne %struct.pci_dev* %40, null
  br i1 %41, label %42, label %58

42:                                               ; preds = %24
  %43 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 20480
  br i1 %46, label %52, label %47

47:                                               ; preds = %42
  %48 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 42244
  br i1 %51, label %52, label %58

52:                                               ; preds = %47, %42
  %53 = call i32 @airo_print_dbg(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %54 = load i32, i32* @FLAG_MPI, align 4
  %55 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %56 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %55, i32 0, i32 0
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  br label %58

58:                                               ; preds = %52, %47, %24
  %59 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %60 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %59, i32 0, i32 23
  %61 = call i32 @spin_lock_init(i32* %60)
  %62 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %63 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %62, i32 0, i32 22
  %64 = call i32 @sema_init(i32* %63, i32 1)
  %65 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %66 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %65, i32 0, i32 21
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i64 0, i64* %67, align 8
  %68 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %69 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %70 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %69, i32 0, i32 4
  store %struct.pci_dev* %68, %struct.pci_dev** %70, align 8
  %71 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %72 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %71, i32 0, i32 20
  %73 = call i32 @init_waitqueue_head(i32* %72)
  %74 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %75 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %74, i32 0, i32 19
  store i32* null, i32** %75, align 8
  %76 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %77 = call i32 @add_airo_dev(%struct.airo_info* %76)
  %78 = call i32 @cpu_to_le16(i32 4)
  %79 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %80 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %79, i32 0, i32 18
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %83 = call i64 @airo_networks_allocate(%struct.airo_info* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %58
  br label %428

86:                                               ; preds = %58
  %87 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %88 = call i32 @airo_networks_initialize(%struct.airo_info* %87)
  %89 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %90 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %89, i32 0, i32 17
  %91 = call i32 @skb_queue_head_init(i32* %90)
  %92 = load i32, i32* @FLAG_MPI, align 4
  %93 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %94 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %93, i32 0, i32 0
  %95 = call i64 @test_bit(i32 %92, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %86
  %98 = load %struct.net_device*, %struct.net_device** %12, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 9
  store i32* @mpi_netdev_ops, i32** %99, align 8
  br label %103

100:                                              ; preds = %86
  %101 = load %struct.net_device*, %struct.net_device** %12, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 9
  store i32* @airo_netdev_ops, i32** %102, align 8
  br label %103

103:                                              ; preds = %100, %97
  %104 = load %struct.net_device*, %struct.net_device** %12, align 8
  %105 = getelementptr inbounds %struct.net_device, %struct.net_device* %104, i32 0, i32 8
  store i32* @airo_handler_def, i32** %105, align 8
  %106 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %107 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %106, i32 0, i32 16
  %108 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %109 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %108, i32 0, i32 15
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32* %107, i32** %110, align 8
  %111 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %112 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %111, i32 0, i32 15
  %113 = load %struct.net_device*, %struct.net_device** %12, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 7
  store %struct.TYPE_8__* %112, %struct.TYPE_8__** %114, align 8
  %115 = load i16, i16* %7, align 2
  %116 = load %struct.net_device*, %struct.net_device** %12, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  store i16 %115, i16* %117, align 8
  %118 = load i32, i32* %8, align 4
  %119 = load %struct.net_device*, %struct.net_device** %12, align 8
  %120 = getelementptr inbounds %struct.net_device, %struct.net_device* %119, i32 0, i32 1
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @IFF_TX_SKB_SHARING, align 4
  %122 = xor i32 %121, -1
  %123 = load %struct.net_device*, %struct.net_device** %12, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 6
  %125 = load i32, i32* %124, align 8
  %126 = and i32 %125, %122
  store i32 %126, i32* %124, align 8
  %127 = load i32, i32* @MIC_MSGLEN_MAX, align 4
  %128 = load %struct.net_device*, %struct.net_device** %12, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 4
  %130 = load %struct.net_device*, %struct.net_device** %12, align 8
  %131 = load %struct.device*, %struct.device** %11, align 8
  %132 = call i32 @SET_NETDEV_DEV(%struct.net_device* %130, %struct.device* %131)
  %133 = load %struct.net_device*, %struct.net_device** %12, align 8
  %134 = call i32 @reset_card(%struct.net_device* %133, i32 1)
  %135 = call i32 @msleep(i32 400)
  %136 = load i32, i32* %9, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %153, label %138

138:                                              ; preds = %103
  %139 = load %struct.net_device*, %struct.net_device** %12, align 8
  %140 = getelementptr inbounds %struct.net_device, %struct.net_device* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @DRV_NAME, align 4
  %143 = call i32 @request_region(i32 %141, i32 64, i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %152, label %145

145:                                              ; preds = %138
  %146 = load i32, i32* @EBUSY, align 4
  %147 = sub nsw i32 0, %146
  store i32 %147, i32* %15, align 4
  %148 = load %struct.net_device*, %struct.net_device** %12, align 8
  %149 = getelementptr inbounds %struct.net_device, %struct.net_device* %148, i32 0, i32 2
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @airo_print_err(i8* %150, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %425

152:                                              ; preds = %138
  br label %153

153:                                              ; preds = %152, %103
  %154 = load i32, i32* @FLAG_MPI, align 4
  %155 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %156 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %155, i32 0, i32 0
  %157 = call i64 @test_bit(i32 %154, i32* %156)
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %167

159:                                              ; preds = %153
  %160 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %161 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %162 = call i64 @mpi_map_card(%struct.airo_info* %160, %struct.pci_dev* %161)
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %159
  %165 = call i32 @airo_print_err(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0))
  br label %416

166:                                              ; preds = %159
  br label %167

167:                                              ; preds = %166, %153
  %168 = load i64, i64* @probe, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %186

170:                                              ; preds = %167
  %171 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %172 = load %struct.net_device*, %struct.net_device** %12, align 8
  %173 = getelementptr inbounds %struct.net_device, %struct.net_device* %172, i32 0, i32 4
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @setup_card(%struct.airo_info* %171, i32 %174, i32 1)
  %176 = load i32, i32* @SUCCESS, align 4
  %177 = icmp ne i32 %175, %176
  br i1 %177, label %178, label %185

178:                                              ; preds = %170
  %179 = load %struct.net_device*, %struct.net_device** %12, align 8
  %180 = getelementptr inbounds %struct.net_device, %struct.net_device* %179, i32 0, i32 2
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @airo_print_err(i8* %181, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %183 = load i32, i32* @EIO, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %15, align 4
  br label %384

185:                                              ; preds = %170
  br label %201

186:                                              ; preds = %167
  %187 = load i32, i32* @FLAG_MPI, align 4
  %188 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %189 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %188, i32 0, i32 0
  %190 = call i64 @test_bit(i32 %187, i32* %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %186
  %193 = load i32, i32* @fast_bap_read, align 4
  %194 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %195 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %194, i32 0, i32 14
  store i32 %193, i32* %195, align 8
  %196 = load i32, i32* @FLAG_FLASHING, align 4
  %197 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %198 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %197, i32 0, i32 0
  %199 = call i32 @set_bit(i32 %196, i32* %198)
  br label %200

200:                                              ; preds = %192, %186
  br label %201

201:                                              ; preds = %200, %185
  %202 = load %struct.net_device*, %struct.net_device** %12, align 8
  %203 = getelementptr inbounds %struct.net_device, %struct.net_device* %202, i32 0, i32 2
  %204 = load i8*, i8** %203, align 8
  %205 = call i32 @strcpy(i8* %204, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %206 = load %struct.net_device*, %struct.net_device** %12, align 8
  %207 = call i32 @register_netdev(%struct.net_device* %206)
  store i32 %207, i32* %15, align 4
  %208 = load i32, i32* %15, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %201
  %211 = load %struct.net_device*, %struct.net_device** %12, align 8
  %212 = getelementptr inbounds %struct.net_device, %struct.net_device* %211, i32 0, i32 2
  %213 = load i8*, i8** %212, align 8
  %214 = call i32 @airo_print_err(i8* %213, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.7, i64 0, i64 0))
  br label %384

215:                                              ; preds = %201
  %216 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %217 = load %struct.net_device*, %struct.net_device** %12, align 8
  %218 = call %struct.net_device* @init_wifidev(%struct.airo_info* %216, %struct.net_device* %217)
  %219 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %220 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %219, i32 0, i32 9
  store %struct.net_device* %218, %struct.net_device** %220, align 8
  %221 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %222 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %221, i32 0, i32 9
  %223 = load %struct.net_device*, %struct.net_device** %222, align 8
  %224 = icmp ne %struct.net_device* %223, null
  br i1 %224, label %226, label %225

225:                                              ; preds = %215
  br label %381

226:                                              ; preds = %215
  %227 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %228 = call i32 @readCapabilityRid(%struct.airo_info* %227, %struct.TYPE_9__* %16, i32 1)
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %15, align 4
  %230 = load i32, i32* @SUCCESS, align 4
  %231 = icmp ne i32 %229, %230
  br i1 %231, label %232, label %235

232:                                              ; preds = %226
  %233 = load i32, i32* @EIO, align 4
  %234 = sub nsw i32 0, %233
  store i32 %234, i32* %15, align 4
  br label %372

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @cpu_to_le16(i32 2)
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  %241 = zext i1 %240 to i64
  %242 = select i1 %240, i32 1, i32 0
  %243 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %244 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %243, i32 0, i32 1
  store i32 %242, i32* %244, align 4
  %245 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %246 = load i32, i32* %245, align 4
  %247 = call i32 @cpu_to_le16(i32 128)
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  %250 = zext i1 %249 to i64
  %251 = select i1 %249, i32 3, i32 0
  %252 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %253 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %252, i32 0, i32 2
  store i32 %251, i32* %253, align 8
  %254 = load %struct.net_device*, %struct.net_device** %12, align 8
  %255 = getelementptr inbounds %struct.net_device, %struct.net_device* %254, i32 0, i32 2
  %256 = load i8*, i8** %255, align 8
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @le16_to_cpu(i32 %258)
  %260 = ashr i32 %259, 8
  %261 = and i32 %260, 15
  %262 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = call i32 @le16_to_cpu(i32 %263)
  %265 = and i32 %264, 255
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = call i32 @le16_to_cpu(i32 %267)
  %269 = call i32 (i8*, i8*, ...) @airo_print_info(i8* %256, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i32 %261, i32 %265, i32 %268)
  %270 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @le16_to_cpu(i32 %271)
  %273 = icmp sgt i32 %272, 1328
  br i1 %273, label %284, label %274

274:                                              ; preds = %235
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 2
  %276 = load i32, i32* %275, align 4
  %277 = call i32 @le16_to_cpu(i32 %276)
  %278 = icmp eq i32 %277, 1328
  br i1 %278, label %279, label %303

279:                                              ; preds = %274
  %280 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @le16_to_cpu(i32 %281)
  %283 = icmp sge i32 %282, 17
  br i1 %283, label %284, label %303

284:                                              ; preds = %279, %235
  %285 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %286 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %285, i32 0, i32 13
  %287 = load %struct.net_device*, %struct.net_device** %286, align 8
  %288 = getelementptr inbounds %struct.net_device, %struct.net_device* %287, i32 0, i32 2
  %289 = load i8*, i8** %288, align 8
  %290 = call i32 (i8*, i8*, ...) @airo_print_info(i8* %289, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %291 = load i32, i32* @FLAG_WPA_CAPABLE, align 4
  %292 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %293 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %292, i32 0, i32 0
  %294 = call i32 @set_bit(i32 %291, i32* %293)
  %295 = load i32, i32* @RID_WPA_BSSLISTFIRST, align 4
  %296 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %297 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %296, i32 0, i32 12
  store i32 %295, i32* %297, align 4
  %298 = load i32, i32* @RID_WPA_BSSLISTNEXT, align 4
  %299 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %300 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %299, i32 0, i32 11
  store i32 %298, i32* %300, align 8
  %301 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %302 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %301, i32 0, i32 3
  store i32 4, i32* %302, align 4
  br label %318

303:                                              ; preds = %279, %274
  %304 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %305 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %304, i32 0, i32 13
  %306 = load %struct.net_device*, %struct.net_device** %305, align 8
  %307 = getelementptr inbounds %struct.net_device, %struct.net_device* %306, i32 0, i32 2
  %308 = load i8*, i8** %307, align 8
  %309 = call i32 (i8*, i8*, ...) @airo_print_info(i8* %308, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.10, i64 0, i64 0))
  %310 = load i32, i32* @RID_BSSLISTFIRST, align 4
  %311 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %312 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %311, i32 0, i32 12
  store i32 %310, i32* %312, align 4
  %313 = load i32, i32* @RID_BSSLISTNEXT, align 4
  %314 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %315 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %314, i32 0, i32 11
  store i32 %313, i32* %315, align 8
  %316 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %317 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %316, i32 0, i32 3
  store i32 0, i32* %317, align 4
  br label %318

318:                                              ; preds = %303, %284
  %319 = load i32, i32* @FLAG_REGISTERED, align 4
  %320 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %321 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %320, i32 0, i32 0
  %322 = call i32 @set_bit(i32 %319, i32* %321)
  %323 = load %struct.net_device*, %struct.net_device** %12, align 8
  %324 = getelementptr inbounds %struct.net_device, %struct.net_device* %323, i32 0, i32 2
  %325 = load i8*, i8** %324, align 8
  %326 = load %struct.net_device*, %struct.net_device** %12, align 8
  %327 = getelementptr inbounds %struct.net_device, %struct.net_device* %326, i32 0, i32 4
  %328 = load i32, i32* %327, align 8
  %329 = call i32 (i8*, i8*, ...) @airo_print_info(i8* %325, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i32 %328)
  %330 = load i64, i64* @probe, align 8
  %331 = icmp ne i64 %330, 0
  br i1 %331, label %332, label %362

332:                                              ; preds = %318
  %333 = load i32, i32* @FLAG_MPI, align 4
  %334 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %335 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %334, i32 0, i32 0
  %336 = call i64 @test_bit(i32 %333, i32* %335)
  %337 = icmp ne i64 %336, 0
  br i1 %337, label %362, label %338

338:                                              ; preds = %332
  store i32 0, i32* %14, align 4
  br label %339

339:                                              ; preds = %358, %338
  %340 = load i32, i32* %14, align 4
  %341 = load i32, i32* @MAX_FIDS, align 4
  %342 = icmp slt i32 %340, %341
  br i1 %342, label %343, label %361

343:                                              ; preds = %339
  %344 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %345 = load i32, i32* @AIRO_DEF_MTU, align 4
  %346 = load i32, i32* %14, align 4
  %347 = load i32, i32* @MAX_FIDS, align 4
  %348 = sdiv i32 %347, 2
  %349 = icmp sge i32 %346, %348
  %350 = zext i1 %349 to i32
  %351 = call i32 @transmit_allocate(%struct.airo_info* %344, i32 %345, i32 %350)
  %352 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %353 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %352, i32 0, i32 10
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %14, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  store i32 %351, i32* %357, align 4
  br label %358

358:                                              ; preds = %343
  %359 = load i32, i32* %14, align 4
  %360 = add nsw i32 %359, 1
  store i32 %360, i32* %14, align 4
  br label %339

361:                                              ; preds = %339
  br label %362

362:                                              ; preds = %361, %332, %318
  %363 = load %struct.net_device*, %struct.net_device** %12, align 8
  %364 = load %struct.net_device*, %struct.net_device** %12, align 8
  %365 = getelementptr inbounds %struct.net_device, %struct.net_device* %364, i32 0, i32 3
  %366 = load %struct.airo_info*, %struct.airo_info** %365, align 8
  %367 = call i64 @setup_proc_entry(%struct.net_device* %363, %struct.airo_info* %366)
  %368 = icmp slt i64 %367, 0
  br i1 %368, label %369, label %370

369:                                              ; preds = %362
  br label %372

370:                                              ; preds = %362
  %371 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %371, %struct.net_device** %6, align 8
  br label %433

372:                                              ; preds = %369, %232
  %373 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %374 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %373, i32 0, i32 9
  %375 = load %struct.net_device*, %struct.net_device** %374, align 8
  %376 = call i32 @unregister_netdev(%struct.net_device* %375)
  %377 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %378 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %377, i32 0, i32 9
  %379 = load %struct.net_device*, %struct.net_device** %378, align 8
  %380 = call i32 @free_netdev(%struct.net_device* %379)
  br label %381

381:                                              ; preds = %372, %225
  %382 = load %struct.net_device*, %struct.net_device** %12, align 8
  %383 = call i32 @unregister_netdev(%struct.net_device* %382)
  br label %384

384:                                              ; preds = %381, %210, %178
  %385 = load i32, i32* @FLAG_MPI, align 4
  %386 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %387 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %386, i32 0, i32 0
  %388 = call i64 @test_bit(i32 %385, i32* %387)
  %389 = icmp ne i64 %388, 0
  br i1 %389, label %390, label %415

390:                                              ; preds = %384
  %391 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %392 = icmp ne %struct.pci_dev* %391, null
  br i1 %392, label %393, label %415

393:                                              ; preds = %390
  %394 = load %struct.pci_dev*, %struct.pci_dev** %10, align 8
  %395 = load i32, i32* @PCI_SHARED_LEN, align 4
  %396 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %397 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %396, i32 0, i32 8
  %398 = load i32, i32* %397, align 4
  %399 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %400 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %399, i32 0, i32 7
  %401 = load i32, i32* %400, align 8
  %402 = call i32 @pci_free_consistent(%struct.pci_dev* %394, i32 %395, i32 %398, i32 %401)
  %403 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %404 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %403, i32 0, i32 6
  %405 = load i32, i32* %404, align 4
  %406 = call i32 @iounmap(i32 %405)
  %407 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %408 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %407, i32 0, i32 5
  %409 = load i32, i32* %408, align 8
  %410 = call i32 @iounmap(i32 %409)
  %411 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %412 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %411, i32 0, i32 4
  %413 = load %struct.pci_dev*, %struct.pci_dev** %412, align 8
  %414 = call i32 @mpi_unmap_card(%struct.pci_dev* %413)
  br label %415

415:                                              ; preds = %393, %390, %384
  br label %416

416:                                              ; preds = %415, %164
  %417 = load i32, i32* %9, align 4
  %418 = icmp ne i32 %417, 0
  br i1 %418, label %424, label %419

419:                                              ; preds = %416
  %420 = load %struct.net_device*, %struct.net_device** %12, align 8
  %421 = getelementptr inbounds %struct.net_device, %struct.net_device* %420, i32 0, i32 1
  %422 = load i32, i32* %421, align 4
  %423 = call i32 @release_region(i32 %422, i32 64)
  br label %424

424:                                              ; preds = %419, %416
  br label %425

425:                                              ; preds = %424, %145
  %426 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %427 = call i32 @airo_networks_free(%struct.airo_info* %426)
  br label %428

428:                                              ; preds = %425, %85
  %429 = load %struct.airo_info*, %struct.airo_info** %13, align 8
  %430 = call i32 @del_airo_dev(%struct.airo_info* %429)
  %431 = load %struct.net_device*, %struct.net_device** %12, align 8
  %432 = call i32 @free_netdev(%struct.net_device* %431)
  store %struct.net_device* null, %struct.net_device** %6, align 8
  br label %433

433:                                              ; preds = %428, %370, %22
  %434 = load %struct.net_device*, %struct.net_device** %6, align 8
  ret %struct.net_device* %434
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local i32 @airo_print_err(i8*, i8*) #1

declare dso_local %struct.airo_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @airo_print_dbg(i8*, i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @sema_init(i32*, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @add_airo_dev(%struct.airo_info*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @airo_networks_allocate(%struct.airo_info*) #1

declare dso_local i32 @airo_networks_initialize(%struct.airo_info*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, %struct.device*) #1

declare dso_local i32 @reset_card(%struct.net_device*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i64 @mpi_map_card(%struct.airo_info*, %struct.pci_dev*) #1

declare dso_local i32 @setup_card(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local %struct.net_device* @init_wifidev(%struct.airo_info*, %struct.net_device*) #1

declare dso_local i32 @readCapabilityRid(%struct.airo_info*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @airo_print_info(i8*, i8*, ...) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @transmit_allocate(%struct.airo_info*, i32, i32) #1

declare dso_local i64 @setup_proc_entry(%struct.net_device*, %struct.airo_info*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @mpi_unmap_card(%struct.pci_dev*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @airo_networks_free(%struct.airo_info*) #1

declare dso_local i32 @del_airo_dev(%struct.airo_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
