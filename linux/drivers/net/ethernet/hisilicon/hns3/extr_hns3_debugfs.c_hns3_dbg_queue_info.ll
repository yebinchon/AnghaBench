; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_debugfs.c_hns3_dbg_queue_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns3/extr_hns3_debugfs.c_hns3_dbg_queue_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hnae3_handle = type { %struct.TYPE_6__*, %struct.TYPE_4__, %struct.hns3_nic_priv* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.hns3_nic_priv = type { i32, %struct.hns3_nic_ring_data* }
%struct.hns3_nic_ring_data = type { %struct.hns3_enet_ring* }
%struct.hns3_enet_ring = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [19 x i8] c"ring_data is NULL\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"queue info\0A\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"Queue number(%u) is out of range(0-%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@HNS3_NIC_STATE_INITED = common dso_local global i32 0, align 4
@HNS3_NIC_STATE_RESETTING = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@HNS3_RING_RX_RING_BASEADDR_H_REG = common dso_local global i64 0, align 8
@HNS3_RING_RX_RING_BASEADDR_L_REG = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"RX(%d) BASE ADD: 0x%08x%08x\0A\00", align 1
@HNS3_RING_RX_RING_BD_NUM_REG = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"RX(%d) RING BD NUM: %u\0A\00", align 1
@HNS3_RING_RX_RING_BD_LEN_REG = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [24 x i8] c"RX(%d) RING BD LEN: %u\0A\00", align 1
@HNS3_RING_RX_RING_TAIL_REG = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [22 x i8] c"RX(%d) RING TAIL: %u\0A\00", align 1
@HNS3_RING_RX_RING_HEAD_REG = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [22 x i8] c"RX(%d) RING HEAD: %u\0A\00", align 1
@HNS3_RING_RX_RING_FBDNUM_REG = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [24 x i8] c"RX(%d) RING FBDNUM: %u\0A\00", align 1
@HNS3_RING_RX_RING_PKTNUM_RECORD_REG = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [24 x i8] c"RX(%d) RING PKTNUM: %u\0A\00", align 1
@HNS3_RING_TX_RING_BASEADDR_H_REG = common dso_local global i64 0, align 8
@HNS3_RING_TX_RING_BASEADDR_L_REG = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [29 x i8] c"TX(%d) BASE ADD: 0x%08x%08x\0A\00", align 1
@HNS3_RING_TX_RING_BD_NUM_REG = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"TX(%d) RING BD NUM: %u\0A\00", align 1
@HNS3_RING_TX_RING_TC_REG = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [20 x i8] c"TX(%d) RING TC: %u\0A\00", align 1
@HNS3_RING_TX_RING_TAIL_REG = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [22 x i8] c"TX(%d) RING TAIL: %u\0A\00", align 1
@HNS3_RING_TX_RING_HEAD_REG = common dso_local global i64 0, align 8
@.str.14 = private unnamed_addr constant [22 x i8] c"TX(%d) RING HEAD: %u\0A\00", align 1
@HNS3_RING_TX_RING_FBDNUM_REG = common dso_local global i64 0, align 8
@.str.15 = private unnamed_addr constant [24 x i8] c"TX(%d) RING FBDNUM: %u\0A\00", align 1
@HNS3_RING_TX_RING_OFFSET_REG = common dso_local global i64 0, align 8
@.str.16 = private unnamed_addr constant [24 x i8] c"TX(%d) RING OFFSET: %u\0A\00", align 1
@HNS3_RING_TX_RING_PKTNUM_RECORD_REG = common dso_local global i64 0, align 8
@.str.17 = private unnamed_addr constant [25 x i8] c"TX(%d) RING PKTNUM: %u\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hnae3_handle*, i8*)* @hns3_dbg_queue_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns3_dbg_queue_info(%struct.hnae3_handle* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hnae3_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.hns3_nic_priv*, align 8
  %7 = alloca %struct.hns3_nic_ring_data*, align 8
  %8 = alloca %struct.hns3_enet_ring*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.hnae3_handle* %0, %struct.hnae3_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  %16 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %17 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %16, i32 0, i32 2
  %18 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %17, align 8
  store %struct.hns3_nic_priv* %18, %struct.hns3_nic_priv** %6, align 8
  store i64 0, i64* %14, align 8
  %19 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %20 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %19, i32 0, i32 1
  %21 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %20, align 8
  %22 = icmp ne %struct.hns3_nic_ring_data* %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %2
  %24 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %25 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 (i32*, i8*, ...) @dev_err(i32* %27, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @EFAULT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %358

31:                                               ; preds = %2
  %32 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %33 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %12, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 11
  %38 = call i32 @kstrtouint(i8* %37, i32 0, i64* %11)
  store i32 %38, i32* %15, align 4
  %39 = load i32, i32* %15, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  store i64 0, i64* %11, align 8
  br label %45

42:                                               ; preds = %31
  %43 = load i64, i64* %11, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %12, align 8
  br label %45

45:                                               ; preds = %42, %41
  %46 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %47 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @dev_info(i32* %49, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i64, i64* %11, align 8
  %52 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %53 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp sge i64 %51, %55
  br i1 %56, label %57, label %71

57:                                               ; preds = %45
  %58 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %59 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %11, align 8
  %63 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %64 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, 1
  %68 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %62, i64 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  br label %358

71:                                               ; preds = %45
  %72 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %73 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %72, i32 0, i32 1
  %74 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %73, align 8
  store %struct.hns3_nic_ring_data* %74, %struct.hns3_nic_ring_data** %7, align 8
  %75 = load i64, i64* %11, align 8
  store i64 %75, i64* %14, align 8
  br label %76

76:                                               ; preds = %354, %71
  %77 = load i64, i64* %14, align 8
  %78 = load i64, i64* %12, align 8
  %79 = icmp slt i64 %77, %78
  br i1 %79, label %80, label %357

80:                                               ; preds = %76
  %81 = load i32, i32* @HNS3_NIC_STATE_INITED, align 4
  %82 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %83 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %82, i32 0, i32 0
  %84 = call i64 @test_bit(i32 %81, i32* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %80
  %87 = load i32, i32* @HNS3_NIC_STATE_RESETTING, align 4
  %88 = load %struct.hns3_nic_priv*, %struct.hns3_nic_priv** %6, align 8
  %89 = getelementptr inbounds %struct.hns3_nic_priv, %struct.hns3_nic_priv* %88, i32 0, i32 0
  %90 = call i64 @test_bit(i32 %87, i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %86, %80
  %93 = load i32, i32* @EPERM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %358

95:                                               ; preds = %86
  %96 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %7, align 8
  %97 = load i64, i64* %14, align 8
  %98 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %99 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %97, %101
  %103 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %96, i64 %102
  %104 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %103, i32 0, i32 0
  %105 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %104, align 8
  store %struct.hns3_enet_ring* %105, %struct.hns3_enet_ring** %8, align 8
  %106 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %107 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @HNS3_RING_RX_RING_BASEADDR_H_REG, align 8
  %112 = add nsw i64 %110, %111
  %113 = call i64 @readl_relaxed(i64 %112)
  store i64 %113, i64* %10, align 8
  %114 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %115 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64, i64* @HNS3_RING_RX_RING_BASEADDR_L_REG, align 8
  %120 = add nsw i64 %118, %119
  %121 = call i64 @readl_relaxed(i64 %120)
  store i64 %121, i64* %9, align 8
  %122 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %123 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* %9, align 8
  %129 = call i32 (i32*, i8*, ...) @dev_info(i32* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i64 %126, i64 %127, i64 %128)
  %130 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %131 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %130, i32 0, i32 0
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @HNS3_RING_RX_RING_BD_NUM_REG, align 8
  %136 = add nsw i64 %134, %135
  %137 = call i64 @readl_relaxed(i64 %136)
  store i64 %137, i64* %13, align 8
  %138 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %139 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %138, i32 0, i32 0
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = load i64, i64* %14, align 8
  %143 = load i64, i64* %13, align 8
  %144 = call i32 (i32*, i8*, ...) @dev_info(i32* %141, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0), i64 %142, i64 %143)
  %145 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %146 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %145, i32 0, i32 0
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @HNS3_RING_RX_RING_BD_LEN_REG, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i64 @readl_relaxed(i64 %151)
  store i64 %152, i64* %13, align 8
  %153 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %154 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %153, i32 0, i32 0
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load i64, i64* %14, align 8
  %158 = load i64, i64* %13, align 8
  %159 = call i32 (i32*, i8*, ...) @dev_info(i32* %156, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0), i64 %157, i64 %158)
  %160 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %161 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %160, i32 0, i32 0
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 0
  %164 = load i64, i64* %163, align 8
  %165 = load i64, i64* @HNS3_RING_RX_RING_TAIL_REG, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i64 @readl_relaxed(i64 %166)
  store i64 %167, i64* %13, align 8
  %168 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %169 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %168, i32 0, i32 0
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i64, i64* %14, align 8
  %173 = load i64, i64* %13, align 8
  %174 = call i32 (i32*, i8*, ...) @dev_info(i32* %171, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0), i64 %172, i64 %173)
  %175 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %176 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %175, i32 0, i32 0
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* @HNS3_RING_RX_RING_HEAD_REG, align 8
  %181 = add nsw i64 %179, %180
  %182 = call i64 @readl_relaxed(i64 %181)
  store i64 %182, i64* %13, align 8
  %183 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %184 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %183, i32 0, i32 0
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load i64, i64* %14, align 8
  %188 = load i64, i64* %13, align 8
  %189 = call i32 (i32*, i8*, ...) @dev_info(i32* %186, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i64 %187, i64 %188)
  %190 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %191 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %190, i32 0, i32 0
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i64, i64* %193, align 8
  %195 = load i64, i64* @HNS3_RING_RX_RING_FBDNUM_REG, align 8
  %196 = add nsw i64 %194, %195
  %197 = call i64 @readl_relaxed(i64 %196)
  store i64 %197, i64* %13, align 8
  %198 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %199 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %198, i32 0, i32 0
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  %202 = load i64, i64* %14, align 8
  %203 = load i64, i64* %13, align 8
  %204 = call i32 (i32*, i8*, ...) @dev_info(i32* %201, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0), i64 %202, i64 %203)
  %205 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %206 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %205, i32 0, i32 0
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* @HNS3_RING_RX_RING_PKTNUM_RECORD_REG, align 8
  %211 = add nsw i64 %209, %210
  %212 = call i64 @readl_relaxed(i64 %211)
  store i64 %212, i64* %13, align 8
  %213 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %214 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %213, i32 0, i32 0
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 0
  %217 = load i64, i64* %14, align 8
  %218 = load i64, i64* %13, align 8
  %219 = call i32 (i32*, i8*, ...) @dev_info(i32* %216, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i64 0, i64 0), i64 %217, i64 %218)
  %220 = load %struct.hns3_nic_ring_data*, %struct.hns3_nic_ring_data** %7, align 8
  %221 = load i64, i64* %14, align 8
  %222 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %220, i64 %221
  %223 = getelementptr inbounds %struct.hns3_nic_ring_data, %struct.hns3_nic_ring_data* %222, i32 0, i32 0
  %224 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %223, align 8
  store %struct.hns3_enet_ring* %224, %struct.hns3_enet_ring** %8, align 8
  %225 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %226 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %225, i32 0, i32 0
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @HNS3_RING_TX_RING_BASEADDR_H_REG, align 8
  %231 = add nsw i64 %229, %230
  %232 = call i64 @readl_relaxed(i64 %231)
  store i64 %232, i64* %10, align 8
  %233 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %234 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %233, i32 0, i32 0
  %235 = load %struct.TYPE_5__*, %struct.TYPE_5__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load i64, i64* @HNS3_RING_TX_RING_BASEADDR_L_REG, align 8
  %239 = add nsw i64 %237, %238
  %240 = call i64 @readl_relaxed(i64 %239)
  store i64 %240, i64* %9, align 8
  %241 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %242 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %241, i32 0, i32 0
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i64, i64* %14, align 8
  %246 = load i64, i64* %10, align 8
  %247 = load i64, i64* %9, align 8
  %248 = call i32 (i32*, i8*, ...) @dev_info(i32* %244, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %245, i64 %246, i64 %247)
  %249 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %250 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %249, i32 0, i32 0
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @HNS3_RING_TX_RING_BD_NUM_REG, align 8
  %255 = add nsw i64 %253, %254
  %256 = call i64 @readl_relaxed(i64 %255)
  store i64 %256, i64* %13, align 8
  %257 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %258 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %257, i32 0, i32 0
  %259 = load %struct.TYPE_6__*, %struct.TYPE_6__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = load i64, i64* %14, align 8
  %262 = load i64, i64* %13, align 8
  %263 = call i32 (i32*, i8*, ...) @dev_info(i32* %260, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i64 %261, i64 %262)
  %264 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %265 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %264, i32 0, i32 0
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @HNS3_RING_TX_RING_TC_REG, align 8
  %270 = add nsw i64 %268, %269
  %271 = call i64 @readl_relaxed(i64 %270)
  store i64 %271, i64* %13, align 8
  %272 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %273 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %272, i32 0, i32 0
  %274 = load %struct.TYPE_6__*, %struct.TYPE_6__** %273, align 8
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = load i64, i64* %14, align 8
  %277 = load i64, i64* %13, align 8
  %278 = call i32 (i32*, i8*, ...) @dev_info(i32* %275, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0), i64 %276, i64 %277)
  %279 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %280 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %279, i32 0, i32 0
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %280, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = load i64, i64* @HNS3_RING_TX_RING_TAIL_REG, align 8
  %285 = add nsw i64 %283, %284
  %286 = call i64 @readl_relaxed(i64 %285)
  store i64 %286, i64* %13, align 8
  %287 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %288 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %287, i32 0, i32 0
  %289 = load %struct.TYPE_6__*, %struct.TYPE_6__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %289, i32 0, i32 0
  %291 = load i64, i64* %14, align 8
  %292 = load i64, i64* %13, align 8
  %293 = call i32 (i32*, i8*, ...) @dev_info(i32* %290, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0), i64 %291, i64 %292)
  %294 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %295 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %294, i32 0, i32 0
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %295, align 8
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load i64, i64* @HNS3_RING_TX_RING_HEAD_REG, align 8
  %300 = add nsw i64 %298, %299
  %301 = call i64 @readl_relaxed(i64 %300)
  store i64 %301, i64* %13, align 8
  %302 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %303 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %302, i32 0, i32 0
  %304 = load %struct.TYPE_6__*, %struct.TYPE_6__** %303, align 8
  %305 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %304, i32 0, i32 0
  %306 = load i64, i64* %14, align 8
  %307 = load i64, i64* %13, align 8
  %308 = call i32 (i32*, i8*, ...) @dev_info(i32* %305, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0), i64 %306, i64 %307)
  %309 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %310 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %309, i32 0, i32 0
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i32 0, i32 0
  %313 = load i64, i64* %312, align 8
  %314 = load i64, i64* @HNS3_RING_TX_RING_FBDNUM_REG, align 8
  %315 = add nsw i64 %313, %314
  %316 = call i64 @readl_relaxed(i64 %315)
  store i64 %316, i64* %13, align 8
  %317 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %318 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %317, i32 0, i32 0
  %319 = load %struct.TYPE_6__*, %struct.TYPE_6__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %319, i32 0, i32 0
  %321 = load i64, i64* %14, align 8
  %322 = load i64, i64* %13, align 8
  %323 = call i32 (i32*, i8*, ...) @dev_info(i32* %320, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0), i64 %321, i64 %322)
  %324 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %325 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %324, i32 0, i32 0
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 0
  %328 = load i64, i64* %327, align 8
  %329 = load i64, i64* @HNS3_RING_TX_RING_OFFSET_REG, align 8
  %330 = add nsw i64 %328, %329
  %331 = call i64 @readl_relaxed(i64 %330)
  store i64 %331, i64* %13, align 8
  %332 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %333 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %332, i32 0, i32 0
  %334 = load %struct.TYPE_6__*, %struct.TYPE_6__** %333, align 8
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 0
  %336 = load i64, i64* %14, align 8
  %337 = load i64, i64* %13, align 8
  %338 = call i32 (i32*, i8*, ...) @dev_info(i32* %335, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.16, i64 0, i64 0), i64 %336, i64 %337)
  %339 = load %struct.hns3_enet_ring*, %struct.hns3_enet_ring** %8, align 8
  %340 = getelementptr inbounds %struct.hns3_enet_ring, %struct.hns3_enet_ring* %339, i32 0, i32 0
  %341 = load %struct.TYPE_5__*, %struct.TYPE_5__** %340, align 8
  %342 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @HNS3_RING_TX_RING_PKTNUM_RECORD_REG, align 8
  %345 = add nsw i64 %343, %344
  %346 = call i64 @readl_relaxed(i64 %345)
  store i64 %346, i64* %13, align 8
  %347 = load %struct.hnae3_handle*, %struct.hnae3_handle** %4, align 8
  %348 = getelementptr inbounds %struct.hnae3_handle, %struct.hnae3_handle* %347, i32 0, i32 0
  %349 = load %struct.TYPE_6__*, %struct.TYPE_6__** %348, align 8
  %350 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %349, i32 0, i32 0
  %351 = load i64, i64* %14, align 8
  %352 = load i64, i64* %13, align 8
  %353 = call i32 (i32*, i8*, ...) @dev_info(i32* %350, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.17, i64 0, i64 0), i64 %351, i64 %352)
  br label %354

354:                                              ; preds = %95
  %355 = load i64, i64* %14, align 8
  %356 = add nsw i64 %355, 1
  store i64 %356, i64* %14, align 8
  br label %76

357:                                              ; preds = %76
  store i32 0, i32* %3, align 4
  br label %358

358:                                              ; preds = %357, %92, %57, %23
  %359 = load i32, i32* %3, align 4
  ret i32 %359
}

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @kstrtouint(i8*, i32, i64*) #1

declare dso_local i32 @dev_info(i32*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @readl_relaxed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
