; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_map_tx_buffs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc.c_enetc_map_tx_buffs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_bdr = type { i32, i32, %struct.enetc_tx_swbd*, i32, i32 }
%struct.enetc_tx_swbd = type { i32, i32, i32, i32, %struct.sk_buff*, i8* }
%struct.sk_buff = type { i32, i32 }
%union.enetc_tx_bd = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64, i8* }
%struct.TYPE_4__ = type { i32, i32, i32* }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@ENETC_F_TX_TSTAMP = common dso_local global i32 0, align 4
@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@ENETC_TXBD_FLAGS_EX = common dso_local global i32 0, align 4
@ENETC_TXBD_FLAGS_CSUM = common dso_local global i32 0, align 4
@ENETC_TXBD_FLAGS_L4CS = common dso_local global i32 0, align 4
@ENETC_TXBD_E_FLAGS_VLAN_INS = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@ENETC_TXBD_E_FLAGS_TWO_STEP_PTP = common dso_local global i32 0, align 4
@ENETC_TXBD_FLAGS_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"DMA map error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enetc_bdr*, %struct.sk_buff*, i32)* @enetc_map_tx_buffs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_map_tx_buffs(%struct.enetc_bdr* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.enetc_bdr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.enetc_tx_swbd*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %union.enetc_tx_bd, align 8
  %12 = alloca %union.enetc_tx_bd*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.enetc_bdr* %0, %struct.enetc_bdr** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 @skb_headlen(%struct.sk_buff* %21)
  store i32 %22, i32* %10, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %23 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %24 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %27 = load i32, i32* %15, align 4
  %28 = call %union.enetc_tx_bd* @ENETC_TXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8 %26, i32 %27)
  store %union.enetc_tx_bd* %28, %union.enetc_tx_bd** %12, align 8
  %29 = load %union.enetc_tx_bd*, %union.enetc_tx_bd** %12, align 8
  %30 = call i32 @prefetchw(%union.enetc_tx_bd* %29)
  %31 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %32 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @DMA_TO_DEVICE, align 4
  %39 = call i8* @dma_map_single(i32 %33, i32 %36, i32 %37, i32 %38)
  store i8* %39, i8** %18, align 8
  %40 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %41 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  %43 = load i8*, i8** %18, align 8
  %44 = call i32 @dma_mapping_error(i32 %42, i8* %43)
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %3
  br label %295

48:                                               ; preds = %3
  %49 = load i8*, i8** %18, align 8
  %50 = call i8* @cpu_to_le64(i8* %49)
  %51 = bitcast %union.enetc_tx_bd* %11 to i8**
  store i8* %50, i8** %51, align 8
  %52 = load i32, i32* %10, align 4
  %53 = call i8* @cpu_to_le16(i32 %52)
  %54 = bitcast %union.enetc_tx_bd* %11 to i8**
  store i8* %53, i8** %54, align 8
  %55 = bitcast %union.enetc_tx_bd* %11 to i64*
  store i64 0, i64* %55, align 8
  %56 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %57 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %56, i32 0, i32 2
  %58 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %57, align 8
  %59 = load i32, i32* %15, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %58, i64 %60
  store %struct.enetc_tx_swbd* %61, %struct.enetc_tx_swbd** %8, align 8
  %62 = load i8*, i8** %18, align 8
  %63 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %64 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %67 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %69 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %16, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %73 = call i32 @skb_vlan_tag_present(%struct.sk_buff* %72)
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* @ENETC_F_TX_TSTAMP, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %86

78:                                               ; preds = %48
  %79 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %80 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br label %86

86:                                               ; preds = %78, %48
  %87 = phi i1 [ false, %48 ], [ %85, %78 ]
  %88 = zext i1 %87 to i32
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %91 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %90, i32 0, i32 2
  store i32 %89, i32* %91, align 8
  %92 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %93 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %96 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %86
  %100 = load i32, i32* %14, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99, %86
  %103 = load i32, i32* @ENETC_TXBD_FLAGS_EX, align 4
  %104 = load i32, i32* %19, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %19, align 4
  br label %106

106:                                              ; preds = %102, %99
  %107 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %108 = call i64 @enetc_tx_csum(%struct.sk_buff* %107, %union.enetc_tx_bd* %11)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %106
  %111 = load i32, i32* @ENETC_TXBD_FLAGS_CSUM, align 4
  %112 = load i32, i32* @ENETC_TXBD_FLAGS_L4CS, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %19, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %19, align 4
  br label %116

116:                                              ; preds = %110, %106
  %117 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @cpu_to_le16(i32 %119)
  %121 = bitcast %union.enetc_tx_bd* %11 to i8**
  store i8* %120, i8** %121, align 8
  %122 = load i32, i32* %19, align 4
  %123 = bitcast %union.enetc_tx_bd* %11 to i32*
  store i32 %122, i32* %123, align 8
  %124 = load i32, i32* %19, align 4
  %125 = load i32, i32* @ENETC_TXBD_FLAGS_EX, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %188

128:                                              ; preds = %116
  store i32 0, i32* %20, align 4
  %129 = load %union.enetc_tx_bd*, %union.enetc_tx_bd** %12, align 8
  %130 = bitcast %union.enetc_tx_bd* %129 to i8*
  %131 = bitcast %union.enetc_tx_bd* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %130, i8* align 8 %131, i64 24, i1 false)
  %132 = call i32 @enetc_clear_tx_bd(%union.enetc_tx_bd* %11)
  store i32 0, i32* %19, align 4
  %133 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %134 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %133, i32 1
  store %struct.enetc_tx_swbd* %134, %struct.enetc_tx_swbd** %8, align 8
  %135 = load %union.enetc_tx_bd*, %union.enetc_tx_bd** %12, align 8
  %136 = getelementptr inbounds %union.enetc_tx_bd, %union.enetc_tx_bd* %135, i32 1
  store %union.enetc_tx_bd* %136, %union.enetc_tx_bd** %12, align 8
  %137 = load i32, i32* %15, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %15, align 4
  %139 = load i32, i32* %15, align 4
  %140 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %141 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = icmp eq i32 %139, %142
  %144 = zext i1 %143 to i32
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %128
  store i32 0, i32* %15, align 4
  %148 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %149 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %148, i32 0, i32 2
  %150 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %149, align 8
  store %struct.enetc_tx_swbd* %150, %struct.enetc_tx_swbd** %8, align 8
  %151 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %152 = call %union.enetc_tx_bd* @ENETC_TXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8 %151, i32 0)
  store %union.enetc_tx_bd* %152, %union.enetc_tx_bd** %12, align 8
  br label %153

153:                                              ; preds = %147, %128
  %154 = load %union.enetc_tx_bd*, %union.enetc_tx_bd** %12, align 8
  %155 = call i32 @prefetchw(%union.enetc_tx_bd* %154)
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %169

158:                                              ; preds = %153
  %159 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %160 = call i32 @skb_vlan_tag_get(%struct.sk_buff* %159)
  %161 = call i8* @cpu_to_le16(i32 %160)
  %162 = bitcast %union.enetc_tx_bd* %11 to %struct.TYPE_3__*
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 2
  store i8* %161, i8** %163, align 8
  %164 = bitcast %union.enetc_tx_bd* %11 to %struct.TYPE_3__*
  %165 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %164, i32 0, i32 1
  store i64 0, i64* %165, align 8
  %166 = load i32, i32* @ENETC_TXBD_E_FLAGS_VLAN_INS, align 4
  %167 = load i32, i32* %20, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %20, align 4
  br label %169

169:                                              ; preds = %158, %153
  %170 = load i32, i32* %14, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %169
  %173 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %174 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %175 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %174)
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 0
  %177 = load i32, i32* %176, align 8
  %178 = or i32 %177, %173
  store i32 %178, i32* %176, align 8
  %179 = load i32, i32* @ENETC_TXBD_E_FLAGS_TWO_STEP_PTP, align 4
  %180 = load i32, i32* %20, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %20, align 4
  br label %182

182:                                              ; preds = %172, %169
  %183 = load i32, i32* %20, align 4
  %184 = bitcast %union.enetc_tx_bd* %11 to %struct.TYPE_3__*
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  store i32 %183, i32* %185, align 8
  %186 = load i32, i32* %16, align 4
  %187 = add nsw i32 %186, 1
  store i32 %187, i32* %16, align 4
  br label %188

188:                                              ; preds = %182, %116
  %189 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %190 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %189)
  %191 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %190, i32 0, i32 2
  %192 = load i32*, i32** %191, align 8
  %193 = getelementptr inbounds i32, i32* %192, i64 0
  store i32* %193, i32** %9, align 8
  store i32 0, i32* %17, align 4
  br label %194

194:                                              ; preds = %262, %188
  %195 = load i32, i32* %17, align 4
  %196 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %197 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %196)
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp ult i32 %195, %199
  br i1 %200, label %201, label %267

201:                                              ; preds = %194
  %202 = load i32*, i32** %9, align 8
  %203 = call i32 @skb_frag_size(i32* %202)
  store i32 %203, i32* %10, align 4
  %204 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %205 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = load i32*, i32** %9, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* @DMA_TO_DEVICE, align 4
  %210 = call i8* @skb_frag_dma_map(i32 %206, i32* %207, i32 0, i32 %208, i32 %209)
  store i8* %210, i8** %18, align 8
  %211 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %212 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = load i8*, i8** %18, align 8
  %215 = call i32 @dma_mapping_error(i32 %213, i8* %214)
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %201
  br label %295

218:                                              ; preds = %201
  %219 = load %union.enetc_tx_bd*, %union.enetc_tx_bd** %12, align 8
  %220 = bitcast %union.enetc_tx_bd* %219 to i8*
  %221 = bitcast %union.enetc_tx_bd* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %220, i8* align 8 %221, i64 24, i1 false)
  %222 = call i32 @enetc_clear_tx_bd(%union.enetc_tx_bd* %11)
  store i32 0, i32* %19, align 4
  %223 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %224 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %223, i32 1
  store %struct.enetc_tx_swbd* %224, %struct.enetc_tx_swbd** %8, align 8
  %225 = load %union.enetc_tx_bd*, %union.enetc_tx_bd** %12, align 8
  %226 = getelementptr inbounds %union.enetc_tx_bd, %union.enetc_tx_bd* %225, i32 1
  store %union.enetc_tx_bd* %226, %union.enetc_tx_bd** %12, align 8
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %15, align 4
  %229 = load i32, i32* %15, align 4
  %230 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %231 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %229, %232
  %234 = zext i1 %233 to i32
  %235 = call i64 @unlikely(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %243

237:                                              ; preds = %218
  store i32 0, i32* %15, align 4
  %238 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %239 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %238, i32 0, i32 2
  %240 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %239, align 8
  store %struct.enetc_tx_swbd* %240, %struct.enetc_tx_swbd** %8, align 8
  %241 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %242 = call %union.enetc_tx_bd* @ENETC_TXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8 %241, i32 0)
  store %union.enetc_tx_bd* %242, %union.enetc_tx_bd** %12, align 8
  br label %243

243:                                              ; preds = %237, %218
  %244 = load %union.enetc_tx_bd*, %union.enetc_tx_bd** %12, align 8
  %245 = call i32 @prefetchw(%union.enetc_tx_bd* %244)
  %246 = load i8*, i8** %18, align 8
  %247 = call i8* @cpu_to_le64(i8* %246)
  %248 = bitcast %union.enetc_tx_bd* %11 to i8**
  store i8* %247, i8** %248, align 8
  %249 = load i32, i32* %10, align 4
  %250 = call i8* @cpu_to_le16(i32 %249)
  %251 = bitcast %union.enetc_tx_bd* %11 to i8**
  store i8* %250, i8** %251, align 8
  %252 = load i8*, i8** %18, align 8
  %253 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %254 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %253, i32 0, i32 5
  store i8* %252, i8** %254, align 8
  %255 = load i32, i32* %10, align 4
  %256 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %257 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %256, i32 0, i32 0
  store i32 %255, i32* %257, align 8
  %258 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %259 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %258, i32 0, i32 1
  store i32 1, i32* %259, align 4
  %260 = load i32, i32* %16, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %16, align 4
  br label %262

262:                                              ; preds = %243
  %263 = load i32, i32* %17, align 4
  %264 = add i32 %263, 1
  store i32 %264, i32* %17, align 4
  %265 = load i32*, i32** %9, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %9, align 8
  br label %194

267:                                              ; preds = %194
  %268 = load i32, i32* @ENETC_TXBD_FLAGS_F, align 4
  %269 = load i32, i32* %19, align 4
  %270 = or i32 %269, %268
  store i32 %270, i32* %19, align 4
  %271 = load i32, i32* %19, align 4
  %272 = bitcast %union.enetc_tx_bd* %11 to i32*
  store i32 %271, i32* %272, align 8
  %273 = load %union.enetc_tx_bd*, %union.enetc_tx_bd** %12, align 8
  %274 = bitcast %union.enetc_tx_bd* %273 to i8*
  %275 = bitcast %union.enetc_tx_bd* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %274, i8* align 8 %275, i64 24, i1 false)
  %276 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %277 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %278 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %277, i32 0, i32 2
  %279 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %278, align 8
  %280 = load i32, i32* %15, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %279, i64 %281
  %283 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %282, i32 0, i32 4
  store %struct.sk_buff* %276, %struct.sk_buff** %283, align 8
  %284 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %285 = call i32 @enetc_bdr_idx_inc(%struct.enetc_bdr* %284, i32* %15)
  %286 = load i32, i32* %15, align 4
  %287 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %288 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %287, i32 0, i32 0
  store i32 %286, i32* %288, align 8
  %289 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %290 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %289, i32 0, i32 4
  %291 = load i32, i32* %290, align 4
  %292 = load i32, i32* %15, align 4
  %293 = call i32 @enetc_wr_reg(i32 %291, i32 %292)
  %294 = load i32, i32* %16, align 4
  store i32 %294, i32* %4, align 4
  br label %324

295:                                              ; preds = %217, %47
  %296 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %297 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %296, i32 0, i32 3
  %298 = load i32, i32* %297, align 8
  %299 = call i32 @dev_err(i32 %298, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %300

300:                                              ; preds = %319, %295
  %301 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %302 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %301, i32 0, i32 2
  %303 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %302, align 8
  %304 = load i32, i32* %15, align 4
  %305 = sext i32 %304 to i64
  %306 = getelementptr inbounds %struct.enetc_tx_swbd, %struct.enetc_tx_swbd* %303, i64 %305
  store %struct.enetc_tx_swbd* %306, %struct.enetc_tx_swbd** %8, align 8
  %307 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %308 = load %struct.enetc_tx_swbd*, %struct.enetc_tx_swbd** %8, align 8
  %309 = call i32 @enetc_free_tx_skb(%struct.enetc_bdr* %307, %struct.enetc_tx_swbd* %308)
  %310 = load i32, i32* %15, align 4
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %300
  %313 = load %struct.enetc_bdr*, %struct.enetc_bdr** %5, align 8
  %314 = getelementptr inbounds %struct.enetc_bdr, %struct.enetc_bdr* %313, i32 0, i32 1
  %315 = load i32, i32* %314, align 4
  store i32 %315, i32* %15, align 4
  br label %316

316:                                              ; preds = %312, %300
  %317 = load i32, i32* %15, align 4
  %318 = add nsw i32 %317, -1
  store i32 %318, i32* %15, align 4
  br label %319

319:                                              ; preds = %316
  %320 = load i32, i32* %16, align 4
  %321 = add nsw i32 %320, -1
  store i32 %321, i32* %16, align 4
  %322 = icmp ne i32 %320, 0
  br i1 %322, label %300, label %323

323:                                              ; preds = %319
  store i32 0, i32* %4, align 4
  br label %324

324:                                              ; preds = %323, %267
  %325 = load i32, i32* %4, align 4
  ret i32 %325
}

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local %union.enetc_tx_bd* @ENETC_TXBD(%struct.enetc_bdr* byval(%struct.enetc_bdr) align 8, i32) #1

declare dso_local i32 @prefetchw(%union.enetc_tx_bd*) #1

declare dso_local i8* @dma_map_single(i32, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dma_mapping_error(i32, i8*) #1

declare dso_local i8* @cpu_to_le64(i8*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @skb_vlan_tag_present(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @enetc_tx_csum(%struct.sk_buff*, %union.enetc_tx_bd*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @enetc_clear_tx_bd(%union.enetc_tx_bd*) #1

declare dso_local i32 @skb_vlan_tag_get(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size(i32*) #1

declare dso_local i8* @skb_frag_dma_map(i32, i32*, i32, i32, i32) #1

declare dso_local i32 @enetc_bdr_idx_inc(%struct.enetc_bdr*, i32*) #1

declare dso_local i32 @enetc_wr_reg(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @enetc_free_tx_skb(%struct.enetc_bdr*, %struct.enetc_tx_swbd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
