; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_intr_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/atlx/extr_atl1.c_atl1_intr_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atl1_adapter = type { i32, %struct.TYPE_6__, %struct.atl1_rrd_ring, %struct.atl1_rfd_ring, %struct.TYPE_9__, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.atl1_rrd_ring = type { i64, i32 }
%struct.atl1_rfd_ring = type { i64, i64, i32, %struct.atl1_buffer* }
%struct.atl1_buffer = type { i64, %struct.sk_buff*, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.rx_return_desc = type { i32, i32, i32, i32, i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"unexpected RRD buffer count\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"rx_buf_len = %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"RRD num_buf = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"RRD pkt_len = %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"RRD pkt_flg = 0x%08X\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"RRD err_flg = 0x%08X\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"RRD vlan_tag = 0x%08X\0A\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"bad RRD\0A\00", align 1
@PACKET_FLAG_ERR = common dso_local global i32 0, align 4
@ERR_FLAG_IP_CHKSUM = common dso_local global i32 0, align 4
@ERR_FLAG_L4_CHKSUM = common dso_local global i32 0, align 4
@ERR_FLAG_LEN = common dso_local global i32 0, align 4
@PCI_DMA_FROMDEVICE = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i64 0, align 8
@PACKET_FLAG_VLAN_INS = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@MB_RFD_PROD_INDX_MASK = common dso_local global i64 0, align 8
@MB_RFD_PROD_INDX_SHIFT = common dso_local global i64 0, align 8
@MB_RRD_CONS_INDX_MASK = common dso_local global i64 0, align 8
@MB_RRD_CONS_INDX_SHIFT = common dso_local global i64 0, align 8
@MB_TPD_PROD_INDX_MASK = common dso_local global i64 0, align 8
@MB_TPD_PROD_INDX_SHIFT = common dso_local global i64 0, align 8
@REG_MAILBOX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atl1_adapter*, i32)* @atl1_intr_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atl1_intr_rx(%struct.atl1_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.atl1_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.atl1_rfd_ring*, align 8
  %11 = alloca %struct.atl1_rrd_ring*, align 8
  %12 = alloca %struct.atl1_buffer*, align 8
  %13 = alloca %struct.rx_return_desc*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.atl1_adapter* %0, %struct.atl1_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %18 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %19 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %18, i32 0, i32 3
  store %struct.atl1_rfd_ring* %19, %struct.atl1_rfd_ring** %10, align 8
  %20 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %20, i32 0, i32 2
  store %struct.atl1_rrd_ring* %21, %struct.atl1_rrd_ring** %11, align 8
  store i32 0, i32* %6, align 4
  %22 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %11, align 8
  %23 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %22, i32 0, i32 1
  %24 = call i64 @atomic_read(i32* %23)
  store i64 %24, i64* %8, align 8
  br label %25

25:                                               ; preds = %287, %212, %157, %2
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %297

29:                                               ; preds = %25
  %30 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %11, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call %struct.rx_return_desc* @ATL1_RRD_DESC(%struct.atl1_rrd_ring* %30, i64 %31)
  store %struct.rx_return_desc* %32, %struct.rx_return_desc** %13, align 8
  store i32 1, i32* %5, align 4
  %33 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %34 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @likely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %160

39:                                               ; preds = %29
  br label %40

40:                                               ; preds = %124, %39
  %41 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %42 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 1
  %45 = zext i1 %44 to i32
  %46 = call i64 @likely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %161

49:                                               ; preds = %40
  %50 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %51 = call i64 @netif_msg_rx_err(%struct.atl1_adapter* %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %116

53:                                               ; preds = %49
  %54 = load i32, i32* @KERN_DEBUG, align 4
  %55 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %55, i32 0, i32 6
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %54, i32* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @KERN_DEBUG, align 4
  %61 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %62 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %61, i32 0, i32 6
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %60, i32* %64, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %67)
  %69 = load i32, i32* @KERN_DEBUG, align 4
  %70 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %70, i32 0, i32 6
  %72 = load %struct.TYPE_10__*, %struct.TYPE_10__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %72, i32 0, i32 0
  %74 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %75 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %69, i32* %73, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @KERN_DEBUG, align 4
  %79 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %80 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %79, i32 0, i32 6
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %84 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %83, i32 0, i32 5
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %78, i32* %82, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %87)
  %89 = load i32, i32* @KERN_DEBUG, align 4
  %90 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %91 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %90, i32 0, i32 6
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %95 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %89, i32* %93, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %96)
  %98 = load i32, i32* @KERN_DEBUG, align 4
  %99 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %100 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %99, i32 0, i32 6
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %104 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %98, i32* %102, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @KERN_DEBUG, align 4
  %108 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %109 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %108, i32 0, i32 6
  %110 = load %struct.TYPE_10__*, %struct.TYPE_10__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 0
  %112 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %113 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 4
  %115 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %107, i32* %111, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %53, %49
  br label %117

117:                                              ; preds = %116
  %118 = load i32, i32* %5, align 4
  %119 = add nsw i32 %118, -1
  store i32 %119, i32* %5, align 4
  %120 = icmp sgt i32 %118, 0
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %117
  %125 = call i32 @udelay(i32 1)
  br label %40

126:                                              ; preds = %117
  %127 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %128 = call i64 @netif_msg_rx_err(%struct.atl1_adapter* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load i32, i32* @KERN_DEBUG, align 4
  %132 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %133 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %132, i32 0, i32 6
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %134, i32 0, i32 0
  %136 = call i32 (i32, i32*, i8*, ...) @dev_printk(i32 %131, i32* %135, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  br label %137

137:                                              ; preds = %130, %126
  %138 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %139 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %146

142:                                              ; preds = %137
  %143 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %144 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %145 = call i32 @atl1_update_rfd_index(%struct.atl1_adapter* %143, %struct.rx_return_desc* %144)
  br label %146

146:                                              ; preds = %142, %137
  %147 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %148 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %147, i32 0, i32 5
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  store i32 0, i32* %149, align 8
  %150 = load i64, i64* %8, align 8
  %151 = add nsw i64 %150, 1
  store i64 %151, i64* %8, align 8
  %152 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %11, align 8
  %153 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = icmp eq i64 %151, %154
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  store i64 0, i64* %8, align 8
  br label %157

157:                                              ; preds = %156, %146
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  br label %25

160:                                              ; preds = %29
  br label %297

161:                                              ; preds = %48
  %162 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %163 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %164 = call i32 @atl1_clean_alloc_flag(%struct.atl1_adapter* %162, %struct.rx_return_desc* %163, i32 0)
  %165 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %10, align 8
  %166 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %165, i32 0, i32 3
  %167 = load %struct.atl1_buffer*, %struct.atl1_buffer** %166, align 8
  %168 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %169 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %168, i32 0, i32 4
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %167, i64 %170
  store %struct.atl1_buffer* %171, %struct.atl1_buffer** %12, align 8
  %172 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %10, align 8
  %173 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %172, i32 0, i32 0
  %174 = load i64, i64* %173, align 8
  %175 = add nsw i64 %174, 1
  store i64 %175, i64* %173, align 8
  %176 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %10, align 8
  %177 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = icmp eq i64 %175, %178
  br i1 %179, label %180, label %183

180:                                              ; preds = %161
  %181 = load %struct.atl1_rfd_ring*, %struct.atl1_rfd_ring** %10, align 8
  %182 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %181, i32 0, i32 0
  store i64 0, i64* %182, align 8
  br label %183

183:                                              ; preds = %180, %161
  %184 = load i64, i64* %8, align 8
  %185 = add nsw i64 %184, 1
  store i64 %185, i64* %8, align 8
  %186 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %11, align 8
  %187 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %186, i32 0, i32 0
  %188 = load i64, i64* %187, align 8
  %189 = icmp eq i64 %185, %188
  br i1 %189, label %190, label %191

190:                                              ; preds = %183
  store i64 0, i64* %8, align 8
  br label %191

191:                                              ; preds = %190, %183
  %192 = load i32, i32* %6, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %6, align 4
  %194 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %195 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load i32, i32* @PACKET_FLAG_ERR, align 4
  %198 = and i32 %196, %197
  %199 = call i64 @unlikely(i32 %198)
  %200 = icmp ne i64 %199, 0
  br i1 %200, label %201, label %219

201:                                              ; preds = %191
  %202 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %203 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* @ERR_FLAG_IP_CHKSUM, align 4
  %206 = load i32, i32* @ERR_FLAG_L4_CHKSUM, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @ERR_FLAG_LEN, align 4
  %209 = or i32 %207, %208
  %210 = and i32 %204, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %218, label %212

212:                                              ; preds = %201
  %213 = load %struct.atl1_buffer*, %struct.atl1_buffer** %12, align 8
  %214 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %213, i32 0, i32 0
  store i64 0, i64* %214, align 8
  %215 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %216 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %215, i32 0, i32 5
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %216, i32 0, i32 0
  store i32 0, i32* %217, align 8
  br label %25

218:                                              ; preds = %201
  br label %219

219:                                              ; preds = %218, %191
  %220 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %221 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %220, i32 0, i32 6
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %221, align 8
  %223 = load %struct.atl1_buffer*, %struct.atl1_buffer** %12, align 8
  %224 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = load %struct.atl1_buffer*, %struct.atl1_buffer** %12, align 8
  %227 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 8
  %229 = load i32, i32* @PCI_DMA_FROMDEVICE, align 4
  %230 = call i32 @pci_unmap_page(%struct.TYPE_10__* %222, i64 %225, i32 %228, i32 %229)
  %231 = load %struct.atl1_buffer*, %struct.atl1_buffer** %12, align 8
  %232 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %231, i32 0, i32 2
  store i64 0, i64* %232, align 8
  %233 = load %struct.atl1_buffer*, %struct.atl1_buffer** %12, align 8
  %234 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %233, i32 0, i32 1
  %235 = load %struct.sk_buff*, %struct.sk_buff** %234, align 8
  store %struct.sk_buff* %235, %struct.sk_buff** %14, align 8
  %236 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %237 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %236, i32 0, i32 5
  %238 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %237, i32 0, i32 1
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = call i64 @le16_to_cpu(i32 %240)
  store i64 %241, i64* %7, align 8
  %242 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %243 = load i64, i64* %7, align 8
  %244 = load i64, i64* @ETH_FCS_LEN, align 8
  %245 = sub nsw i64 %243, %244
  %246 = call i32 @skb_put(%struct.sk_buff* %242, i64 %245)
  %247 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %248 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %249 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %250 = call i32 @atl1_rx_checksum(%struct.atl1_adapter* %247, %struct.rx_return_desc* %248, %struct.sk_buff* %249)
  %251 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %252 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %253 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @eth_type_trans(%struct.sk_buff* %251, i32 %254)
  %256 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %257 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 4
  %258 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %259 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* @PACKET_FLAG_VLAN_INS, align 4
  %262 = and i32 %260, %261
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %287

264:                                              ; preds = %219
  %265 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %266 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %265, i32 0, i32 3
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 4
  %269 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %270 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = and i32 %271, 7
  %273 = shl i32 %272, 13
  %274 = or i32 %268, %273
  %275 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %276 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %275, i32 0, i32 3
  %277 = load i32, i32* %276, align 4
  %278 = and i32 %277, 8
  %279 = shl i32 %278, 9
  %280 = or i32 %274, %279
  %281 = sext i32 %280 to i64
  store i64 %281, i64* %15, align 8
  %282 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %283 = load i32, i32* @ETH_P_8021Q, align 4
  %284 = call i32 @htons(i32 %283)
  %285 = load i64, i64* %15, align 8
  %286 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %282, i32 %284, i64 %285)
  br label %287

287:                                              ; preds = %264, %219
  %288 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %289 = call i32 @netif_receive_skb(%struct.sk_buff* %288)
  %290 = load %struct.atl1_buffer*, %struct.atl1_buffer** %12, align 8
  %291 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %290, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %291, align 8
  %292 = load %struct.atl1_buffer*, %struct.atl1_buffer** %12, align 8
  %293 = getelementptr inbounds %struct.atl1_buffer, %struct.atl1_buffer* %292, i32 0, i32 0
  store i64 0, i64* %293, align 8
  %294 = load %struct.rx_return_desc*, %struct.rx_return_desc** %13, align 8
  %295 = getelementptr inbounds %struct.rx_return_desc, %struct.rx_return_desc* %294, i32 0, i32 5
  %296 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %295, i32 0, i32 0
  store i32 0, i32* %296, align 8
  br label %25

297:                                              ; preds = %160, %25
  %298 = load %struct.atl1_rrd_ring*, %struct.atl1_rrd_ring** %11, align 8
  %299 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %298, i32 0, i32 1
  %300 = load i64, i64* %8, align 8
  %301 = call i32 @atomic_set(i32* %299, i64 %300)
  %302 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %303 = call i32 @atl1_alloc_rx_buffers(%struct.atl1_adapter* %302)
  %304 = load i32, i32* %6, align 4
  %305 = icmp ne i32 %304, 0
  br i1 %305, label %306, label %350

306:                                              ; preds = %297
  %307 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %308 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %307, i32 0, i32 0
  %309 = call i32 @spin_lock(i32* %308)
  %310 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %311 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %310, i32 0, i32 4
  %312 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %311, i32 0, i32 0
  %313 = call i64 @atomic_read(i32* %312)
  store i64 %313, i64* %16, align 8
  %314 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %315 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %314, i32 0, i32 3
  %316 = getelementptr inbounds %struct.atl1_rfd_ring, %struct.atl1_rfd_ring* %315, i32 0, i32 2
  %317 = call i64 @atomic_read(i32* %316)
  store i64 %317, i64* %17, align 8
  %318 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %319 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %318, i32 0, i32 2
  %320 = getelementptr inbounds %struct.atl1_rrd_ring, %struct.atl1_rrd_ring* %319, i32 0, i32 1
  %321 = call i64 @atomic_read(i32* %320)
  store i64 %321, i64* %8, align 8
  %322 = load i64, i64* %17, align 8
  %323 = load i64, i64* @MB_RFD_PROD_INDX_MASK, align 8
  %324 = and i64 %322, %323
  %325 = load i64, i64* @MB_RFD_PROD_INDX_SHIFT, align 8
  %326 = shl i64 %324, %325
  %327 = load i64, i64* %8, align 8
  %328 = load i64, i64* @MB_RRD_CONS_INDX_MASK, align 8
  %329 = and i64 %327, %328
  %330 = load i64, i64* @MB_RRD_CONS_INDX_SHIFT, align 8
  %331 = shl i64 %329, %330
  %332 = or i64 %326, %331
  %333 = load i64, i64* %16, align 8
  %334 = load i64, i64* @MB_TPD_PROD_INDX_MASK, align 8
  %335 = and i64 %333, %334
  %336 = load i64, i64* @MB_TPD_PROD_INDX_SHIFT, align 8
  %337 = shl i64 %335, %336
  %338 = or i64 %332, %337
  store i64 %338, i64* %9, align 8
  %339 = load i64, i64* %9, align 8
  %340 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %341 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %340, i32 0, i32 1
  %342 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %341, i32 0, i32 0
  %343 = load i64, i64* %342, align 8
  %344 = load i64, i64* @REG_MAILBOX, align 8
  %345 = add nsw i64 %343, %344
  %346 = call i32 @iowrite32(i64 %339, i64 %345)
  %347 = load %struct.atl1_adapter*, %struct.atl1_adapter** %3, align 8
  %348 = getelementptr inbounds %struct.atl1_adapter, %struct.atl1_adapter* %347, i32 0, i32 0
  %349 = call i32 @spin_unlock(i32* %348)
  br label %350

350:                                              ; preds = %306, %297
  %351 = load i32, i32* %6, align 4
  ret i32 %351
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local %struct.rx_return_desc* @ATL1_RRD_DESC(%struct.atl1_rrd_ring*, i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @netif_msg_rx_err(%struct.atl1_adapter*) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*, ...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @atl1_update_rfd_index(%struct.atl1_adapter*, %struct.rx_return_desc*) #1

declare dso_local i32 @atl1_clean_alloc_flag(%struct.atl1_adapter*, %struct.rx_return_desc*, i32) #1

declare dso_local i32 @pci_unmap_page(%struct.TYPE_10__*, i64, i32, i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @atl1_rx_checksum(%struct.atl1_adapter*, %struct.rx_return_desc*, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

declare dso_local i32 @atl1_alloc_rx_buffers(%struct.atl1_adapter*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @iowrite32(i64, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
