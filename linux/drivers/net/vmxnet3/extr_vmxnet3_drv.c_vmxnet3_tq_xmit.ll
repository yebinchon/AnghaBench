; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/vmxnet3/extr_vmxnet3_drv.c_vmxnet3_tq_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i64, i32 }
%struct.vmxnet3_tx_queue = type { i32, %struct.TYPE_8__, i32, %struct.TYPE_12__, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, %union.Vmxnet3_GenericDesc*, i32 }
%union.Vmxnet3_GenericDesc = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i32, i32, i32, i32, i64 }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.vmxnet3_adapter = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.net_device = type { i32 }
%struct.vmxnet3_tx_ctx = type { i32, i32, i32, i64, i64, i64, %union.Vmxnet3_GenericDesc*, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i8** }
%struct.TYPE_13__ = type { i32 }

@ETH_P_IP = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@VMXNET3_MAX_TXD_PER_PKT = common dso_local global i64 0, align 8
@VMXNET3_MAX_TX_BUF_SIZE = common dso_local global i64 0, align 8
@CHECKSUM_PARTIAL = common dso_local global i64 0, align 8
@VMXNET3_MAX_CSUM_OFFSET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"tx queue stopped on %s, next2comp %u next2fill %u\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@VMXNET3_TXD_CQ = common dso_local global i32 0, align 4
@VMXNET3_TXD_EOP = common dso_local global i32 0, align 4
@VMXNET3_OM_TSO = common dso_local global i64 0, align 8
@VMXNET3_OM_CSUM = common dso_local global i64 0, align 8
@VMXNET3_TXD_GEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"txd[%u]: SOP 0x%Lx 0x%x 0x%x\0A\00", align 1
@VMXNET3_REG_TXPROD = common dso_local global i64 0, align 8
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*, %struct.net_device*)* @vmxnet3_tq_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vmxnet3_tq_xmit(%struct.sk_buff* %0, %struct.vmxnet3_tx_queue* %1, %struct.vmxnet3_adapter* %2, %struct.net_device* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.vmxnet3_tx_queue*, align 8
  %8 = alloca %struct.vmxnet3_adapter*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca %struct.vmxnet3_tx_ctx, align 8
  %16 = alloca %union.Vmxnet3_GenericDesc*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.vmxnet3_tx_queue* %1, %struct.vmxnet3_tx_queue** %7, align 8
  store %struct.vmxnet3_adapter* %2, %struct.vmxnet3_adapter** %8, align 8
  store %struct.net_device* %3, %struct.net_device** %9, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = call i64 @txd_estimate(%struct.sk_buff* %17)
  store i64 %18, i64* %11, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %20 = call i64 @vlan_get_protocol(%struct.sk_buff* %19)
  %21 = load i32, i32* @ETH_P_IP, align 4
  %22 = call i64 @cpu_to_be16(i32 %21)
  %23 = icmp eq i64 %20, %22
  %24 = zext i1 %23 to i32
  %25 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 0
  store i32 %24, i32* %25, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %27 = call i64 @vlan_get_protocol(%struct.sk_buff* %26)
  %28 = load i32, i32* @ETH_P_IPV6, align 4
  %29 = call i64 @cpu_to_be16(i32 %28)
  %30 = icmp eq i64 %27, %29
  %31 = zext i1 %30 to i32
  %32 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 1
  store i32 %31, i32* %32, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %34 = call %struct.TYPE_13__* @skb_shinfo(%struct.sk_buff* %33)
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 2
  store i32 %36, i32* %37, align 8
  %38 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %68

41:                                               ; preds = %4
  %42 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %43 = call i64 @skb_header_cloned(%struct.sk_buff* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call i64 @pskb_expand_head(%struct.sk_buff* %46, i32 0, i32 0, i32 %47)
  %49 = icmp ne i64 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %45
  %54 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %55 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %421

59:                                               ; preds = %45
  %60 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %61 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %41
  %66 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %67 = call i32 @vmxnet3_prepare_tso(%struct.sk_buff* %66, %struct.vmxnet3_tx_ctx* %15)
  br label %96

68:                                               ; preds = %4
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @VMXNET3_MAX_TXD_PER_PKT, align 8
  %71 = icmp sgt i64 %69, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %95

75:                                               ; preds = %68
  %76 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %77 = call i64 @skb_linearize(%struct.sk_buff* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %75
  %80 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %81 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %421

85:                                               ; preds = %75
  %86 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %87 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %92 = call i32 @skb_headlen(%struct.sk_buff* %91)
  %93 = call i64 @VMXNET3_TXD_NEEDED(i32 %92)
  %94 = add nsw i64 %93, 1
  store i64 %94, i64* %11, align 8
  br label %95

95:                                               ; preds = %85, %68
  br label %96

96:                                               ; preds = %95, %65
  %97 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %98 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %99 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %100 = call i32 @vmxnet3_parse_hdr(%struct.sk_buff* %97, %struct.vmxnet3_tx_queue* %98, %struct.vmxnet3_tx_ctx* %15, %struct.vmxnet3_adapter* %99)
  store i32 %100, i32* %10, align 4
  %101 = load i32, i32* %10, align 4
  %102 = icmp sge i32 %101, 0
  br i1 %102, label %103, label %162

103:                                              ; preds = %96
  %104 = load i32, i32* %10, align 4
  %105 = icmp sle i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %103
  %107 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br label %110

110:                                              ; preds = %106, %103
  %111 = phi i1 [ false, %103 ], [ %109, %106 ]
  %112 = zext i1 %111 to i32
  %113 = call i32 @BUG_ON(i32 %112)
  %114 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %110
  %118 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 4
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 5
  %121 = load i64, i64* %120, align 8
  %122 = add nsw i64 %119, %121
  %123 = load i64, i64* @VMXNET3_MAX_TX_BUF_SIZE, align 8
  %124 = icmp sgt i64 %122, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 @unlikely(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %117
  %129 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %130 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %421

134:                                              ; preds = %117
  br label %161

135:                                              ; preds = %110
  %136 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %137 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %160

141:                                              ; preds = %135
  %142 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %145 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %143, %146
  %148 = load i64, i64* @VMXNET3_MAX_CSUM_OFFSET, align 8
  %149 = icmp sgt i64 %147, %148
  %150 = zext i1 %149 to i32
  %151 = call i64 @unlikely(i32 %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %159

153:                                              ; preds = %141
  %154 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %155 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %156, align 4
  br label %421

159:                                              ; preds = %141
  br label %160

160:                                              ; preds = %159, %135
  br label %161

161:                                              ; preds = %160, %134
  br label %168

162:                                              ; preds = %96
  %163 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %164 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  br label %421

168:                                              ; preds = %161
  %169 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %170 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %169, i32 0, i32 2
  %171 = load i64, i64* %14, align 8
  %172 = call i32 @spin_lock_irqsave(i32* %170, i64 %171)
  %173 = load i64, i64* %11, align 8
  %174 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %175 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %174, i32 0, i32 3
  %176 = call i64 @vmxnet3_cmd_ring_desc_avail(%struct.TYPE_12__* %175)
  %177 = icmp sgt i64 %173, %176
  br i1 %177, label %178, label %210

178:                                              ; preds = %168
  %179 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %180 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  %184 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %185 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %184, i32 0, i32 0
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %185, align 8
  %187 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %188 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %187, i32 0, i32 0
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = sext i32 %191 to i64
  %193 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %194 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %193, i32 0, i32 3
  %195 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 8
  %197 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %198 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = call i32 (%struct.TYPE_14__*, i8*, i64, i32, i32, ...) @netdev_dbg(%struct.TYPE_14__* %186, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %192, i32 %196, i32 %200)
  %202 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %203 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %204 = call i32 @vmxnet3_tq_stop(%struct.vmxnet3_tx_queue* %202, %struct.vmxnet3_adapter* %203)
  %205 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %206 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %205, i32 0, i32 2
  %207 = load i64, i64* %14, align 8
  %208 = call i32 @spin_unlock_irqrestore(i32* %206, i64 %207)
  %209 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %209, i32* %5, align 4
  br label %430

210:                                              ; preds = %168
  %211 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %212 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %213 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %214 = call i32 @vmxnet3_copy_hdr(%struct.sk_buff* %211, %struct.vmxnet3_tx_queue* %212, %struct.vmxnet3_tx_ctx* %15, %struct.vmxnet3_adapter* %213)
  %215 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %216 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %217 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %218 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %221 = call i64 @vmxnet3_map_pkt(%struct.sk_buff* %215, %struct.vmxnet3_tx_ctx* %15, %struct.vmxnet3_tx_queue* %216, i32 %219, %struct.vmxnet3_adapter* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %224

223:                                              ; preds = %210
  br label %416

224:                                              ; preds = %210
  %225 = load i32, i32* @VMXNET3_TXD_CQ, align 4
  %226 = load i32, i32* @VMXNET3_TXD_EOP, align 4
  %227 = or i32 %225, %226
  %228 = call i8* @cpu_to_le32(i32 %227)
  %229 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 7
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 0
  %232 = load i8**, i8*** %231, align 8
  %233 = getelementptr inbounds i8*, i8** %232, i64 3
  store i8* %228, i8** %233, align 8
  %234 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 6
  %235 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %234, align 8
  store %union.Vmxnet3_GenericDesc* %235, %union.Vmxnet3_GenericDesc** %16, align 8
  %236 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %237 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %236, i32 0, i32 4
  %238 = load %struct.TYPE_10__*, %struct.TYPE_10__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load i8*, i8** %239, align 8
  %241 = call i32 @le32_to_cpu(i8* %240)
  store i32 %241, i32* %13, align 4
  %242 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %245, label %282

245:                                              ; preds = %224
  %246 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 5
  %249 = load i64, i64* %248, align 8
  %250 = add nsw i64 %247, %249
  %251 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %252 = bitcast %union.Vmxnet3_GenericDesc* %251 to %struct.TYPE_11__*
  %253 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %252, i32 0, i32 0
  store i64 %250, i64* %253, align 8
  %254 = load i64, i64* @VMXNET3_OM_TSO, align 8
  %255 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %256 = bitcast %union.Vmxnet3_GenericDesc* %255 to %struct.TYPE_11__*
  %257 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %256, i32 0, i32 5
  store i64 %254, i64* %257, align 8
  %258 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %261 = bitcast %union.Vmxnet3_GenericDesc* %260 to %struct.TYPE_11__*
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 1
  store i32 %259, i32* %262, align 8
  %263 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %264 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 8
  %266 = sext i32 %265 to i64
  %267 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %268 = bitcast %union.Vmxnet3_GenericDesc* %267 to %struct.TYPE_11__*
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 0
  %270 = load i64, i64* %269, align 8
  %271 = sub nsw i64 %266, %270
  %272 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 2
  %273 = load i32, i32* %272, align 8
  %274 = sext i32 %273 to i64
  %275 = add nsw i64 %271, %274
  %276 = sub nsw i64 %275, 1
  %277 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = sdiv i64 %276, %279
  %281 = trunc i64 %280 to i32
  store i32 %281, i32* %12, align 4
  br label %316

282:                                              ; preds = %224
  %283 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %284 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %283, i32 0, i32 0
  %285 = load i64, i64* %284, align 8
  %286 = load i64, i64* @CHECKSUM_PARTIAL, align 8
  %287 = icmp eq i64 %285, %286
  br i1 %287, label %288, label %308

288:                                              ; preds = %282
  %289 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 4
  %290 = load i64, i64* %289, align 8
  %291 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %292 = bitcast %union.Vmxnet3_GenericDesc* %291 to %struct.TYPE_11__*
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 0
  store i64 %290, i64* %293, align 8
  %294 = load i64, i64* @VMXNET3_OM_CSUM, align 8
  %295 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %296 = bitcast %union.Vmxnet3_GenericDesc* %295 to %struct.TYPE_11__*
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 0, i32 5
  store i64 %294, i64* %297, align 8
  %298 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 4
  %299 = load i64, i64* %298, align 8
  %300 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %301 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %300, i32 0, i32 1
  %302 = load i64, i64* %301, align 8
  %303 = add nsw i64 %299, %302
  %304 = trunc i64 %303 to i32
  %305 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %306 = bitcast %union.Vmxnet3_GenericDesc* %305 to %struct.TYPE_11__*
  %307 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i32 0, i32 1
  store i32 %304, i32* %307, align 8
  br label %315

308:                                              ; preds = %282
  %309 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %310 = bitcast %union.Vmxnet3_GenericDesc* %309 to %struct.TYPE_11__*
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 5
  store i64 0, i64* %311, align 8
  %312 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %313 = bitcast %union.Vmxnet3_GenericDesc* %312 to %struct.TYPE_11__*
  %314 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %313, i32 0, i32 1
  store i32 0, i32* %314, align 8
  br label %315

315:                                              ; preds = %308, %288
  store i32 1, i32* %12, align 4
  br label %316

316:                                              ; preds = %315, %245
  %317 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %318 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %317, i32 0, i32 4
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 0
  %321 = load i32, i32* %12, align 4
  %322 = call i32 @le32_add_cpu(i8** %320, i32 %321)
  %323 = load i32, i32* %12, align 4
  %324 = load i32, i32* %13, align 4
  %325 = add nsw i32 %324, %323
  store i32 %325, i32* %13, align 4
  %326 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %327 = call i64 @skb_vlan_tag_present(%struct.sk_buff* %326)
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %338

329:                                              ; preds = %316
  %330 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %331 = bitcast %union.Vmxnet3_GenericDesc* %330 to %struct.TYPE_11__*
  %332 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %331, i32 0, i32 2
  store i32 1, i32* %332, align 4
  %333 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %334 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %333)
  %335 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %336 = bitcast %union.Vmxnet3_GenericDesc* %335 to %struct.TYPE_11__*
  %337 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %336, i32 0, i32 4
  store i32 %334, i32* %337, align 4
  br label %338

338:                                              ; preds = %329, %316
  %339 = call i32 (...) @dma_wmb()
  %340 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %341 = bitcast %union.Vmxnet3_GenericDesc* %340 to i8***
  %342 = load i8**, i8*** %341, align 8
  %343 = getelementptr inbounds i8*, i8** %342, i64 2
  %344 = load i8*, i8** %343, align 8
  %345 = call i32 @le32_to_cpu(i8* %344)
  %346 = load i32, i32* @VMXNET3_TXD_GEN, align 4
  %347 = xor i32 %345, %346
  %348 = call i8* @cpu_to_le32(i32 %347)
  %349 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %350 = bitcast %union.Vmxnet3_GenericDesc* %349 to i8***
  %351 = load i8**, i8*** %350, align 8
  %352 = getelementptr inbounds i8*, i8** %351, i64 2
  store i8* %348, i8** %352, align 8
  %353 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %354 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %353, i32 0, i32 0
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %354, align 8
  %356 = getelementptr inbounds %struct.vmxnet3_tx_ctx, %struct.vmxnet3_tx_ctx* %15, i32 0, i32 6
  %357 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %356, align 8
  %358 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %359 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %358, i32 0, i32 3
  %360 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %359, i32 0, i32 1
  %361 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %360, align 8
  %362 = ptrtoint %union.Vmxnet3_GenericDesc* %357 to i64
  %363 = ptrtoint %union.Vmxnet3_GenericDesc* %361 to i64
  %364 = sub i64 %362, %363
  %365 = sdiv exact i64 %364, 32
  %366 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %367 = bitcast %union.Vmxnet3_GenericDesc* %366 to %struct.TYPE_11__*
  %368 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @le64_to_cpu(i32 %369)
  %371 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %372 = bitcast %union.Vmxnet3_GenericDesc* %371 to i8***
  %373 = load i8**, i8*** %372, align 8
  %374 = getelementptr inbounds i8*, i8** %373, i64 2
  %375 = load i8*, i8** %374, align 8
  %376 = call i32 @le32_to_cpu(i8* %375)
  %377 = load %union.Vmxnet3_GenericDesc*, %union.Vmxnet3_GenericDesc** %16, align 8
  %378 = bitcast %union.Vmxnet3_GenericDesc* %377 to i8***
  %379 = load i8**, i8*** %378, align 8
  %380 = getelementptr inbounds i8*, i8** %379, i64 3
  %381 = load i8*, i8** %380, align 8
  %382 = call i32 @le32_to_cpu(i8* %381)
  %383 = call i32 (%struct.TYPE_14__*, i8*, i64, i32, i32, ...) @netdev_dbg(%struct.TYPE_14__* %355, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %365, i32 %370, i32 %376, i32 %382)
  %384 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %385 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %384, i32 0, i32 2
  %386 = load i64, i64* %14, align 8
  %387 = call i32 @spin_unlock_irqrestore(i32* %385, i64 %386)
  %388 = load i32, i32* %13, align 4
  %389 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %390 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %389, i32 0, i32 4
  %391 = load %struct.TYPE_10__*, %struct.TYPE_10__** %390, align 8
  %392 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %391, i32 0, i32 1
  %393 = load i8*, i8** %392, align 8
  %394 = call i32 @le32_to_cpu(i8* %393)
  %395 = icmp sge i32 %388, %394
  br i1 %395, label %396, label %414

396:                                              ; preds = %338
  %397 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %398 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %397, i32 0, i32 4
  %399 = load %struct.TYPE_10__*, %struct.TYPE_10__** %398, align 8
  %400 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %399, i32 0, i32 0
  store i8* null, i8** %400, align 8
  %401 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %8, align 8
  %402 = load i64, i64* @VMXNET3_REG_TXPROD, align 8
  %403 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %404 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %403, i32 0, i32 0
  %405 = load i32, i32* %404, align 8
  %406 = mul nsw i32 %405, 8
  %407 = sext i32 %406 to i64
  %408 = add nsw i64 %402, %407
  %409 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %410 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %409, i32 0, i32 3
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = call i32 @VMXNET3_WRITE_BAR0_REG(%struct.vmxnet3_adapter* %401, i64 %408, i32 %412)
  br label %414

414:                                              ; preds = %396, %338
  %415 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %415, i32* %5, align 4
  br label %430

416:                                              ; preds = %223
  %417 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %418 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %417, i32 0, i32 2
  %419 = load i64, i64* %14, align 8
  %420 = call i32 @spin_unlock_irqrestore(i32* %418, i64 %419)
  br label %421

421:                                              ; preds = %416, %162, %153, %128, %79, %53
  %422 = load %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_queue** %7, align 8
  %423 = getelementptr inbounds %struct.vmxnet3_tx_queue, %struct.vmxnet3_tx_queue* %422, i32 0, i32 1
  %424 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %423, i32 0, i32 0
  %425 = load i32, i32* %424, align 4
  %426 = add nsw i32 %425, 1
  store i32 %426, i32* %424, align 4
  %427 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %428 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %427)
  %429 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %429, i32* %5, align 4
  br label %430

430:                                              ; preds = %421, %414, %178
  %431 = load i32, i32* %5, align 4
  ret i32 %431
}

declare dso_local i64 @txd_estimate(%struct.sk_buff*) #1

declare dso_local i64 @vlan_get_protocol(%struct.sk_buff*) #1

declare dso_local i64 @cpu_to_be16(i32) #1

declare dso_local %struct.TYPE_13__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @skb_header_cloned(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @pskb_expand_head(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @vmxnet3_prepare_tso(%struct.sk_buff*, %struct.vmxnet3_tx_ctx*) #1

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i64 @VMXNET3_TXD_NEEDED(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i32 @vmxnet3_parse_hdr(%struct.sk_buff*, %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @vmxnet3_cmd_ring_desc_avail(%struct.TYPE_12__*) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_14__*, i8*, i64, i32, i32, ...) #1

declare dso_local i32 @vmxnet3_tq_stop(%struct.vmxnet3_tx_queue*, %struct.vmxnet3_adapter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @vmxnet3_copy_hdr(%struct.sk_buff*, %struct.vmxnet3_tx_queue*, %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_adapter*) #1

declare dso_local i64 @vmxnet3_map_pkt(%struct.sk_buff*, %struct.vmxnet3_tx_ctx*, %struct.vmxnet3_tx_queue*, i32, %struct.vmxnet3_adapter*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @le32_to_cpu(i8*) #1

declare dso_local i32 @le32_add_cpu(i8**, i32) #1

declare dso_local i64 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @dma_wmb(...) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @VMXNET3_WRITE_BAR0_REG(%struct.vmxnet3_adapter*, i64, i32) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
