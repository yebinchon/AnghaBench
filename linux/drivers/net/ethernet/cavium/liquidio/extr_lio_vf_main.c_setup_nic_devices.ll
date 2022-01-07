; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_setup_nic_devices.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_setup_nic_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i64, i64, i32, i32, %struct.TYPE_23__*, %struct.TYPE_17__, %struct.octdev_props*, %struct.TYPE_26__, %struct.TYPE_24__ }
%struct.TYPE_23__ = type { i32 }
%struct.TYPE_17__ = type { i32 (%struct.octeon_device.0*, i32)* }
%struct.octeon_device.0 = type opaque
%struct.octdev_props = type { %struct.net_device*, i32 }
%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32* }
%struct.TYPE_26__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.liquidio_if_cfg_resp = type { i32, %struct.TYPE_32__ }
%struct.TYPE_32__ = type { i8*, %struct.TYPE_31__, i32, i32 }
%struct.TYPE_31__ = type { i32, i32, %struct.TYPE_30__, i32, i64, %struct.TYPE_28__*, %struct.TYPE_27__* }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_27__ = type { i32 }
%struct.octeon_soft_command = type { i32, i32, i32, i64, i64, i64 }
%union.oct_nic_if_cfg = type { %struct.TYPE_25__ }
%struct.TYPE_25__ = type { i64, i32, i32 }
%struct.lio_version = type { i8*, i8*, i8* }
%struct.lio = type { i32, i32, i32, i32, %struct.octeon_device*, i32, i32, i32, i32, %struct.TYPE_22__, %struct.net_device*, %struct.octdev_props*, i32 }
%struct.TYPE_22__ = type { i32, i32, %struct.TYPE_21__*, %struct.TYPE_19__*, i64, i32, i32, i32, %struct.TYPE_29__ }
%struct.TYPE_21__ = type { %struct.TYPE_20__, i32 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_29__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@OPCODE_NIC = common dso_local global i32 0, align 4
@OPCODE_NIC_INFO = common dso_local global i32 0, align 4
@lio_nic_info = common dso_local global i32 0, align 4
@REQTYPE_NORESP_NET = common dso_local global i32 0, align 4
@free_netbuf = common dso_local global i32 0, align 4
@REQTYPE_NORESP_NET_SG = common dso_local global i32 0, align 4
@free_netsgbuf = common dso_local global i32 0, align 4
@REQTYPE_RESP_NET_SG = common dso_local global i32 0, align 4
@free_netsgbuf_with_resp = common dso_local global i32 0, align 4
@LIQUIDIO_BASE_MAJOR_VERSION = common dso_local global i32 0, align 4
@LIQUIDIO_BASE_MINOR_VERSION = common dso_local global i32 0, align 4
@LIQUIDIO_BASE_MICRO_VERSION = common dso_local global i32 0, align 4
@OPCODE_NIC_IF_CFG = common dso_local global i32 0, align 4
@OCTEON_REQUEST_PENDING = common dso_local global i32 0, align 4
@IQ_SEND_FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"iq/oq config failed status: %x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"iq/oq config failed, retval = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"Got bad iqueues (%016llx) or oqueues (%016llx) from firmware.\0A\00", align 1
@.str.4 = private unnamed_addr constant [76 x i8] c"interface %d, iqmask %016llx, oqmask %016llx, numiqueues %d, numoqueues %d\0A\00", align 1
@LIO_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [26 x i8] c"Device allocation failed\0A\00", align 1
@lionetdevops = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@DEFAULT_MSG_ENABLE = common dso_local global i32 0, align 4
@NETIF_F_HIGHDMA = common dso_local global i32 0, align 4
@NETIF_F_IP_CSUM = common dso_local global i32 0, align 4
@NETIF_F_IPV6_CSUM = common dso_local global i32 0, align 4
@NETIF_F_SG = common dso_local global i32 0, align 4
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@NETIF_F_GRO = common dso_local global i32 0, align 4
@NETIF_F_LRO = common dso_local global i32 0, align 4
@OCTNIC_GSO_MAX_SIZE = common dso_local global i32 0, align 4
@NETIF_F_GSO_UDP_TUNNEL = common dso_local global i32 0, align 4
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_TX = common dso_local global i32 0, align 4
@LIO_MIN_MTU_SIZE = common dso_local global i32 0, align 4
@LIO_MAX_MTU_SIZE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"if%d gmx: %d hw_addr: 0x%llx\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"I/O queues creation failed\0A\00", align 1
@LIO_IFSTATE_DROQ_OPS = common dso_local global i32 0, align 4
@OCTEON_ALL_INTR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [31 x i8] c"Gather list allocation failed\0A\00", align 1
@OCTEON_CN23XX_VF_VID = common dso_local global i64 0, align 8
@OCT_PRIV_FLAG_DEFAULT = common dso_local global i32 0, align 4
@OCTNET_CMD_LRO_ENABLE = common dso_local global i32 0, align 4
@OCTNIC_LROIPV4 = common dso_local global i32 0, align 4
@OCTNIC_LROIPV6 = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"Device registration failed\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"Setup NIC ifidx:%d mac:%02x%02x%02x%02x%02x%02x\0A\00", align 1
@LIO_IFSTATE_REGISTERED = common dso_local global i32 0, align 4
@OCTNET_CMD_TNL_RX_CSUM_CTL = common dso_local global i32 0, align 4
@OCTNET_CMD_RXCSUM_ENABLE = common dso_local global i32 0, align 4
@OCTNET_CMD_TNL_TX_CSUM_CTL = common dso_local global i32 0, align 4
@OCTNET_CMD_TXCSUM_ENABLE = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [31 x i8] c"NIC ifidx:%d Setup successful\0A\00", align 1
@.str.12 = private unnamed_addr constant [27 x i8] c"NIC ifidx:%d Setup failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @setup_nic_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setup_nic_devices(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.liquidio_if_cfg_resp*, align 8
  %10 = alloca %struct.octeon_soft_command*, align 8
  %11 = alloca %union.oct_nic_if_cfg, align 8
  %12 = alloca %struct.octdev_props*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca %struct.lio_version*, align 8
  %15 = alloca %struct.lio*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  store %struct.lio* null, %struct.lio** %15, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %16, align 8
  %25 = alloca i64, i64 %23, align 16
  store i64 %23, i64* %17, align 8
  %26 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %27 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %20, align 4
  %29 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %30 = load i32, i32* @OPCODE_NIC, align 4
  %31 = load i32, i32* @OPCODE_NIC_INFO, align 4
  %32 = load i32, i32* @lio_nic_info, align 4
  %33 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %34 = call i32 @octeon_register_dispatch_fn(%struct.octeon_device* %29, i32 %30, i32 %31, i32 %32, %struct.octeon_device* %33)
  %35 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %36 = load i32, i32* @REQTYPE_NORESP_NET, align 4
  %37 = load i32, i32* @free_netbuf, align 4
  %38 = call i32 @octeon_register_reqtype_free_fn(%struct.octeon_device* %35, i32 %36, i32 %37)
  %39 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %40 = load i32, i32* @REQTYPE_NORESP_NET_SG, align 4
  %41 = load i32, i32* @free_netsgbuf, align 4
  %42 = call i32 @octeon_register_reqtype_free_fn(%struct.octeon_device* %39, i32 %40, i32 %41)
  %43 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %44 = load i32, i32* @REQTYPE_RESP_NET_SG, align 4
  %45 = load i32, i32* @free_netsgbuf_with_resp, align 4
  %46 = call i32 @octeon_register_reqtype_free_fn(%struct.octeon_device* %43, i32 %44, i32 %45)
  store i64 0, i64* %18, align 8
  br label %47

47:                                               ; preds = %686, %1
  %48 = load i64, i64* %18, align 8
  %49 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %50 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %48, %51
  br i1 %52, label %53, label %689

53:                                               ; preds = %47
  store i32 64, i32* %7, align 4
  store i32 24, i32* %8, align 4
  %54 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i64 @octeon_alloc_soft_command(%struct.octeon_device* %54, i32 %55, i32 %56, i32 0)
  %58 = inttoptr i64 %57 to %struct.octeon_soft_command*
  store %struct.octeon_soft_command* %58, %struct.octeon_soft_command** %10, align 8
  %59 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %60 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to %struct.liquidio_if_cfg_resp*
  store %struct.liquidio_if_cfg_resp* %62, %struct.liquidio_if_cfg_resp** %9, align 8
  %63 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %64 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.lio_version*
  store %struct.lio_version* %66, %struct.lio_version** %14, align 8
  %67 = load %struct.lio_version*, %struct.lio_version** %14, align 8
  %68 = bitcast %struct.lio_version* %67 to i64*
  store i64 0, i64* %68, align 8
  %69 = load i32, i32* @LIQUIDIO_BASE_MAJOR_VERSION, align 4
  %70 = call i8* @cpu_to_be16(i32 %69)
  %71 = load %struct.lio_version*, %struct.lio_version** %14, align 8
  %72 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  %73 = load i32, i32* @LIQUIDIO_BASE_MINOR_VERSION, align 4
  %74 = call i8* @cpu_to_be16(i32 %73)
  %75 = load %struct.lio_version*, %struct.lio_version** %14, align 8
  %76 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load i32, i32* @LIQUIDIO_BASE_MICRO_VERSION, align 4
  %78 = call i8* @cpu_to_be16(i32 %77)
  %79 = load %struct.lio_version*, %struct.lio_version** %14, align 8
  %80 = getelementptr inbounds %struct.lio_version, %struct.lio_version* %79, i32 0, i32 0
  store i8* %78, i8** %80, align 8
  %81 = bitcast %union.oct_nic_if_cfg* %11 to i64*
  store i64 0, i64* %81, align 8
  %82 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %83 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %82, i32 0, i32 9
  %84 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = bitcast %union.oct_nic_if_cfg* %11 to %struct.TYPE_25__*
  %87 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  %88 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %89 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %88, i32 0, i32 9
  %90 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = bitcast %union.oct_nic_if_cfg* %11 to %struct.TYPE_25__*
  %93 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = bitcast %union.oct_nic_if_cfg* %11 to %struct.TYPE_25__*
  %95 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %94, i32 0, i32 0
  store i64 0, i64* %95, align 8
  %96 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %97 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %96, i32 0, i32 3
  store i64 0, i64* %97, align 8
  %98 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %99 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %100 = load i32, i32* @OPCODE_NIC, align 4
  %101 = load i32, i32* @OPCODE_NIC_IF_CFG, align 4
  %102 = bitcast %union.oct_nic_if_cfg* %11 to i64*
  %103 = load i64, i64* %102, align 8
  %104 = call i32 @octeon_prepare_soft_command(%struct.octeon_device* %98, %struct.octeon_soft_command* %99, i32 %100, i32 %101, i32 0, i64 %103, i32 0)
  %105 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %106 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %105, i32 0, i32 2
  %107 = call i32 @init_completion(i32* %106)
  %108 = load i32, i32* @OCTEON_REQUEST_PENDING, align 4
  %109 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %110 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %109, i32 0, i32 1
  store i32 %108, i32* %110, align 4
  %111 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %112 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %113 = call i32 @octeon_send_soft_command(%struct.octeon_device* %111, %struct.octeon_soft_command* %112)
  store i32 %113, i32* %4, align 4
  %114 = load i32, i32* %4, align 4
  %115 = load i32, i32* @IQ_SEND_FAILED, align 4
  %116 = icmp eq i32 %114, %115
  br i1 %116, label %117, label %129

117:                                              ; preds = %53
  %118 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %119 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %118, i32 0, i32 5
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 0
  %122 = load i32, i32* %4, align 4
  %123 = call i32 (i32*, i8*, ...) @dev_err(i32* %121, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %125 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %126 = call i32 @octeon_free_soft_command(%struct.octeon_device* %124, %struct.octeon_soft_command* %125)
  %127 = load i32, i32* @EIO, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %709

129:                                              ; preds = %53
  %130 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %131 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %132 = call i32 @wait_for_sc_completion_timeout(%struct.octeon_device* %130, %struct.octeon_soft_command* %131, i32 0)
  store i32 %132, i32* %4, align 4
  %133 = load i32, i32* %4, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %129
  %136 = load i32, i32* %4, align 4
  store i32 %136, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %709

137:                                              ; preds = %129
  %138 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %139 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  store i32 %140, i32* %4, align 4
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %156

143:                                              ; preds = %137
  %144 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %145 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %144, i32 0, i32 5
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %145, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i32, i32* %4, align 4
  %149 = call i32 (i32*, i8*, ...) @dev_err(i32* %147, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %148)
  %150 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %151 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @WRITE_ONCE(i32 %152, i32 1)
  %154 = load i32, i32* @EIO, align 4
  %155 = sub nsw i32 0, %154
  store i32 %155, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %709

156:                                              ; preds = %137
  %157 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %158 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %157, i32 0, i32 8
  %159 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %162 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %162, i32 0, i32 0
  %164 = load i8*, i8** %163, align 8
  %165 = call i32 @snprintf(i32 %160, i32 32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %164)
  %166 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %167 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %166, i32 0, i32 1
  %168 = bitcast %struct.TYPE_32__* %167 to i64*
  %169 = call i32 @octeon_swap_8B_data(i64* %168, i32 0)
  %170 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %171 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %170, i32 0, i32 1
  %172 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @hweight64(i32 %173)
  store i32 %174, i32* %5, align 4
  %175 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %176 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %175, i32 0, i32 1
  %177 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @hweight64(i32 %178)
  store i32 %179, i32* %6, align 4
  %180 = load i32, i32* %5, align 4
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %185

182:                                              ; preds = %156
  %183 = load i32, i32* %6, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %203, label %185

185:                                              ; preds = %182, %156
  %186 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %187 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %186, i32 0, i32 5
  %188 = load %struct.TYPE_23__*, %struct.TYPE_23__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %188, i32 0, i32 0
  %190 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %191 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %195 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = call i32 (i32*, i8*, ...) @dev_err(i32* %189, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0), i32 %193, i32 %197)
  %199 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %200 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = call i32 @WRITE_ONCE(i32 %201, i32 1)
  br label %706

203:                                              ; preds = %182
  %204 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %205 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %204, i32 0, i32 5
  %206 = load %struct.TYPE_23__*, %struct.TYPE_23__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %206, i32 0, i32 0
  %208 = load i64, i64* %18, align 8
  %209 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %210 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %209, i32 0, i32 1
  %211 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %210, i32 0, i32 3
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %214 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %213, i32 0, i32 1
  %215 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %214, i32 0, i32 2
  %216 = load i32, i32* %215, align 8
  %217 = load i32, i32* %5, align 4
  %218 = load i32, i32* %6, align 4
  %219 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %207, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.4, i64 0, i64 0), i64 %208, i32 %212, i32 %216, i32 %217, i32 %218)
  %220 = load i32, i32* @LIO_SIZE, align 4
  %221 = load i32, i32* %5, align 4
  %222 = call %struct.net_device* @alloc_etherdev_mq(i32 %220, i32 %221)
  store %struct.net_device* %222, %struct.net_device** %13, align 8
  %223 = load %struct.net_device*, %struct.net_device** %13, align 8
  %224 = icmp ne %struct.net_device* %223, null
  br i1 %224, label %235, label %225

225:                                              ; preds = %203
  %226 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %227 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %226, i32 0, i32 5
  %228 = load %struct.TYPE_23__*, %struct.TYPE_23__** %227, align 8
  %229 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %228, i32 0, i32 0
  %230 = call i32 (i32*, i8*, ...) @dev_err(i32* %229, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0))
  %231 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %232 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i32 @WRITE_ONCE(i32 %233, i32 1)
  br label %706

235:                                              ; preds = %203
  %236 = load %struct.net_device*, %struct.net_device** %13, align 8
  %237 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %238 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %237, i32 0, i32 5
  %239 = load %struct.TYPE_23__*, %struct.TYPE_23__** %238, align 8
  %240 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %239, i32 0, i32 0
  %241 = call i32 @SET_NETDEV_DEV(%struct.net_device* %236, i32* %240)
  %242 = load %struct.net_device*, %struct.net_device** %13, align 8
  %243 = getelementptr inbounds %struct.net_device, %struct.net_device* %242, i32 0, i32 7
  store i32* @lionetdevops, i32** %243, align 8
  %244 = load %struct.net_device*, %struct.net_device** %13, align 8
  %245 = call %struct.lio* @GET_LIO(%struct.net_device* %244)
  store %struct.lio* %245, %struct.lio** %15, align 8
  %246 = load %struct.lio*, %struct.lio** %15, align 8
  %247 = call i32 @memset(%struct.lio* %246, i32 0, i32 112)
  %248 = load i32, i32* %20, align 4
  %249 = load %struct.lio*, %struct.lio** %15, align 8
  %250 = getelementptr inbounds %struct.lio, %struct.lio* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  %251 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %252 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %251, i32 0, i32 7
  %253 = load %struct.octdev_props*, %struct.octdev_props** %252, align 8
  %254 = load i64, i64* %18, align 8
  %255 = getelementptr inbounds %struct.octdev_props, %struct.octdev_props* %253, i64 %254
  store %struct.octdev_props* %255, %struct.octdev_props** %12, align 8
  %256 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %257 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %256, i32 0, i32 1
  %258 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %257, i32 0, i32 1
  %259 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = load %struct.octdev_props*, %struct.octdev_props** %12, align 8
  %262 = getelementptr inbounds %struct.octdev_props, %struct.octdev_props* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 8
  %263 = load %struct.net_device*, %struct.net_device** %13, align 8
  %264 = load %struct.octdev_props*, %struct.octdev_props** %12, align 8
  %265 = getelementptr inbounds %struct.octdev_props, %struct.octdev_props* %264, i32 0, i32 0
  store %struct.net_device* %263, %struct.net_device** %265, align 8
  %266 = load i32, i32* %6, align 4
  %267 = load %struct.lio*, %struct.lio** %15, align 8
  %268 = getelementptr inbounds %struct.lio, %struct.lio* %267, i32 0, i32 9
  %269 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %268, i32 0, i32 0
  store i32 %266, i32* %269, align 8
  %270 = load i32, i32* %5, align 4
  %271 = load %struct.lio*, %struct.lio** %15, align 8
  %272 = getelementptr inbounds %struct.lio, %struct.lio* %271, i32 0, i32 9
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 1
  store i32 %270, i32* %273, align 4
  store i64 0, i64* %19, align 8
  br label %274

274:                                              ; preds = %296, %235
  %275 = load i64, i64* %19, align 8
  %276 = load i32, i32* %6, align 4
  %277 = sext i32 %276 to i64
  %278 = icmp ult i64 %275, %277
  br i1 %278, label %279, label %299

279:                                              ; preds = %274
  %280 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %281 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %280, i32 0, i32 1
  %282 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %282, i32 0, i32 6
  %284 = load %struct.TYPE_27__*, %struct.TYPE_27__** %283, align 8
  %285 = load i64, i64* %19, align 8
  %286 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %284, i64 %285
  %287 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %286, i32 0, i32 0
  %288 = load i32, i32* %287, align 4
  %289 = load %struct.lio*, %struct.lio** %15, align 8
  %290 = getelementptr inbounds %struct.lio, %struct.lio* %289, i32 0, i32 9
  %291 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %290, i32 0, i32 2
  %292 = load %struct.TYPE_21__*, %struct.TYPE_21__** %291, align 8
  %293 = load i64, i64* %19, align 8
  %294 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %292, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 1
  store i32 %288, i32* %295, align 4
  br label %296

296:                                              ; preds = %279
  %297 = load i64, i64* %19, align 8
  %298 = add i64 %297, 1
  store i64 %298, i64* %19, align 8
  br label %274

299:                                              ; preds = %274
  store i64 0, i64* %19, align 8
  br label %300

300:                                              ; preds = %322, %299
  %301 = load i64, i64* %19, align 8
  %302 = load i32, i32* %5, align 4
  %303 = sext i32 %302 to i64
  %304 = icmp ult i64 %301, %303
  br i1 %304, label %305, label %325

305:                                              ; preds = %300
  %306 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %307 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %306, i32 0, i32 1
  %308 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %308, i32 0, i32 5
  %310 = load %struct.TYPE_28__*, %struct.TYPE_28__** %309, align 8
  %311 = load i64, i64* %19, align 8
  %312 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %310, i64 %311
  %313 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = load %struct.lio*, %struct.lio** %15, align 8
  %316 = getelementptr inbounds %struct.lio, %struct.lio* %315, i32 0, i32 9
  %317 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %316, i32 0, i32 3
  %318 = load %struct.TYPE_19__*, %struct.TYPE_19__** %317, align 8
  %319 = load i64, i64* %19, align 8
  %320 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %318, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %320, i32 0, i32 1
  store i32 %314, i32* %321, align 4
  br label %322

322:                                              ; preds = %305
  %323 = load i64, i64* %19, align 8
  %324 = add i64 %323, 1
  store i64 %324, i64* %19, align 8
  br label %300

325:                                              ; preds = %300
  %326 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %327 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %326, i32 0, i32 1
  %328 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %327, i32 0, i32 1
  %329 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %328, i32 0, i32 4
  %330 = load i64, i64* %329, align 8
  %331 = load %struct.lio*, %struct.lio** %15, align 8
  %332 = getelementptr inbounds %struct.lio, %struct.lio* %331, i32 0, i32 9
  %333 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %332, i32 0, i32 4
  store i64 %330, i64* %333, align 8
  %334 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %335 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %334, i32 0, i32 1
  %336 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %335, i32 0, i32 1
  %337 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 4
  %339 = load %struct.lio*, %struct.lio** %15, align 8
  %340 = getelementptr inbounds %struct.lio, %struct.lio* %339, i32 0, i32 9
  %341 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %340, i32 0, i32 5
  store i32 %338, i32* %341, align 8
  %342 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %343 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %342, i32 0, i32 1
  %344 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %343, i32 0, i32 1
  %345 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %344, i32 0, i32 2
  %346 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %345, i32 0, i32 0
  %347 = load i32, i32* %346, align 8
  %348 = load %struct.lio*, %struct.lio** %15, align 8
  %349 = getelementptr inbounds %struct.lio, %struct.lio* %348, i32 0, i32 9
  %350 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %349, i32 0, i32 8
  %351 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %350, i32 0, i32 0
  store i32 %347, i32* %351, align 4
  %352 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %353 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %352, i32 0, i32 1
  %354 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %354, i32 0, i32 1
  %356 = load i32, i32* %355, align 4
  %357 = load %struct.lio*, %struct.lio** %15, align 8
  %358 = getelementptr inbounds %struct.lio, %struct.lio* %357, i32 0, i32 9
  %359 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %358, i32 0, i32 7
  store i32 %356, i32* %359, align 8
  %360 = load %struct.liquidio_if_cfg_resp*, %struct.liquidio_if_cfg_resp** %9, align 8
  %361 = getelementptr inbounds %struct.liquidio_if_cfg_resp, %struct.liquidio_if_cfg_resp* %360, i32 0, i32 1
  %362 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %361, i32 0, i32 1
  %363 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 8
  %365 = load %struct.lio*, %struct.lio** %15, align 8
  %366 = getelementptr inbounds %struct.lio, %struct.lio* %365, i32 0, i32 9
  %367 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %366, i32 0, i32 6
  store i32 %364, i32* %367, align 4
  %368 = load i32, i32* @debug, align 4
  %369 = load i32, i32* @DEFAULT_MSG_ENABLE, align 4
  %370 = call i32 @netif_msg_init(i32 %368, i32 %369)
  %371 = load %struct.lio*, %struct.lio** %15, align 8
  %372 = getelementptr inbounds %struct.lio, %struct.lio* %371, i32 0, i32 12
  store i32 %370, i32* %372, align 8
  %373 = load i32, i32* @NETIF_F_HIGHDMA, align 4
  %374 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %375 = or i32 %373, %374
  %376 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %377 = or i32 %375, %376
  %378 = load i32, i32* @NETIF_F_SG, align 4
  %379 = or i32 %377, %378
  %380 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %381 = or i32 %379, %380
  %382 = load i32, i32* @NETIF_F_TSO, align 4
  %383 = or i32 %381, %382
  %384 = load i32, i32* @NETIF_F_TSO6, align 4
  %385 = or i32 %383, %384
  %386 = load i32, i32* @NETIF_F_GRO, align 4
  %387 = or i32 %385, %386
  %388 = load i32, i32* @NETIF_F_LRO, align 4
  %389 = or i32 %387, %388
  %390 = load %struct.lio*, %struct.lio** %15, align 8
  %391 = getelementptr inbounds %struct.lio, %struct.lio* %390, i32 0, i32 1
  store i32 %389, i32* %391, align 4
  %392 = load %struct.net_device*, %struct.net_device** %13, align 8
  %393 = load i32, i32* @OCTNIC_GSO_MAX_SIZE, align 4
  %394 = call i32 @netif_set_gso_max_size(%struct.net_device* %392, i32 %393)
  %395 = load i32, i32* @NETIF_F_IP_CSUM, align 4
  %396 = load i32, i32* @NETIF_F_IPV6_CSUM, align 4
  %397 = or i32 %395, %396
  %398 = load i32, i32* @NETIF_F_GSO_UDP_TUNNEL, align 4
  %399 = or i32 %397, %398
  %400 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %401 = or i32 %399, %400
  %402 = load i32, i32* @NETIF_F_SG, align 4
  %403 = or i32 %401, %402
  %404 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %405 = or i32 %403, %404
  %406 = load i32, i32* @NETIF_F_TSO, align 4
  %407 = or i32 %405, %406
  %408 = load i32, i32* @NETIF_F_TSO6, align 4
  %409 = or i32 %407, %408
  %410 = load i32, i32* @NETIF_F_LRO, align 4
  %411 = or i32 %409, %410
  %412 = load %struct.lio*, %struct.lio** %15, align 8
  %413 = getelementptr inbounds %struct.lio, %struct.lio* %412, i32 0, i32 2
  store i32 %411, i32* %413, align 8
  %414 = load %struct.lio*, %struct.lio** %15, align 8
  %415 = getelementptr inbounds %struct.lio, %struct.lio* %414, i32 0, i32 2
  %416 = load i32, i32* %415, align 8
  %417 = load i32, i32* @NETIF_F_LRO, align 4
  %418 = xor i32 %417, -1
  %419 = and i32 %416, %418
  %420 = load %struct.net_device*, %struct.net_device** %13, align 8
  %421 = getelementptr inbounds %struct.net_device, %struct.net_device* %420, i32 0, i32 0
  store i32 %419, i32* %421, align 8
  %422 = load %struct.lio*, %struct.lio** %15, align 8
  %423 = getelementptr inbounds %struct.lio, %struct.lio* %422, i32 0, i32 1
  %424 = load i32, i32* %423, align 4
  %425 = load %struct.net_device*, %struct.net_device** %13, align 8
  %426 = getelementptr inbounds %struct.net_device, %struct.net_device* %425, i32 0, i32 1
  store i32 %424, i32* %426, align 4
  %427 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %428 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %429 = or i32 %427, %428
  %430 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_TX, align 4
  %431 = or i32 %429, %430
  %432 = load %struct.lio*, %struct.lio** %15, align 8
  %433 = getelementptr inbounds %struct.lio, %struct.lio* %432, i32 0, i32 1
  %434 = load i32, i32* %433, align 4
  %435 = or i32 %434, %431
  store i32 %435, i32* %433, align 4
  %436 = load %struct.lio*, %struct.lio** %15, align 8
  %437 = getelementptr inbounds %struct.lio, %struct.lio* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* @NETIF_F_LRO, align 4
  %440 = xor i32 %439, -1
  %441 = and i32 %438, %440
  %442 = load %struct.net_device*, %struct.net_device** %13, align 8
  %443 = getelementptr inbounds %struct.net_device, %struct.net_device* %442, i32 0, i32 2
  store i32 %441, i32* %443, align 8
  %444 = load %struct.lio*, %struct.lio** %15, align 8
  %445 = getelementptr inbounds %struct.lio, %struct.lio* %444, i32 0, i32 1
  %446 = load i32, i32* %445, align 4
  %447 = load %struct.net_device*, %struct.net_device** %13, align 8
  %448 = getelementptr inbounds %struct.net_device, %struct.net_device* %447, i32 0, i32 3
  store i32 %446, i32* %448, align 4
  %449 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %450 = xor i32 %449, -1
  %451 = load %struct.net_device*, %struct.net_device** %13, align 8
  %452 = getelementptr inbounds %struct.net_device, %struct.net_device* %451, i32 0, i32 3
  %453 = load i32, i32* %452, align 4
  %454 = and i32 %453, %450
  store i32 %454, i32* %452, align 4
  %455 = load i32, i32* @LIO_MIN_MTU_SIZE, align 4
  %456 = load %struct.net_device*, %struct.net_device** %13, align 8
  %457 = getelementptr inbounds %struct.net_device, %struct.net_device* %456, i32 0, i32 6
  store i32 %455, i32* %457, align 8
  %458 = load i32, i32* @LIO_MAX_MTU_SIZE, align 4
  %459 = load %struct.net_device*, %struct.net_device** %13, align 8
  %460 = getelementptr inbounds %struct.net_device, %struct.net_device* %459, i32 0, i32 5
  store i32 %458, i32* %460, align 4
  %461 = load %struct.octeon_soft_command*, %struct.octeon_soft_command** %10, align 8
  %462 = getelementptr inbounds %struct.octeon_soft_command, %struct.octeon_soft_command* %461, i32 0, i32 0
  %463 = load i32, i32* %462, align 8
  %464 = call i32 @WRITE_ONCE(i32 %463, i32 1)
  %465 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %466 = load %struct.lio*, %struct.lio** %15, align 8
  %467 = getelementptr inbounds %struct.lio, %struct.lio* %466, i32 0, i32 4
  store %struct.octeon_device* %465, %struct.octeon_device** %467, align 8
  %468 = load %struct.octdev_props*, %struct.octdev_props** %12, align 8
  %469 = load %struct.lio*, %struct.lio** %15, align 8
  %470 = getelementptr inbounds %struct.lio, %struct.lio* %469, i32 0, i32 11
  store %struct.octdev_props* %468, %struct.octdev_props** %470, align 8
  %471 = load %struct.net_device*, %struct.net_device** %13, align 8
  %472 = load %struct.lio*, %struct.lio** %15, align 8
  %473 = getelementptr inbounds %struct.lio, %struct.lio* %472, i32 0, i32 10
  store %struct.net_device* %471, %struct.net_device** %473, align 8
  %474 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %475 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %474, i32 0, i32 5
  %476 = load %struct.TYPE_23__*, %struct.TYPE_23__** %475, align 8
  %477 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %476, i32 0, i32 0
  %478 = load i64, i64* %18, align 8
  %479 = load %struct.lio*, %struct.lio** %15, align 8
  %480 = getelementptr inbounds %struct.lio, %struct.lio* %479, i32 0, i32 9
  %481 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %480, i32 0, i32 5
  %482 = load i32, i32* %481, align 8
  %483 = load %struct.lio*, %struct.lio** %15, align 8
  %484 = getelementptr inbounds %struct.lio, %struct.lio* %483, i32 0, i32 9
  %485 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %484, i32 0, i32 4
  %486 = load i64, i64* %485, align 8
  %487 = call i32 @CVM_CAST64(i64 %486)
  %488 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %477, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), i64 %478, i32 %482, i32 %487)
  %489 = load %struct.lio*, %struct.lio** %15, align 8
  %490 = getelementptr inbounds %struct.lio, %struct.lio* %489, i32 0, i32 9
  %491 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %490, i32 0, i32 4
  %492 = call i32 @octeon_swap_8B_data(i64* %491, i32 1)
  store i64 0, i64* %19, align 8
  br label %493

493:                                              ; preds = %508, %325
  %494 = load i64, i64* %19, align 8
  %495 = load i32, i32* @ETH_ALEN, align 4
  %496 = sext i32 %495 to i64
  %497 = icmp ult i64 %494, %496
  br i1 %497, label %498, label %511

498:                                              ; preds = %493
  %499 = load %struct.lio*, %struct.lio** %15, align 8
  %500 = getelementptr inbounds %struct.lio, %struct.lio* %499, i32 0, i32 9
  %501 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %500, i32 0, i32 4
  %502 = getelementptr inbounds i64, i64* %501, i64 2
  %503 = load i64, i64* %19, align 8
  %504 = getelementptr inbounds i64, i64* %502, i64 %503
  %505 = load i64, i64* %504, align 8
  %506 = load i64, i64* %19, align 8
  %507 = getelementptr inbounds i64, i64* %25, i64 %506
  store i64 %505, i64* %507, align 8
  br label %508

508:                                              ; preds = %498
  %509 = load i64, i64* %19, align 8
  %510 = add i64 %509, 1
  store i64 %510, i64* %19, align 8
  br label %493

511:                                              ; preds = %493
  %512 = load %struct.net_device*, %struct.net_device** %13, align 8
  %513 = getelementptr inbounds %struct.net_device, %struct.net_device* %512, i32 0, i32 4
  %514 = load i32, i32* %513, align 8
  %515 = call i32 @ether_addr_copy(i32 %514, i64* %25)
  %516 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %517 = load i64, i64* %18, align 8
  %518 = load %struct.lio*, %struct.lio** %15, align 8
  %519 = getelementptr inbounds %struct.lio, %struct.lio* %518, i32 0, i32 9
  %520 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %519, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = load %struct.lio*, %struct.lio** %15, align 8
  %523 = getelementptr inbounds %struct.lio, %struct.lio* %522, i32 0, i32 9
  %524 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %523, i32 0, i32 0
  %525 = load i32, i32* %524, align 8
  %526 = call i64 @liquidio_setup_io_queues(%struct.octeon_device* %516, i64 %517, i32 %521, i32 %525)
  %527 = icmp ne i64 %526, 0
  br i1 %527, label %528, label %534

528:                                              ; preds = %511
  %529 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %530 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %529, i32 0, i32 5
  %531 = load %struct.TYPE_23__*, %struct.TYPE_23__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %531, i32 0, i32 0
  %533 = call i32 (i32*, i8*, ...) @dev_err(i32* %532, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  br label %690

534:                                              ; preds = %511
  %535 = load %struct.lio*, %struct.lio** %15, align 8
  %536 = load i32, i32* @LIO_IFSTATE_DROQ_OPS, align 4
  %537 = call i32 @ifstate_set(%struct.lio* %535, i32 %536)
  %538 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %539 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %538, i32 0, i32 6
  %540 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %539, i32 0, i32 0
  %541 = load i32 (%struct.octeon_device.0*, i32)*, i32 (%struct.octeon_device.0*, i32)** %540, align 8
  %542 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %543 = bitcast %struct.octeon_device* %542 to %struct.octeon_device.0*
  %544 = load i32, i32* @OCTEON_ALL_INTR, align 4
  %545 = call i32 %541(%struct.octeon_device.0* %543, i32 %544)
  %546 = load %struct.lio*, %struct.lio** %15, align 8
  %547 = getelementptr inbounds %struct.lio, %struct.lio* %546, i32 0, i32 9
  %548 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %547, i32 0, i32 3
  %549 = load %struct.TYPE_19__*, %struct.TYPE_19__** %548, align 8
  %550 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %549, i64 0
  %551 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %550, i32 0, i32 0
  %552 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %551, i32 0, i32 0
  %553 = load i32, i32* %552, align 4
  %554 = load %struct.lio*, %struct.lio** %15, align 8
  %555 = getelementptr inbounds %struct.lio, %struct.lio* %554, i32 0, i32 7
  store i32 %553, i32* %555, align 8
  %556 = load %struct.lio*, %struct.lio** %15, align 8
  %557 = getelementptr inbounds %struct.lio, %struct.lio* %556, i32 0, i32 9
  %558 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %557, i32 0, i32 2
  %559 = load %struct.TYPE_21__*, %struct.TYPE_21__** %558, align 8
  %560 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %559, i64 0
  %561 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %560, i32 0, i32 0
  %562 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %561, i32 0, i32 0
  %563 = load i32, i32* %562, align 4
  %564 = load %struct.lio*, %struct.lio** %15, align 8
  %565 = getelementptr inbounds %struct.lio, %struct.lio* %564, i32 0, i32 5
  store i32 %563, i32* %565, align 8
  %566 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %567 = load %struct.lio*, %struct.lio** %15, align 8
  %568 = getelementptr inbounds %struct.lio, %struct.lio* %567, i32 0, i32 7
  %569 = load i32, i32* %568, align 8
  %570 = call i32 @octeon_get_tx_qsize(%struct.octeon_device* %566, i32 %569)
  %571 = load %struct.lio*, %struct.lio** %15, align 8
  %572 = getelementptr inbounds %struct.lio, %struct.lio* %571, i32 0, i32 8
  store i32 %570, i32* %572, align 4
  %573 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %574 = load %struct.lio*, %struct.lio** %15, align 8
  %575 = getelementptr inbounds %struct.lio, %struct.lio* %574, i32 0, i32 5
  %576 = load i32, i32* %575, align 8
  %577 = call i32 @octeon_get_rx_qsize(%struct.octeon_device* %573, i32 %576)
  %578 = load %struct.lio*, %struct.lio** %15, align 8
  %579 = getelementptr inbounds %struct.lio, %struct.lio* %578, i32 0, i32 6
  store i32 %577, i32* %579, align 4
  %580 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %581 = load %struct.lio*, %struct.lio** %15, align 8
  %582 = load i32, i32* %5, align 4
  %583 = call i64 @lio_setup_glists(%struct.octeon_device* %580, %struct.lio* %581, i32 %582)
  %584 = icmp ne i64 %583, 0
  br i1 %584, label %585, label %591

585:                                              ; preds = %534
  %586 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %587 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %586, i32 0, i32 5
  %588 = load %struct.TYPE_23__*, %struct.TYPE_23__** %587, align 8
  %589 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %588, i32 0, i32 0
  %590 = call i32 (i32*, i8*, ...) @dev_err(i32* %589, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.8, i64 0, i64 0))
  br label %690

591:                                              ; preds = %534
  %592 = load %struct.net_device*, %struct.net_device** %13, align 8
  %593 = call i32 @liquidio_set_ethtool_ops(%struct.net_device* %592)
  %594 = load %struct.lio*, %struct.lio** %15, align 8
  %595 = getelementptr inbounds %struct.lio, %struct.lio* %594, i32 0, i32 4
  %596 = load %struct.octeon_device*, %struct.octeon_device** %595, align 8
  %597 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %596, i32 0, i32 2
  %598 = load i64, i64* %597, align 8
  %599 = load i64, i64* @OCTEON_CN23XX_VF_VID, align 8
  %600 = icmp eq i64 %598, %599
  br i1 %600, label %601, label %605

601:                                              ; preds = %591
  %602 = load i32, i32* @OCT_PRIV_FLAG_DEFAULT, align 4
  %603 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %604 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %603, i32 0, i32 3
  store i32 %602, i32* %604, align 8
  br label %608

605:                                              ; preds = %591
  %606 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %607 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %606, i32 0, i32 3
  store i32 0, i32* %607, align 8
  br label %608

608:                                              ; preds = %605, %601
  %609 = load %struct.net_device*, %struct.net_device** %13, align 8
  %610 = getelementptr inbounds %struct.net_device, %struct.net_device* %609, i32 0, i32 2
  %611 = load i32, i32* %610, align 8
  %612 = load i32, i32* @NETIF_F_LRO, align 4
  %613 = and i32 %611, %612
  %614 = icmp ne i32 %613, 0
  br i1 %614, label %615, label %622

615:                                              ; preds = %608
  %616 = load %struct.net_device*, %struct.net_device** %13, align 8
  %617 = load i32, i32* @OCTNET_CMD_LRO_ENABLE, align 4
  %618 = load i32, i32* @OCTNIC_LROIPV4, align 4
  %619 = load i32, i32* @OCTNIC_LROIPV6, align 4
  %620 = or i32 %618, %619
  %621 = call i32 @liquidio_set_feature(%struct.net_device* %616, i32 %617, i32 %620)
  br label %622

622:                                              ; preds = %615, %608
  %623 = load %struct.net_device*, %struct.net_device** %13, align 8
  %624 = call i64 @setup_link_status_change_wq(%struct.net_device* %623)
  %625 = icmp ne i64 %624, 0
  br i1 %625, label %626, label %627

626:                                              ; preds = %622
  br label %690

627:                                              ; preds = %622
  %628 = load %struct.net_device*, %struct.net_device** %13, align 8
  %629 = call i64 @setup_rx_oom_poll_fn(%struct.net_device* %628)
  %630 = icmp ne i64 %629, 0
  br i1 %630, label %631, label %632

631:                                              ; preds = %627
  br label %690

632:                                              ; preds = %627
  %633 = load %struct.net_device*, %struct.net_device** %13, align 8
  %634 = call i64 @register_netdev(%struct.net_device* %633)
  %635 = icmp ne i64 %634, 0
  br i1 %635, label %636, label %642

636:                                              ; preds = %632
  %637 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %638 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %637, i32 0, i32 5
  %639 = load %struct.TYPE_23__*, %struct.TYPE_23__** %638, align 8
  %640 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %639, i32 0, i32 0
  %641 = call i32 (i32*, i8*, ...) @dev_err(i32* %640, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0))
  br label %690

642:                                              ; preds = %632
  %643 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %644 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %643, i32 0, i32 5
  %645 = load %struct.TYPE_23__*, %struct.TYPE_23__** %644, align 8
  %646 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %645, i32 0, i32 0
  %647 = load i64, i64* %18, align 8
  %648 = getelementptr inbounds i64, i64* %25, i64 0
  %649 = load i64, i64* %648, align 16
  %650 = getelementptr inbounds i64, i64* %25, i64 1
  %651 = load i64, i64* %650, align 8
  %652 = getelementptr inbounds i64, i64* %25, i64 2
  %653 = load i64, i64* %652, align 16
  %654 = getelementptr inbounds i64, i64* %25, i64 3
  %655 = load i64, i64* %654, align 8
  %656 = getelementptr inbounds i64, i64* %25, i64 4
  %657 = load i64, i64* %656, align 16
  %658 = getelementptr inbounds i64, i64* %25, i64 5
  %659 = load i64, i64* %658, align 8
  %660 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %646, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0), i64 %647, i64 %649, i64 %651, i64 %653, i64 %655, i64 %657, i64 %659)
  %661 = load %struct.net_device*, %struct.net_device** %13, align 8
  %662 = call i32 @netif_carrier_off(%struct.net_device* %661)
  %663 = load %struct.lio*, %struct.lio** %15, align 8
  %664 = getelementptr inbounds %struct.lio, %struct.lio* %663, i32 0, i32 3
  %665 = load i32, i32* %664, align 4
  %666 = add nsw i32 %665, 1
  store i32 %666, i32* %664, align 4
  %667 = load %struct.lio*, %struct.lio** %15, align 8
  %668 = load i32, i32* @LIO_IFSTATE_REGISTERED, align 4
  %669 = call i32 @ifstate_set(%struct.lio* %667, i32 %668)
  %670 = load %struct.net_device*, %struct.net_device** %13, align 8
  %671 = load i32, i32* @OCTNET_CMD_TNL_RX_CSUM_CTL, align 4
  %672 = load i32, i32* @OCTNET_CMD_RXCSUM_ENABLE, align 4
  %673 = call i32 @liquidio_set_rxcsum_command(%struct.net_device* %670, i32 %671, i32 %672)
  %674 = load %struct.net_device*, %struct.net_device** %13, align 8
  %675 = load i32, i32* @OCTNET_CMD_TNL_TX_CSUM_CTL, align 4
  %676 = load i32, i32* @OCTNET_CMD_TXCSUM_ENABLE, align 4
  %677 = call i32 @liquidio_set_feature(%struct.net_device* %674, i32 %675, i32 %676)
  %678 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %679 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %678, i32 0, i32 5
  %680 = load %struct.TYPE_23__*, %struct.TYPE_23__** %679, align 8
  %681 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %680, i32 0, i32 0
  %682 = load i64, i64* %18, align 8
  %683 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %681, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.11, i64 0, i64 0), i64 %682)
  %684 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %685 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %684, i32 0, i32 4
  store i32 1, i32* %685, align 4
  br label %686

686:                                              ; preds = %642
  %687 = load i64, i64* %18, align 8
  %688 = add i64 %687, 1
  store i64 %688, i64* %18, align 8
  br label %47

689:                                              ; preds = %47
  store i32 0, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %709

690:                                              ; preds = %636, %631, %626, %585, %528
  br label %691

691:                                              ; preds = %695, %690
  %692 = load i64, i64* %18, align 8
  %693 = add i64 %692, -1
  store i64 %693, i64* %18, align 8
  %694 = icmp ne i64 %692, 0
  br i1 %694, label %695, label %705

695:                                              ; preds = %691
  %696 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %697 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %696, i32 0, i32 5
  %698 = load %struct.TYPE_23__*, %struct.TYPE_23__** %697, align 8
  %699 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %698, i32 0, i32 0
  %700 = load i64, i64* %18, align 8
  %701 = call i32 (i32*, i8*, ...) @dev_err(i32* %699, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.12, i64 0, i64 0), i64 %700)
  %702 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %703 = load i64, i64* %18, align 8
  %704 = call i32 @liquidio_destroy_nic_device(%struct.octeon_device* %702, i64 %703)
  br label %691

705:                                              ; preds = %691
  br label %706

706:                                              ; preds = %705, %225, %185
  %707 = load i32, i32* @ENODEV, align 4
  %708 = sub nsw i32 0, %707
  store i32 %708, i32* %2, align 4
  store i32 1, i32* %21, align 4
  br label %709

709:                                              ; preds = %706, %689, %143, %135, %117
  %710 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %710)
  %711 = load i32, i32* %2, align 4
  ret i32 %711
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @octeon_register_dispatch_fn(%struct.octeon_device*, i32, i32, i32, %struct.octeon_device*) #2

declare dso_local i32 @octeon_register_reqtype_free_fn(%struct.octeon_device*, i32, i32) #2

declare dso_local i64 @octeon_alloc_soft_command(%struct.octeon_device*, i32, i32, i32) #2

declare dso_local i8* @cpu_to_be16(i32) #2

declare dso_local i32 @octeon_prepare_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*, i32, i32, i32, i64, i32) #2

declare dso_local i32 @init_completion(i32*) #2

declare dso_local i32 @octeon_send_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #2

declare dso_local i32 @dev_err(i32*, i8*, ...) #2

declare dso_local i32 @octeon_free_soft_command(%struct.octeon_device*, %struct.octeon_soft_command*) #2

declare dso_local i32 @wait_for_sc_completion_timeout(%struct.octeon_device*, %struct.octeon_soft_command*, i32) #2

declare dso_local i32 @WRITE_ONCE(i32, i32) #2

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #2

declare dso_local i32 @octeon_swap_8B_data(i64*, i32) #2

declare dso_local i32 @hweight64(i32) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i64, ...) #2

declare dso_local %struct.net_device* @alloc_etherdev_mq(i32, i32) #2

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #2

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #2

declare dso_local i32 @memset(%struct.lio*, i32, i32) #2

declare dso_local i32 @netif_msg_init(i32, i32) #2

declare dso_local i32 @netif_set_gso_max_size(%struct.net_device*, i32) #2

declare dso_local i32 @CVM_CAST64(i64) #2

declare dso_local i32 @ether_addr_copy(i32, i64*) #2

declare dso_local i64 @liquidio_setup_io_queues(%struct.octeon_device*, i64, i32, i32) #2

declare dso_local i32 @ifstate_set(%struct.lio*, i32) #2

declare dso_local i32 @octeon_get_tx_qsize(%struct.octeon_device*, i32) #2

declare dso_local i32 @octeon_get_rx_qsize(%struct.octeon_device*, i32) #2

declare dso_local i64 @lio_setup_glists(%struct.octeon_device*, %struct.lio*, i32) #2

declare dso_local i32 @liquidio_set_ethtool_ops(%struct.net_device*) #2

declare dso_local i32 @liquidio_set_feature(%struct.net_device*, i32, i32) #2

declare dso_local i64 @setup_link_status_change_wq(%struct.net_device*) #2

declare dso_local i64 @setup_rx_oom_poll_fn(%struct.net_device*) #2

declare dso_local i64 @register_netdev(%struct.net_device*) #2

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #2

declare dso_local i32 @liquidio_set_rxcsum_command(%struct.net_device*, i32, i32) #2

declare dso_local i32 @liquidio_destroy_nic_device(%struct.octeon_device*, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
