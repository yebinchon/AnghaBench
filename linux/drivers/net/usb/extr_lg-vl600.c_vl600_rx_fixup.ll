; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_lg-vl600.c_vl600_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_lg-vl600.c_vl600_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, %struct.vl600_state* }
%struct.TYPE_4__ = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.vl600_state = type { %struct.sk_buff* }
%struct.sk_buff = type { i32*, i32 }
%struct.vl600_frame_hdr = type { i32, i32, i32 }
%struct.vl600_pkt_hdr = type { i32 }
%struct.ethhdr = type { i32, i32, i32 }

@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Fragment too long\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Frame too short\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Packet too short\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"Bad packet length stored in header\0A\00", align 1
@ETH_P_ARP = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_IPV6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @vl600_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vl600_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vl600_frame_hdr*, align 8
  %7 = alloca %struct.vl600_pkt_hdr*, align 8
  %8 = alloca %struct.ethhdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.sk_buff*, align 8
  %13 = alloca %struct.vl600_state*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %11, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 1
  %17 = load %struct.vl600_state*, %struct.vl600_state** %16, align 8
  store %struct.vl600_state* %17, %struct.vl600_state** %13, align 8
  %18 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %19 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %18, i32 0, i32 0
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  %21 = icmp ne %struct.sk_buff* %20, null
  br i1 %21, label %22, label %68

22:                                               ; preds = %2
  %23 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %24 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = bitcast i32* %27 to %struct.vl600_frame_hdr*
  store %struct.vl600_frame_hdr* %28, %struct.vl600_frame_hdr** %6, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %33 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %32, i32 0, i32 0
  %34 = load %struct.sk_buff*, %struct.sk_buff** %33, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %31, %36
  %38 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %6, align 8
  %39 = getelementptr inbounds %struct.vl600_frame_hdr, %struct.vl600_frame_hdr* %38, i32 0, i32 1
  %40 = call i32 @le32_to_cpup(i32* %39)
  %41 = icmp sgt i32 %37, %40
  br i1 %41, label %42, label %56

42:                                               ; preds = %22
  %43 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %44 = load i32, i32* @ifup, align 4
  %45 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %46 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = call i32 @netif_err(%struct.usbnet* %43, i32 %44, %struct.TYPE_4__* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %50 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %294

56:                                               ; preds = %22
  %57 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %58 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %57, i32 0, i32 0
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  store %struct.sk_buff* %59, %struct.sk_buff** %11, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @skb_put_data(%struct.sk_buff* %60, i32* %63, i32 %66)
  br label %88

68:                                               ; preds = %2
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %71, 4
  br i1 %72, label %73, label %87

73:                                               ; preds = %68
  %74 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %75 = load i32, i32* @ifup, align 4
  %76 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %77 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %76, i32 0, i32 0
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = call i32 @netif_err(%struct.usbnet* %74, i32 %75, %struct.TYPE_4__* %78, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %80 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %81 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  br label %294

87:                                               ; preds = %68
  br label %88

88:                                               ; preds = %87, %56
  %89 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = bitcast i32* %91 to %struct.vl600_frame_hdr*
  store %struct.vl600_frame_hdr* %92, %struct.vl600_frame_hdr** %6, align 8
  %93 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %6, align 8
  %94 = getelementptr inbounds %struct.vl600_frame_hdr, %struct.vl600_frame_hdr* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @ntohl(i32 %95)
  %97 = icmp ne i32 %96, 1398031432
  br i1 %97, label %98, label %105

98:                                               ; preds = %88
  %99 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %6, align 8
  %100 = getelementptr inbounds %struct.vl600_frame_hdr, %struct.vl600_frame_hdr* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @ntohl(i32 %101)
  %103 = icmp ne i32 %102, 1146375496
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %294

105:                                              ; preds = %98, %88
  %106 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = sext i32 %108 to i64
  %110 = icmp ult i64 %109, 12
  br i1 %110, label %119, label %111

111:                                              ; preds = %105
  %112 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %113 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %6, align 8
  %116 = getelementptr inbounds %struct.vl600_frame_hdr, %struct.vl600_frame_hdr* %115, i32 0, i32 1
  %117 = call i32 @le32_to_cpup(i32* %116)
  %118 = icmp ne i32 %114, %117
  br i1 %118, label %119, label %147

119:                                              ; preds = %111, %105
  %120 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %121 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %120, i32 0, i32 0
  %122 = load %struct.sk_buff*, %struct.sk_buff** %121, align 8
  %123 = icmp ne %struct.sk_buff* %122, null
  br i1 %123, label %124, label %125

124:                                              ; preds = %119
  store i32 0, i32* %3, align 4
  br label %314

125:                                              ; preds = %119
  %126 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %127 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %6, align 8
  %128 = getelementptr inbounds %struct.vl600_frame_hdr, %struct.vl600_frame_hdr* %127, i32 0, i32 1
  %129 = call i32 @le32_to_cpup(i32* %128)
  %130 = load i32, i32* @GFP_ATOMIC, align 4
  %131 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %126, i32 0, i32 %129, i32 %130)
  %132 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %133 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %132, i32 0, i32 0
  store %struct.sk_buff* %131, %struct.sk_buff** %133, align 8
  %134 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %135 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %134, i32 0, i32 0
  %136 = load %struct.sk_buff*, %struct.sk_buff** %135, align 8
  %137 = icmp ne %struct.sk_buff* %136, null
  br i1 %137, label %146, label %138

138:                                              ; preds = %125
  %139 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %140 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %139, i32 0, i32 0
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %143, align 8
  br label %146

146:                                              ; preds = %138, %125
  store i32 0, i32* %3, align 4
  br label %314

147:                                              ; preds = %111
  %148 = load %struct.vl600_frame_hdr*, %struct.vl600_frame_hdr** %6, align 8
  %149 = getelementptr inbounds %struct.vl600_frame_hdr, %struct.vl600_frame_hdr* %148, i32 0, i32 0
  %150 = call i32 @le32_to_cpup(i32* %149)
  store i32 %150, i32* %10, align 4
  %151 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %152 = call i32 @skb_pull(%struct.sk_buff* %151, i32 12)
  br label %153

153:                                              ; preds = %292, %147
  %154 = load i32, i32* %10, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %10, align 4
  %156 = icmp ne i32 %154, 0
  br i1 %156, label %157, label %293

157:                                              ; preds = %153
  %158 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 8
  %161 = sext i32 %160 to i64
  %162 = icmp ult i64 %161, 4
  br i1 %162, label %163, label %170

163:                                              ; preds = %157
  %164 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %165 = load i32, i32* @ifup, align 4
  %166 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %167 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %166, i32 0, i32 0
  %168 = load %struct.TYPE_4__*, %struct.TYPE_4__** %167, align 8
  %169 = call i32 @netif_err(%struct.usbnet* %164, i32 %165, %struct.TYPE_4__* %168, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %294

170:                                              ; preds = %157
  %171 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = bitcast i32* %173 to %struct.vl600_pkt_hdr*
  store %struct.vl600_pkt_hdr* %174, %struct.vl600_pkt_hdr** %7, align 8
  %175 = load %struct.vl600_pkt_hdr*, %struct.vl600_pkt_hdr** %7, align 8
  %176 = getelementptr inbounds %struct.vl600_pkt_hdr, %struct.vl600_pkt_hdr* %175, i32 0, i32 0
  %177 = call i32 @le32_to_cpup(i32* %176)
  %178 = sext i32 %177 to i64
  %179 = add i64 4, %178
  %180 = trunc i64 %179 to i32
  store i32 %180, i32* %9, align 4
  %181 = load i32, i32* %9, align 4
  %182 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %183 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %181, %184
  br i1 %185, label %186, label %193

186:                                              ; preds = %170
  %187 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %188 = load i32, i32* @ifup, align 4
  %189 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %190 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %189, i32 0, i32 0
  %191 = load %struct.TYPE_4__*, %struct.TYPE_4__** %190, align 8
  %192 = call i32 @netif_err(%struct.usbnet* %187, i32 %188, %struct.TYPE_4__* %191, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %294

193:                                              ; preds = %170
  %194 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %195 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = bitcast i32* %196 to %struct.ethhdr*
  store %struct.ethhdr* %197, %struct.ethhdr** %8, align 8
  %198 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %199 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %198, i32 0, i32 0
  %200 = call i64 @be16_to_cpup(i32* %199)
  %201 = load i64, i64* @ETH_P_ARP, align 8
  %202 = icmp eq i64 %200, %201
  br i1 %202, label %203, label %227

203:                                              ; preds = %193
  %204 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %205 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = icmp sgt i32 %206, 38
  br i1 %207, label %208, label %227

208:                                              ; preds = %203
  %209 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %210 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %213 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 20
  %216 = load i32, i32* @ETH_ALEN, align 4
  %217 = call i32 @memcpy(i32 %211, i32* %215, i32 %216)
  %218 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %219 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 30
  %225 = load i32, i32* @ETH_ALEN, align 4
  %226 = call i32 @memcpy(i32 %220, i32* %224, i32 %225)
  br label %255

227:                                              ; preds = %203, %193
  %228 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %229 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %228, i32 0, i32 2
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @eth_zero_addr(i32 %230)
  %232 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %233 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %236 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %235, i32 0, i32 0
  %237 = load %struct.TYPE_4__*, %struct.TYPE_4__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %237, i32 0, i32 0
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* @ETH_ALEN, align 4
  %241 = call i32 @memcpy(i32 %234, i32* %239, i32 %240)
  %242 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %243 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %242, i32 0, i32 0
  %244 = load i32*, i32** %243, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 12
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, 240
  %248 = icmp eq i32 %247, 96
  br i1 %248, label %249, label %254

249:                                              ; preds = %227
  %250 = load i32, i32* @ETH_P_IPV6, align 4
  %251 = call i32 @htons(i32 %250)
  %252 = load %struct.ethhdr*, %struct.ethhdr** %8, align 8
  %253 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %252, i32 0, i32 0
  store i32 %251, i32* %253, align 4
  br label %254

254:                                              ; preds = %249, %227
  br label %255

255:                                              ; preds = %254, %208
  %256 = load i32, i32* %10, align 4
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %277

258:                                              ; preds = %255
  %259 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %260 = load i32, i32* @GFP_ATOMIC, align 4
  %261 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %259, i32 %260)
  store %struct.sk_buff* %261, %struct.sk_buff** %12, align 8
  %262 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %263 = icmp ne %struct.sk_buff* %262, null
  br i1 %263, label %265, label %264

264:                                              ; preds = %258
  br label %294

265:                                              ; preds = %258
  %266 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %267 = load i32, i32* %9, align 4
  %268 = call i32 @skb_trim(%struct.sk_buff* %266, i32 %267)
  %269 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %270 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  %271 = call i32 @usbnet_skb_return(%struct.usbnet* %269, %struct.sk_buff* %270)
  %272 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 3
  %275 = and i32 %274, -4
  %276 = call i32 @skb_pull(%struct.sk_buff* %272, i32 %275)
  br label %292

277:                                              ; preds = %255
  %278 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %279 = load i32, i32* %9, align 4
  %280 = call i32 @skb_trim(%struct.sk_buff* %278, i32 %279)
  %281 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %282 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %281, i32 0, i32 0
  %283 = load %struct.sk_buff*, %struct.sk_buff** %282, align 8
  %284 = icmp ne %struct.sk_buff* %283, null
  br i1 %284, label %285, label %291

285:                                              ; preds = %277
  %286 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %287 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %288 = call i32 @usbnet_skb_return(%struct.usbnet* %286, %struct.sk_buff* %287)
  %289 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %290 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %289, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %290, align 8
  store i32 0, i32* %3, align 4
  br label %314

291:                                              ; preds = %277
  store i32 1, i32* %3, align 4
  br label %314

292:                                              ; preds = %265
  br label %153

293:                                              ; preds = %153
  br label %294

294:                                              ; preds = %293, %264, %186, %163, %104, %73, %42
  %295 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %296 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %295, i32 0, i32 0
  %297 = load %struct.sk_buff*, %struct.sk_buff** %296, align 8
  %298 = icmp ne %struct.sk_buff* %297, null
  br i1 %298, label %299, label %306

299:                                              ; preds = %294
  %300 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %301 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %300, i32 0, i32 0
  %302 = load %struct.sk_buff*, %struct.sk_buff** %301, align 8
  %303 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %302)
  %304 = load %struct.vl600_state*, %struct.vl600_state** %13, align 8
  %305 = getelementptr inbounds %struct.vl600_state, %struct.vl600_state* %304, i32 0, i32 0
  store %struct.sk_buff* null, %struct.sk_buff** %305, align 8
  br label %306

306:                                              ; preds = %299, %294
  %307 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %308 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %307, i32 0, i32 0
  %309 = load %struct.TYPE_4__*, %struct.TYPE_4__** %308, align 8
  %310 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %309, i32 0, i32 1
  %311 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 8
  %313 = add nsw i32 %312, 1
  store i32 %313, i32* %311, align 8
  store i32 0, i32* %3, align 4
  br label %314

314:                                              ; preds = %306, %291, %285, %146, %124
  %315 = load i32, i32* %3, align 4
  ret i32 %315
}

declare dso_local i32 @le32_to_cpup(i32*) #1

declare dso_local i32 @netif_err(%struct.usbnet*, i32, %struct.TYPE_4__*, i8*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @be16_to_cpup(i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
