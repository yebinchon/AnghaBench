; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_ethtool.c_nicvf_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i64 }
%struct.nicvf = type { i32 }

@NIC_VF_REG_COUNT = common dso_local global i32 0, align 4
@NIC_VNIC_CFG = common dso_local global i32 0, align 4
@NIC_PF_VF_MAILBOX_SIZE = common dso_local global i32 0, align 4
@NIC_VF_PF_MAILBOX_0_1 = common dso_local global i32 0, align 4
@NIC_VF_INT = common dso_local global i32 0, align 4
@NIC_VF_INT_W1S = common dso_local global i32 0, align 4
@NIC_VF_ENA_W1C = common dso_local global i32 0, align 4
@NIC_VF_ENA_W1S = common dso_local global i32 0, align 4
@NIC_VNIC_RSS_CFG = common dso_local global i32 0, align 4
@RSS_HASH_KEY_SIZE = common dso_local global i32 0, align 4
@NIC_VNIC_RSS_KEY_0_4 = common dso_local global i32 0, align 4
@TX_STATS_ENUM_LAST = common dso_local global i32 0, align 4
@NIC_VNIC_TX_STAT_0_4 = common dso_local global i32 0, align 4
@RX_STATS_ENUM_LAST = common dso_local global i32 0, align 4
@NIC_VNIC_RX_STAT_0_13 = common dso_local global i32 0, align 4
@NIC_QSET_RQ_GEN_CFG = common dso_local global i32 0, align 4
@MAX_CMP_QUEUES_PER_QS = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_CFG = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_CFG2 = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_THRESH = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_BASE = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_HEAD = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_TAIL = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_DOOR = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_STATUS = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_STATUS2 = common dso_local global i32 0, align 4
@NIC_QSET_CQ_0_7_DEBUG = common dso_local global i32 0, align 4
@MAX_RCV_QUEUES_PER_QS = common dso_local global i32 0, align 4
@NIC_QSET_RQ_0_7_CFG = common dso_local global i32 0, align 4
@NIC_QSET_RQ_0_7_STAT_0_1 = common dso_local global i32 0, align 4
@MAX_SND_QUEUES_PER_QS = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_CFG = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_THRESH = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_BASE = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_HEAD = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_TAIL = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_DOOR = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_STATUS = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_DEBUG = common dso_local global i32 0, align 4
@NIC_QSET_SQ_0_7_STAT_0_1 = common dso_local global i32 0, align 4
@MAX_RCV_BUF_DESC_RINGS_PER_QS = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_CFG = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_THRESH = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_BASE = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_HEAD = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_TAIL = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_DOOR = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_STATUS0 = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_STATUS1 = common dso_local global i32 0, align 4
@NIC_QSET_RBDR_0_1_PREFETCH_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @nicvf_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nicvf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = call %struct.nicvf* @netdev_priv(%struct.net_device* %15)
  store %struct.nicvf* %16, %struct.nicvf** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to i32*
  store i32* %18, i32** %8, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %20 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %19, i32 0, i32 0
  store i64 0, i64* %20, align 8
  %21 = load i32*, i32** %8, align 8
  %22 = load i32, i32* @NIC_VF_REG_COUNT, align 4
  %23 = call i32 @memset(i32* %21, i32 0, i32 %22)
  %24 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %25 = load i32, i32* @NIC_VNIC_CFG, align 4
  %26 = call i32 @nicvf_reg_read(%struct.nicvf* %24, i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %14, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %14, align 4
  %30 = sext i32 %28 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32 %26, i32* %31, align 4
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %48, %3
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @NIC_PF_VF_MAILBOX_SIZE, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %51

36:                                               ; preds = %32
  %37 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %38 = load i32, i32* @NIC_VF_PF_MAILBOX_0_1, align 4
  %39 = load i32, i32* %10, align 4
  %40 = shl i32 %39, 3
  %41 = or i32 %38, %40
  %42 = call i32 @nicvf_reg_read(%struct.nicvf* %37, i32 %41)
  %43 = load i32*, i32** %8, align 8
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %14, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  store i32 %42, i32* %47, align 4
  br label %48

48:                                               ; preds = %36
  %49 = load i32, i32* %10, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %10, align 4
  br label %32

51:                                               ; preds = %32
  %52 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %53 = load i32, i32* @NIC_VF_INT, align 4
  %54 = call i32 @nicvf_reg_read(%struct.nicvf* %52, i32 %53)
  %55 = load i32*, i32** %8, align 8
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %14, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  store i32 %54, i32* %59, align 4
  %60 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %61 = load i32, i32* @NIC_VF_INT_W1S, align 4
  %62 = call i32 @nicvf_reg_read(%struct.nicvf* %60, i32 %61)
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %14, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %14, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i32, i32* %63, i64 %66
  store i32 %62, i32* %67, align 4
  %68 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %69 = load i32, i32* @NIC_VF_ENA_W1C, align 4
  %70 = call i32 @nicvf_reg_read(%struct.nicvf* %68, i32 %69)
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %14, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %14, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  store i32 %70, i32* %75, align 4
  %76 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %77 = load i32, i32* @NIC_VF_ENA_W1S, align 4
  %78 = call i32 @nicvf_reg_read(%struct.nicvf* %76, i32 %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load i32, i32* %14, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %14, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  store i32 %78, i32* %83, align 4
  %84 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %85 = load i32, i32* @NIC_VNIC_RSS_CFG, align 4
  %86 = call i32 @nicvf_reg_read(%struct.nicvf* %84, i32 %85)
  %87 = load i32*, i32** %8, align 8
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %14, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %86, i32* %91, align 4
  store i32 0, i32* %11, align 4
  br label %92

92:                                               ; preds = %108, %51
  %93 = load i32, i32* %11, align 4
  %94 = load i32, i32* @RSS_HASH_KEY_SIZE, align 4
  %95 = icmp slt i32 %93, %94
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %98 = load i32, i32* @NIC_VNIC_RSS_KEY_0_4, align 4
  %99 = load i32, i32* %11, align 4
  %100 = shl i32 %99, 3
  %101 = or i32 %98, %100
  %102 = call i32 @nicvf_reg_read(%struct.nicvf* %97, i32 %101)
  %103 = load i32*, i32** %8, align 8
  %104 = load i32, i32* %14, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %14, align 4
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i32, i32* %103, i64 %106
  store i32 %102, i32* %107, align 4
  br label %108

108:                                              ; preds = %96
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %92

111:                                              ; preds = %92
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %128, %111
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @TX_STATS_ENUM_LAST, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %131

116:                                              ; preds = %112
  %117 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %118 = load i32, i32* @NIC_VNIC_TX_STAT_0_4, align 4
  %119 = load i32, i32* %12, align 4
  %120 = shl i32 %119, 3
  %121 = or i32 %118, %120
  %122 = call i32 @nicvf_reg_read(%struct.nicvf* %117, i32 %121)
  %123 = load i32*, i32** %8, align 8
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %14, align 4
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %123, i64 %126
  store i32 %122, i32* %127, align 4
  br label %128

128:                                              ; preds = %116
  %129 = load i32, i32* %12, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %12, align 4
  br label %112

131:                                              ; preds = %112
  store i32 0, i32* %14, align 4
  br label %132

132:                                              ; preds = %148, %131
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* @RX_STATS_ENUM_LAST, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %151

136:                                              ; preds = %132
  %137 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %138 = load i32, i32* @NIC_VNIC_RX_STAT_0_13, align 4
  %139 = load i32, i32* %12, align 4
  %140 = shl i32 %139, 3
  %141 = or i32 %138, %140
  %142 = call i32 @nicvf_reg_read(%struct.nicvf* %137, i32 %141)
  %143 = load i32*, i32** %8, align 8
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  %146 = sext i32 %144 to i64
  %147 = getelementptr inbounds i32, i32* %143, i64 %146
  store i32 %142, i32* %147, align 4
  br label %148

148:                                              ; preds = %136
  %149 = load i32, i32* %14, align 4
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %14, align 4
  br label %132

151:                                              ; preds = %132
  %152 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %153 = load i32, i32* @NIC_QSET_RQ_GEN_CFG, align 4
  %154 = call i32 @nicvf_reg_read(%struct.nicvf* %152, i32 %153)
  %155 = load i32*, i32** %8, align 8
  %156 = load i32, i32* %14, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %14, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 %154, i32* %159, align 4
  store i32 0, i32* %13, align 4
  br label %160

160:                                              ; preds = %255, %151
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @MAX_CMP_QUEUES_PER_QS, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %258

164:                                              ; preds = %160
  %165 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %166 = load i32, i32* @NIC_QSET_CQ_0_7_CFG, align 4
  %167 = load i32, i32* %13, align 4
  %168 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %165, i32 %166, i32 %167)
  %169 = load i32*, i32** %8, align 8
  %170 = load i32, i32* %14, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %14, align 4
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  store i32 %168, i32* %173, align 4
  %174 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %175 = load i32, i32* @NIC_QSET_CQ_0_7_CFG2, align 4
  %176 = load i32, i32* %13, align 4
  %177 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %174, i32 %175, i32 %176)
  %178 = load i32*, i32** %8, align 8
  %179 = load i32, i32* %14, align 4
  %180 = add nsw i32 %179, 1
  store i32 %180, i32* %14, align 4
  %181 = sext i32 %179 to i64
  %182 = getelementptr inbounds i32, i32* %178, i64 %181
  store i32 %177, i32* %182, align 4
  %183 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %184 = load i32, i32* @NIC_QSET_CQ_0_7_THRESH, align 4
  %185 = load i32, i32* %13, align 4
  %186 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %183, i32 %184, i32 %185)
  %187 = load i32*, i32** %8, align 8
  %188 = load i32, i32* %14, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %14, align 4
  %190 = sext i32 %188 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  store i32 %186, i32* %191, align 4
  %192 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %193 = load i32, i32* @NIC_QSET_CQ_0_7_BASE, align 4
  %194 = load i32, i32* %13, align 4
  %195 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %192, i32 %193, i32 %194)
  %196 = load i32*, i32** %8, align 8
  %197 = load i32, i32* %14, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %14, align 4
  %199 = sext i32 %197 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  store i32 %195, i32* %200, align 4
  %201 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %202 = load i32, i32* @NIC_QSET_CQ_0_7_HEAD, align 4
  %203 = load i32, i32* %13, align 4
  %204 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %201, i32 %202, i32 %203)
  %205 = load i32*, i32** %8, align 8
  %206 = load i32, i32* %14, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %14, align 4
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i32, i32* %205, i64 %208
  store i32 %204, i32* %209, align 4
  %210 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %211 = load i32, i32* @NIC_QSET_CQ_0_7_TAIL, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %210, i32 %211, i32 %212)
  %214 = load i32*, i32** %8, align 8
  %215 = load i32, i32* %14, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %14, align 4
  %217 = sext i32 %215 to i64
  %218 = getelementptr inbounds i32, i32* %214, i64 %217
  store i32 %213, i32* %218, align 4
  %219 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %220 = load i32, i32* @NIC_QSET_CQ_0_7_DOOR, align 4
  %221 = load i32, i32* %13, align 4
  %222 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %219, i32 %220, i32 %221)
  %223 = load i32*, i32** %8, align 8
  %224 = load i32, i32* %14, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %14, align 4
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  store i32 %222, i32* %227, align 4
  %228 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %229 = load i32, i32* @NIC_QSET_CQ_0_7_STATUS, align 4
  %230 = load i32, i32* %13, align 4
  %231 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %228, i32 %229, i32 %230)
  %232 = load i32*, i32** %8, align 8
  %233 = load i32, i32* %14, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %14, align 4
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %231, i32* %236, align 4
  %237 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %238 = load i32, i32* @NIC_QSET_CQ_0_7_STATUS2, align 4
  %239 = load i32, i32* %13, align 4
  %240 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %237, i32 %238, i32 %239)
  %241 = load i32*, i32** %8, align 8
  %242 = load i32, i32* %14, align 4
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* %14, align 4
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  store i32 %240, i32* %245, align 4
  %246 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %247 = load i32, i32* @NIC_QSET_CQ_0_7_DEBUG, align 4
  %248 = load i32, i32* %13, align 4
  %249 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %246, i32 %247, i32 %248)
  %250 = load i32*, i32** %8, align 8
  %251 = load i32, i32* %14, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %14, align 4
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  store i32 %249, i32* %254, align 4
  br label %255

255:                                              ; preds = %164
  %256 = load i32, i32* %13, align 4
  %257 = add nsw i32 %256, 1
  store i32 %257, i32* %13, align 4
  br label %160

258:                                              ; preds = %160
  store i32 0, i32* %13, align 4
  br label %259

259:                                              ; preds = %293, %258
  %260 = load i32, i32* %13, align 4
  %261 = load i32, i32* @MAX_RCV_QUEUES_PER_QS, align 4
  %262 = icmp slt i32 %260, %261
  br i1 %262, label %263, label %296

263:                                              ; preds = %259
  %264 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %265 = load i32, i32* @NIC_QSET_RQ_0_7_CFG, align 4
  %266 = load i32, i32* %13, align 4
  %267 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %264, i32 %265, i32 %266)
  %268 = load i32*, i32** %8, align 8
  %269 = load i32, i32* %14, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %14, align 4
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  store i32 %267, i32* %272, align 4
  %273 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %274 = load i32, i32* @NIC_QSET_RQ_0_7_STAT_0_1, align 4
  %275 = load i32, i32* %13, align 4
  %276 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %273, i32 %274, i32 %275)
  %277 = load i32*, i32** %8, align 8
  %278 = load i32, i32* %14, align 4
  %279 = add nsw i32 %278, 1
  store i32 %279, i32* %14, align 4
  %280 = sext i32 %278 to i64
  %281 = getelementptr inbounds i32, i32* %277, i64 %280
  store i32 %276, i32* %281, align 4
  %282 = load i32, i32* @NIC_QSET_RQ_0_7_STAT_0_1, align 4
  %283 = or i32 %282, 8
  store i32 %283, i32* %9, align 4
  %284 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %285 = load i32, i32* %9, align 4
  %286 = load i32, i32* %13, align 4
  %287 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %284, i32 %285, i32 %286)
  %288 = load i32*, i32** %8, align 8
  %289 = load i32, i32* %14, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %14, align 4
  %291 = sext i32 %289 to i64
  %292 = getelementptr inbounds i32, i32* %288, i64 %291
  store i32 %287, i32* %292, align 4
  br label %293

293:                                              ; preds = %263
  %294 = load i32, i32* %13, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %13, align 4
  br label %259

296:                                              ; preds = %259
  store i32 0, i32* %13, align 4
  br label %297

297:                                              ; preds = %399, %296
  %298 = load i32, i32* %13, align 4
  %299 = load i32, i32* @MAX_SND_QUEUES_PER_QS, align 4
  %300 = icmp slt i32 %298, %299
  br i1 %300, label %301, label %402

301:                                              ; preds = %297
  %302 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %303 = load i32, i32* @NIC_QSET_SQ_0_7_CFG, align 4
  %304 = load i32, i32* %13, align 4
  %305 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %302, i32 %303, i32 %304)
  %306 = load i32*, i32** %8, align 8
  %307 = load i32, i32* %14, align 4
  %308 = add nsw i32 %307, 1
  store i32 %308, i32* %14, align 4
  %309 = sext i32 %307 to i64
  %310 = getelementptr inbounds i32, i32* %306, i64 %309
  store i32 %305, i32* %310, align 4
  %311 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %312 = load i32, i32* @NIC_QSET_SQ_0_7_THRESH, align 4
  %313 = load i32, i32* %13, align 4
  %314 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %311, i32 %312, i32 %313)
  %315 = load i32*, i32** %8, align 8
  %316 = load i32, i32* %14, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %14, align 4
  %318 = sext i32 %316 to i64
  %319 = getelementptr inbounds i32, i32* %315, i64 %318
  store i32 %314, i32* %319, align 4
  %320 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %321 = load i32, i32* @NIC_QSET_SQ_0_7_BASE, align 4
  %322 = load i32, i32* %13, align 4
  %323 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %320, i32 %321, i32 %322)
  %324 = load i32*, i32** %8, align 8
  %325 = load i32, i32* %14, align 4
  %326 = add nsw i32 %325, 1
  store i32 %326, i32* %14, align 4
  %327 = sext i32 %325 to i64
  %328 = getelementptr inbounds i32, i32* %324, i64 %327
  store i32 %323, i32* %328, align 4
  %329 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %330 = load i32, i32* @NIC_QSET_SQ_0_7_HEAD, align 4
  %331 = load i32, i32* %13, align 4
  %332 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %329, i32 %330, i32 %331)
  %333 = load i32*, i32** %8, align 8
  %334 = load i32, i32* %14, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %14, align 4
  %336 = sext i32 %334 to i64
  %337 = getelementptr inbounds i32, i32* %333, i64 %336
  store i32 %332, i32* %337, align 4
  %338 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %339 = load i32, i32* @NIC_QSET_SQ_0_7_TAIL, align 4
  %340 = load i32, i32* %13, align 4
  %341 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %338, i32 %339, i32 %340)
  %342 = load i32*, i32** %8, align 8
  %343 = load i32, i32* %14, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %14, align 4
  %345 = sext i32 %343 to i64
  %346 = getelementptr inbounds i32, i32* %342, i64 %345
  store i32 %341, i32* %346, align 4
  %347 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %348 = load i32, i32* @NIC_QSET_SQ_0_7_DOOR, align 4
  %349 = load i32, i32* %13, align 4
  %350 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %347, i32 %348, i32 %349)
  %351 = load i32*, i32** %8, align 8
  %352 = load i32, i32* %14, align 4
  %353 = add nsw i32 %352, 1
  store i32 %353, i32* %14, align 4
  %354 = sext i32 %352 to i64
  %355 = getelementptr inbounds i32, i32* %351, i64 %354
  store i32 %350, i32* %355, align 4
  %356 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %357 = load i32, i32* @NIC_QSET_SQ_0_7_STATUS, align 4
  %358 = load i32, i32* %13, align 4
  %359 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %356, i32 %357, i32 %358)
  %360 = load i32*, i32** %8, align 8
  %361 = load i32, i32* %14, align 4
  %362 = add nsw i32 %361, 1
  store i32 %362, i32* %14, align 4
  %363 = sext i32 %361 to i64
  %364 = getelementptr inbounds i32, i32* %360, i64 %363
  store i32 %359, i32* %364, align 4
  %365 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %366 = load i32, i32* @NIC_QSET_SQ_0_7_DEBUG, align 4
  %367 = load i32, i32* %13, align 4
  %368 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %365, i32 %366, i32 %367)
  %369 = load i32*, i32** %8, align 8
  %370 = load i32, i32* %14, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %14, align 4
  %372 = sext i32 %370 to i64
  %373 = getelementptr inbounds i32, i32* %369, i64 %372
  store i32 %368, i32* %373, align 4
  %374 = load i32*, i32** %8, align 8
  %375 = load i32, i32* %14, align 4
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %14, align 4
  %377 = sext i32 %375 to i64
  %378 = getelementptr inbounds i32, i32* %374, i64 %377
  store i32 0, i32* %378, align 4
  %379 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %380 = load i32, i32* @NIC_QSET_SQ_0_7_STAT_0_1, align 4
  %381 = load i32, i32* %13, align 4
  %382 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %379, i32 %380, i32 %381)
  %383 = load i32*, i32** %8, align 8
  %384 = load i32, i32* %14, align 4
  %385 = add nsw i32 %384, 1
  store i32 %385, i32* %14, align 4
  %386 = sext i32 %384 to i64
  %387 = getelementptr inbounds i32, i32* %383, i64 %386
  store i32 %382, i32* %387, align 4
  %388 = load i32, i32* @NIC_QSET_SQ_0_7_STAT_0_1, align 4
  %389 = or i32 %388, 8
  store i32 %389, i32* %9, align 4
  %390 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %391 = load i32, i32* %9, align 4
  %392 = load i32, i32* %13, align 4
  %393 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %390, i32 %391, i32 %392)
  %394 = load i32*, i32** %8, align 8
  %395 = load i32, i32* %14, align 4
  %396 = add nsw i32 %395, 1
  store i32 %396, i32* %14, align 4
  %397 = sext i32 %395 to i64
  %398 = getelementptr inbounds i32, i32* %394, i64 %397
  store i32 %393, i32* %398, align 4
  br label %399

399:                                              ; preds = %301
  %400 = load i32, i32* %13, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %13, align 4
  br label %297

402:                                              ; preds = %297
  store i32 0, i32* %13, align 4
  br label %403

403:                                              ; preds = %490, %402
  %404 = load i32, i32* %13, align 4
  %405 = load i32, i32* @MAX_RCV_BUF_DESC_RINGS_PER_QS, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %493

407:                                              ; preds = %403
  %408 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %409 = load i32, i32* @NIC_QSET_RBDR_0_1_CFG, align 4
  %410 = load i32, i32* %13, align 4
  %411 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %408, i32 %409, i32 %410)
  %412 = load i32*, i32** %8, align 8
  %413 = load i32, i32* %14, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %14, align 4
  %415 = sext i32 %413 to i64
  %416 = getelementptr inbounds i32, i32* %412, i64 %415
  store i32 %411, i32* %416, align 4
  %417 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %418 = load i32, i32* @NIC_QSET_RBDR_0_1_THRESH, align 4
  %419 = load i32, i32* %13, align 4
  %420 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %417, i32 %418, i32 %419)
  %421 = load i32*, i32** %8, align 8
  %422 = load i32, i32* %14, align 4
  %423 = add nsw i32 %422, 1
  store i32 %423, i32* %14, align 4
  %424 = sext i32 %422 to i64
  %425 = getelementptr inbounds i32, i32* %421, i64 %424
  store i32 %420, i32* %425, align 4
  %426 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %427 = load i32, i32* @NIC_QSET_RBDR_0_1_BASE, align 4
  %428 = load i32, i32* %13, align 4
  %429 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %426, i32 %427, i32 %428)
  %430 = load i32*, i32** %8, align 8
  %431 = load i32, i32* %14, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %14, align 4
  %433 = sext i32 %431 to i64
  %434 = getelementptr inbounds i32, i32* %430, i64 %433
  store i32 %429, i32* %434, align 4
  %435 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %436 = load i32, i32* @NIC_QSET_RBDR_0_1_HEAD, align 4
  %437 = load i32, i32* %13, align 4
  %438 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %435, i32 %436, i32 %437)
  %439 = load i32*, i32** %8, align 8
  %440 = load i32, i32* %14, align 4
  %441 = add nsw i32 %440, 1
  store i32 %441, i32* %14, align 4
  %442 = sext i32 %440 to i64
  %443 = getelementptr inbounds i32, i32* %439, i64 %442
  store i32 %438, i32* %443, align 4
  %444 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %445 = load i32, i32* @NIC_QSET_RBDR_0_1_TAIL, align 4
  %446 = load i32, i32* %13, align 4
  %447 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %444, i32 %445, i32 %446)
  %448 = load i32*, i32** %8, align 8
  %449 = load i32, i32* %14, align 4
  %450 = add nsw i32 %449, 1
  store i32 %450, i32* %14, align 4
  %451 = sext i32 %449 to i64
  %452 = getelementptr inbounds i32, i32* %448, i64 %451
  store i32 %447, i32* %452, align 4
  %453 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %454 = load i32, i32* @NIC_QSET_RBDR_0_1_DOOR, align 4
  %455 = load i32, i32* %13, align 4
  %456 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %453, i32 %454, i32 %455)
  %457 = load i32*, i32** %8, align 8
  %458 = load i32, i32* %14, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %14, align 4
  %460 = sext i32 %458 to i64
  %461 = getelementptr inbounds i32, i32* %457, i64 %460
  store i32 %456, i32* %461, align 4
  %462 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %463 = load i32, i32* @NIC_QSET_RBDR_0_1_STATUS0, align 4
  %464 = load i32, i32* %13, align 4
  %465 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %462, i32 %463, i32 %464)
  %466 = load i32*, i32** %8, align 8
  %467 = load i32, i32* %14, align 4
  %468 = add nsw i32 %467, 1
  store i32 %468, i32* %14, align 4
  %469 = sext i32 %467 to i64
  %470 = getelementptr inbounds i32, i32* %466, i64 %469
  store i32 %465, i32* %470, align 4
  %471 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %472 = load i32, i32* @NIC_QSET_RBDR_0_1_STATUS1, align 4
  %473 = load i32, i32* %13, align 4
  %474 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %471, i32 %472, i32 %473)
  %475 = load i32*, i32** %8, align 8
  %476 = load i32, i32* %14, align 4
  %477 = add nsw i32 %476, 1
  store i32 %477, i32* %14, align 4
  %478 = sext i32 %476 to i64
  %479 = getelementptr inbounds i32, i32* %475, i64 %478
  store i32 %474, i32* %479, align 4
  %480 = load i32, i32* @NIC_QSET_RBDR_0_1_PREFETCH_STATUS, align 4
  store i32 %480, i32* %9, align 4
  %481 = load %struct.nicvf*, %struct.nicvf** %7, align 8
  %482 = load i32, i32* %9, align 4
  %483 = load i32, i32* %13, align 4
  %484 = call i32 @nicvf_queue_reg_read(%struct.nicvf* %481, i32 %482, i32 %483)
  %485 = load i32*, i32** %8, align 8
  %486 = load i32, i32* %14, align 4
  %487 = add nsw i32 %486, 1
  store i32 %487, i32* %14, align 4
  %488 = sext i32 %486 to i64
  %489 = getelementptr inbounds i32, i32* %485, i64 %488
  store i32 %484, i32* %489, align 4
  br label %490

490:                                              ; preds = %407
  %491 = load i32, i32* %13, align 4
  %492 = add nsw i32 %491, 1
  store i32 %492, i32* %13, align 4
  br label %403

493:                                              ; preds = %403
  ret void
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @nicvf_reg_read(%struct.nicvf*, i32) #1

declare dso_local i32 @nicvf_queue_reg_read(%struct.nicvf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
