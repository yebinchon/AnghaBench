; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_debugfs.c_hns3_dbg_bd_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_debugfs.c_hns3_dbg_bd_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_8__, %struct.TYPE_6__*, %struct.hns3_nic_priv* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.hns3_nic_priv = type { %struct.hns3_nic_ring_data* }
%struct.hns3_nic_ring_data = type { %struct.hns3_enet_ring* }
%struct.hns3_enet_ring = type { i64, %struct.hns3_desc*, %struct.TYPE_9__* }
%struct.hns3_desc = type { %struct.TYPE_10__, i32, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_7__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"%u %u\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"bd info: bad command string, cnt=%d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"Queue number(%u) is out of range(0-%u)\0A\00", align 1
@HNS3_RING_TX_RING_TAIL_REG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [36 x i8] c"bd index(%u) is out of range(0-%u)\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"TX Queue Num: %u, BD Index: %u\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"(TX)addr: %pad\0A\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"(TX)vlan_tag: %u\0A\00", align 1
@.str.7 = private unnamed_addr constant [19 x i8] c"(TX)send_size: %u\0A\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"(TX)vlan_tso: %u\0A\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"(TX)l2_len: %u\0A\00", align 1
@.str.10 = private unnamed_addr constant [16 x i8] c"(TX)l3_len: %u\0A\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"(TX)l4_len: %u\0A\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"(TX)tv: %u\0A\00", align 1
@.str.13 = private unnamed_addr constant [19 x i8] c"(TX)vlan_msec: %u\0A\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"(TX)ol2_len: %u\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"(TX)ol3_len: %u\0A\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"(TX)ol4_len: %u\0A\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"(TX)paylen: %u\0A\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"(TX)vld_ra_ri: %u\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"(TX)mss: %u\0A\00", align 1
@HNS3_RING_RX_RING_TAIL_REG = common dso_local global i64 0, align 8
@.str.20 = private unnamed_addr constant [32 x i8] c"RX Queue Num: %u, BD Index: %u\0A\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"(RX)addr: %pad\0A\00", align 1
@.str.22 = private unnamed_addr constant [19 x i8] c"(RX)l234_info: %u\0A\00", align 1
@.str.23 = private unnamed_addr constant [17 x i8] c"(RX)pkt_len: %u\0A\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"(RX)size: %u\0A\00", align 1
@.str.25 = private unnamed_addr constant [18 x i8] c"(RX)rss_hash: %u\0A\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"(RX)fd_id: %u\0A\00", align 1
@.str.27 = private unnamed_addr constant [18 x i8] c"(RX)vlan_tag: %u\0A\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"(RX)o_dm_vlan_id_fb: %u\0A\00", align 1
@.str.29 = private unnamed_addr constant [21 x i8] c"(RX)ot_vlan_tag: %u\0A\00", align 1
@.str.30 = private unnamed_addr constant [22 x i8] c"(RX)bd_base_info: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i8*)* @hns3_dbg_bd_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_dbg_bd_info(%struct.hnae3_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hns3_nic_priv*, align 8
  %7 = alloca %struct.hns3_nic_ring_data*, align 8
  %8 = alloca %struct.hns3_desc*, align 8
  %9 = alloca %struct.hns3_desc*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.hns3_enet_ring*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %18 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %19 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %18, i32 0, i32 2
  %20 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %19, align 8
  store %struct.hns3_nic_priv* %20, %struct.hns3_nic_priv** %6, align 8
  %21 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %22 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %21, i32 0, i32 1
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store %struct.device* %24, %struct.device** %10, align 8
  %25 = load i8*, i8** %5, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 8
  %27 = call i32 @sscanf(i8* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64* %14, i64* %12)
  store i32 %27, i32* %17, align 4
  %28 = load i32, i32* %17, align 4
  %29 = icmp eq i32 %28, 2
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i64, i64* %12, align 8
  store i64 %31, i64* %13, align 8
  br label %43

32:                                               ; preds = %2
  %33 = load i32, i32* %17, align 4
  %34 = icmp ne i32 %33, 1
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.device*, %struct.device** %10, align 8
  %37 = load i32, i32* %17, align 4
  %38 = sext i32 %37 to i64
  %39 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %36, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %328

42:                                               ; preds = %32
  br label %43

43:                                               ; preds = %42, %30
  %44 = load i64, i64* %14, align 8
  %45 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %46 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp uge i64 %44, %48
  br i1 %49, label %50, label %61

50:                                               ; preds = %43
  %51 = load %struct.device*, %struct.device** %10, align 8
  %52 = load i64, i64* %14, align 8
  %53 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %54 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = sub i64 %56, 1
  %58 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %51, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %52, i64 %57)
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %328

61:                                               ; preds = %43
  %62 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %63 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %62, i32 0, i32 0
  %64 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %63, align 8
  store %struct.hns3_nic_ring_data* %64, %struct.hns3_nic_ring_data** %7, align 8
  %65 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %7, align 8
  %66 = load i64, i64* %14, align 8
  %67 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %65, i64 %66
  %68 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %67, i32 0, i32 0
  %69 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %68, align 8
  store %struct.hns3_enet_ring* %69, %struct.hns3_enet_ring** %11, align 8
  %70 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %11, align 8
  %71 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %70, i32 0, i32 2
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HNS3_RING_TX_RING_TAIL_REG, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i64 @readl_relaxed(i64 %76)
  store i64 %77, i64* %15, align 8
  %78 = load i32, i32* %17, align 4
  %79 = icmp eq i32 %78, 1
  br i1 %79, label %80, label %82

80:                                               ; preds = %61
  %81 = load i64, i64* %15, align 8
  br label %84

82:                                               ; preds = %61
  %83 = load i64, i64* %12, align 8
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i64 [ %81, %80 ], [ %83, %82 ]
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %11, align 8
  %88 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp uge i64 %86, %89
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load %struct.device*, %struct.device** %10, align 8
  %93 = load i64, i64* %12, align 8
  %94 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %11, align 8
  %95 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = sub i64 %96, 1
  %98 = call i32 (%struct.device*, i8*, i64, ...) @dev_err(%struct.device* %92, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i64 %93, i64 %97)
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %328

101:                                              ; preds = %84
  %102 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %11, align 8
  %103 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %102, i32 0, i32 1
  %104 = load %struct.hns3_desc*, %struct.hns3_desc** %103, align 8
  %105 = load i64, i64* %12, align 8
  %106 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %104, i64 %105
  store %struct.hns3_desc* %106, %struct.hns3_desc** %9, align 8
  %107 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %108 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @le64_to_cpu(i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load %struct.device*, %struct.device** %10, align 8
  %112 = load i64, i64* %14, align 8
  %113 = load i64, i64* %12, align 8
  %114 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %111, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i64 %112, i64 %113)
  %115 = load %struct.device*, %struct.device** %10, align 8
  %116 = ptrtoint i32* %16 to i64
  %117 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %115, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), i64 %116)
  %118 = load %struct.device*, %struct.device** %10, align 8
  %119 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %120 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %119, i32 0, i32 2
  %121 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %120, i32 0, i32 14
  %122 = load i32*, i32** %121, align 8
  %123 = ptrtoint i32* %122 to i64
  %124 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %118, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %123)
  %125 = load %struct.device*, %struct.device** %10, align 8
  %126 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %127 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %127, i32 0, i32 13
  %129 = load i32*, i32** %128, align 8
  %130 = ptrtoint i32* %129 to i64
  %131 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %125, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.7, i64 0, i64 0), i64 %130)
  %132 = load %struct.device*, %struct.device** %10, align 8
  %133 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %134 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 12
  %136 = load i32*, i32** %135, align 8
  %137 = ptrtoint i32* %136 to i64
  %138 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %132, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0), i64 %137)
  %139 = load %struct.device*, %struct.device** %10, align 8
  %140 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %141 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 11
  %143 = load i32*, i32** %142, align 8
  %144 = ptrtoint i32* %143 to i64
  %145 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %139, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i64 %144)
  %146 = load %struct.device*, %struct.device** %10, align 8
  %147 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %148 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 10
  %150 = load i32*, i32** %149, align 8
  %151 = ptrtoint i32* %150 to i64
  %152 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %146, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.10, i64 0, i64 0), i64 %151)
  %153 = load %struct.device*, %struct.device** %10, align 8
  %154 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %155 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 9
  %157 = load i32*, i32** %156, align 8
  %158 = ptrtoint i32* %157 to i64
  %159 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %153, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), i64 %158)
  %160 = load %struct.device*, %struct.device** %10, align 8
  %161 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %162 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %161, i32 0, i32 2
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 8
  %164 = load i32*, i32** %163, align 8
  %165 = ptrtoint i32* %164 to i64
  %166 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %160, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.6, i64 0, i64 0), i64 %165)
  %167 = load %struct.device*, %struct.device** %10, align 8
  %168 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %169 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %169, i32 0, i32 7
  %171 = load i32*, i32** %170, align 8
  %172 = ptrtoint i32* %171 to i64
  %173 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %167, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0), i64 %172)
  %174 = load %struct.device*, %struct.device** %10, align 8
  %175 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %176 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %175, i32 0, i32 2
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 6
  %178 = load i32*, i32** %177, align 8
  %179 = ptrtoint i32* %178 to i64
  %180 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %174, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.13, i64 0, i64 0), i64 %179)
  %181 = load %struct.device*, %struct.device** %10, align 8
  %182 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %183 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %182, i32 0, i32 2
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 5
  %185 = load i32*, i32** %184, align 8
  %186 = ptrtoint i32* %185 to i64
  %187 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %181, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.14, i64 0, i64 0), i64 %186)
  %188 = load %struct.device*, %struct.device** %10, align 8
  %189 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %190 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %189, i32 0, i32 2
  %191 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i32 0, i32 4
  %192 = load i32*, i32** %191, align 8
  %193 = ptrtoint i32* %192 to i64
  %194 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %188, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0), i64 %193)
  %195 = load %struct.device*, %struct.device** %10, align 8
  %196 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %197 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %196, i32 0, i32 2
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 3
  %199 = load i32*, i32** %198, align 8
  %200 = ptrtoint i32* %199 to i64
  %201 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %195, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0), i64 %200)
  %202 = load %struct.device*, %struct.device** %10, align 8
  %203 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %204 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %203, i32 0, i32 2
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = ptrtoint i32* %206 to i64
  %208 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %202, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0), i64 %207)
  %209 = load %struct.device*, %struct.device** %10, align 8
  %210 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %211 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %210, i32 0, i32 2
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = ptrtoint i32* %213 to i64
  %215 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %209, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.18, i64 0, i64 0), i64 %214)
  %216 = load %struct.device*, %struct.device** %10, align 8
  %217 = load %struct.hns3_desc*, %struct.hns3_desc** %9, align 8
  %218 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = ptrtoint i32* %220 to i64
  %222 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %216, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.19, i64 0, i64 0), i64 %221)
  %223 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %7, align 8
  %224 = load i64, i64* %14, align 8
  %225 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %226 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %225, i32 0, i32 0
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 0
  %228 = load i64, i64* %227, align 8
  %229 = add i64 %224, %228
  %230 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %223, i64 %229
  %231 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %230, i32 0, i32 0
  %232 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %231, align 8
  store %struct.hns3_enet_ring* %232, %struct.hns3_enet_ring** %11, align 8
  %233 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %11, align 8
  %234 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %233, i32 0, i32 2
  %235 = load %struct.TYPE_9__*, %struct.TYPE_9__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @HNS3_RING_RX_RING_TAIL_REG, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i64 @readl_relaxed(i64 %239)
  store i64 %240, i64* %15, align 8
  %241 = load i32, i32* %17, align 4
  %242 = icmp eq i32 %241, 1
  br i1 %242, label %243, label %245

243:                                              ; preds = %101
  %244 = load i64, i64* %15, align 8
  br label %247

245:                                              ; preds = %101
  %246 = load i64, i64* %12, align 8
  br label %247

247:                                              ; preds = %245, %243
  %248 = phi i64 [ %244, %243 ], [ %246, %245 ]
  store i64 %248, i64* %13, align 8
  %249 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %11, align 8
  %250 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %249, i32 0, i32 1
  %251 = load %struct.hns3_desc*, %struct.hns3_desc** %250, align 8
  %252 = load i64, i64* %13, align 8
  %253 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %251, i64 %252
  store %struct.hns3_desc* %253, %struct.hns3_desc** %8, align 8
  %254 = load %struct.hns3_desc*, %struct.hns3_desc** %8, align 8
  %255 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %254, i32 0, i32 1
  %256 = load i32, i32* %255, align 8
  %257 = call i32 @le64_to_cpu(i32 %256)
  store i32 %257, i32* %16, align 4
  %258 = load %struct.device*, %struct.device** %10, align 8
  %259 = load i64, i64* %14, align 8
  %260 = load i64, i64* %13, align 8
  %261 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %258, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i64 0, i64 0), i64 %259, i64 %260)
  %262 = load %struct.device*, %struct.device** %10, align 8
  %263 = ptrtoint i32* %16 to i64
  %264 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %262, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), i64 %263)
  %265 = load %struct.device*, %struct.device** %10, align 8
  %266 = load %struct.hns3_desc*, %struct.hns3_desc** %8, align 8
  %267 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %267, i32 0, i32 8
  %269 = load i32*, i32** %268, align 8
  %270 = ptrtoint i32* %269 to i64
  %271 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %265, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.22, i64 0, i64 0), i64 %270)
  %272 = load %struct.device*, %struct.device** %10, align 8
  %273 = load %struct.hns3_desc*, %struct.hns3_desc** %8, align 8
  %274 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %274, i32 0, i32 7
  %276 = load i32*, i32** %275, align 8
  %277 = ptrtoint i32* %276 to i64
  %278 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %272, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.23, i64 0, i64 0), i64 %277)
  %279 = load %struct.device*, %struct.device** %10, align 8
  %280 = load %struct.hns3_desc*, %struct.hns3_desc** %8, align 8
  %281 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %281, i32 0, i32 6
  %283 = load i32*, i32** %282, align 8
  %284 = ptrtoint i32* %283 to i64
  %285 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %279, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.24, i64 0, i64 0), i64 %284)
  %286 = load %struct.device*, %struct.device** %10, align 8
  %287 = load %struct.hns3_desc*, %struct.hns3_desc** %8, align 8
  %288 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %287, i32 0, i32 0
  %289 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %288, i32 0, i32 5
  %290 = load i32*, i32** %289, align 8
  %291 = ptrtoint i32* %290 to i64
  %292 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %286, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.25, i64 0, i64 0), i64 %291)
  %293 = load %struct.device*, %struct.device** %10, align 8
  %294 = load %struct.hns3_desc*, %struct.hns3_desc** %8, align 8
  %295 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %294, i32 0, i32 0
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 4
  %297 = load i32*, i32** %296, align 8
  %298 = ptrtoint i32* %297 to i64
  %299 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %293, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.26, i64 0, i64 0), i64 %298)
  %300 = load %struct.device*, %struct.device** %10, align 8
  %301 = load %struct.hns3_desc*, %struct.hns3_desc** %8, align 8
  %302 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 3
  %304 = load i32*, i32** %303, align 8
  %305 = ptrtoint i32* %304 to i64
  %306 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %300, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.27, i64 0, i64 0), i64 %305)
  %307 = load %struct.device*, %struct.device** %10, align 8
  %308 = load %struct.hns3_desc*, %struct.hns3_desc** %8, align 8
  %309 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %308, i32 0, i32 0
  %310 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %309, i32 0, i32 2
  %311 = load i32*, i32** %310, align 8
  %312 = ptrtoint i32* %311 to i64
  %313 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %307, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i64 0, i64 0), i64 %312)
  %314 = load %struct.device*, %struct.device** %10, align 8
  %315 = load %struct.hns3_desc*, %struct.hns3_desc** %8, align 8
  %316 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %315, i32 0, i32 0
  %317 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %316, i32 0, i32 1
  %318 = load i32*, i32** %317, align 8
  %319 = ptrtoint i32* %318 to i64
  %320 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %314, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.29, i64 0, i64 0), i64 %319)
  %321 = load %struct.device*, %struct.device** %10, align 8
  %322 = load %struct.hns3_desc*, %struct.hns3_desc** %8, align 8
  %323 = getelementptr inbounds %struct.hns3_desc, %struct.hns3_desc* %322, i32 0, i32 0
  %324 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %323, i32 0, i32 0
  %325 = load i32*, i32** %324, align 8
  %326 = ptrtoint i32* %325 to i64
  %327 = call i32 (%struct.device*, i8*, i64, ...) @dev_info(%struct.device* %321, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.30, i64 0, i64 0), i64 %326)
  store i32 0, i32* %3, align 4
  br label %328

328:                                              ; preds = %247, %91, %50, %35
  %329 = load i32, i32* %3, align 4
  ret i32 %329
}

declare dso_local i32 @sscanf(i8*, i8*, i64*, i64*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64, ...) #1

declare dso_local i64 @readl_relaxed(i64) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
