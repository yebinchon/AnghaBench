; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_rx_fixup_internal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_asix_common.c_asix_rx_fixup_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.asix_rx_fixup_info = type { i32, i32, i32, i32* }

@.str = private unnamed_addr constant [68 x i8] c"asix_rx_fixup() Data Header synchronisation was lost, remaining %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"asix_rx_fixup() Bad Header Length 0x%x, offset %d\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"asix_rx_fixup() Bad RX Length %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"asix_rx_fixup() Bad SKB Length %d, %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asix_rx_fixup_internal(%struct.usbnet* %0, %struct.sk_buff* %1, %struct.asix_rx_fixup_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.asix_rx_fixup_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.asix_rx_fixup_info* %2, %struct.asix_rx_fixup_info** %7, align 8
  store i32 0, i32* %8, align 4
  %11 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %12 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %65

15:                                               ; preds = %3
  %16 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %17 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 4
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = icmp ule i64 %20, %24
  br i1 %25, label %26, label %65

26:                                               ; preds = %15
  %27 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %28 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = add nsw i32 %29, 1
  %31 = and i32 %30, 65534
  store i32 %31, i32* %8, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %8, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  %38 = call i8* @get_unaligned_le32(i64 %37)
  %39 = ptrtoint i8* %38 to i32
  %40 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %41 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  store i32 0, i32* %8, align 4
  %42 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %43 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, 2047
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %48 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = xor i32 %49, -1
  %51 = ashr i32 %50, 16
  %52 = and i32 %51, 2047
  %53 = icmp ne i32 %46, %52
  br i1 %53, label %54, label %64

54:                                               ; preds = %26
  %55 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %56 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %59 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @netdev_err(%struct.TYPE_4__* %57, i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %63 = call i32 @reset_asix_rx_fixup_info(%struct.asix_rx_fixup_info* %62)
  br label %64

64:                                               ; preds = %54, %26
  br label %65

65:                                               ; preds = %64, %15, %3
  br label %66

66:                                               ; preds = %255, %65
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = add i64 %68, 4
  %70 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ule i64 %69, %73
  br i1 %74, label %75, label %261

75:                                               ; preds = %66
  %76 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %77 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %198, label %80

80:                                               ; preds = %75
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sub nsw i32 %83, %84
  %86 = sext i32 %85 to i64
  %87 = icmp eq i64 %86, 4
  br i1 %87, label %88, label %104

88:                                               ; preds = %80
  %89 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = add nsw i64 %91, %93
  %95 = call i32 @get_unaligned_le16(i64 %94)
  %96 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %97 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %96, i32 0, i32 1
  store i32 %95, i32* %97, align 4
  %98 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %99 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %98, i32 0, i32 2
  store i32 1, i32* %99, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = add i64 %101, 4
  %103 = trunc i64 %102 to i32
  store i32 %103, i32* %8, align 4
  br label %261

104:                                              ; preds = %80
  %105 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %106 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %128

109:                                              ; preds = %104
  %110 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = add nsw i64 %112, %114
  %116 = call i32 @get_unaligned_le16(i64 %115)
  %117 = shl i32 %116, 16
  %118 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %119 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, %117
  store i32 %121, i32* %119, align 4
  %122 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %123 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %122, i32 0, i32 2
  store i32 0, i32* %123, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = add i64 %125, 4
  %127 = trunc i64 %126 to i32
  store i32 %127, i32* %8, align 4
  br label %143

128:                                              ; preds = %104
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = add nsw i64 %131, %133
  %135 = call i8* @get_unaligned_le32(i64 %134)
  %136 = ptrtoint i8* %135 to i32
  %137 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %138 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = add i64 %140, 4
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %8, align 4
  br label %143

143:                                              ; preds = %128, %109
  %144 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %145 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 2047
  store i32 %147, i32* %9, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %150 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = xor i32 %151, -1
  %153 = ashr i32 %152, 16
  %154 = and i32 %153, 2047
  %155 = icmp ne i32 %148, %154
  br i1 %155, label %156, label %167

156:                                              ; preds = %143
  %157 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %158 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %157, i32 0, i32 0
  %159 = load %struct.TYPE_4__*, %struct.TYPE_4__** %158, align 8
  %160 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %161 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %8, align 4
  %164 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @netdev_err(%struct.TYPE_4__* %159, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %163)
  %165 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %166 = call i32 @reset_asix_rx_fixup_info(%struct.asix_rx_fixup_info* %165)
  store i32 0, i32* %4, align 4
  br label %279

167:                                              ; preds = %143
  %168 = load i32, i32* %9, align 4
  %169 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %170 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %169, i32 0, i32 0
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* @ETH_HLEN, align 4
  %175 = add nsw i32 %173, %174
  %176 = load i32, i32* @VLAN_HLEN, align 4
  %177 = add nsw i32 %175, %176
  %178 = icmp sgt i32 %168, %177
  br i1 %178, label %179, label %187

179:                                              ; preds = %167
  %180 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %181 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %180, i32 0, i32 0
  %182 = load %struct.TYPE_4__*, %struct.TYPE_4__** %181, align 8
  %183 = load i32, i32* %9, align 4
  %184 = call i32 @netdev_dbg(%struct.TYPE_4__* %182, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %183)
  %185 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %186 = call i32 @reset_asix_rx_fixup_info(%struct.asix_rx_fixup_info* %185)
  store i32 0, i32* %4, align 4
  br label %279

187:                                              ; preds = %167
  %188 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %189 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %188, i32 0, i32 0
  %190 = load %struct.TYPE_4__*, %struct.TYPE_4__** %189, align 8
  %191 = load i32, i32* %9, align 4
  %192 = call i32* @netdev_alloc_skb_ip_align(%struct.TYPE_4__* %190, i32 %191)
  %193 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %194 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %193, i32 0, i32 3
  store i32* %192, i32** %194, align 8
  %195 = load i32, i32* %9, align 4
  %196 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %197 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %196, i32 0, i32 0
  store i32 %195, i32* %197, align 8
  br label %198

198:                                              ; preds = %187, %75
  %199 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %200 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %203 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = load i32, i32* %8, align 4
  %206 = sub nsw i32 %204, %205
  %207 = icmp sgt i32 %201, %206
  br i1 %207, label %208, label %219

208:                                              ; preds = %198
  %209 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %210 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* %8, align 4
  %213 = sub nsw i32 %211, %212
  store i32 %213, i32* %10, align 4
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %216 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = sub nsw i32 %217, %214
  store i32 %218, i32* %216, align 8
  br label %225

219:                                              ; preds = %198
  %220 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %221 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  store i32 %222, i32* %10, align 4
  %223 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %224 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %223, i32 0, i32 0
  store i32 0, i32* %224, align 8
  br label %225

225:                                              ; preds = %219, %208
  %226 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %227 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %226, i32 0, i32 3
  %228 = load i32*, i32** %227, align 8
  %229 = icmp ne i32* %228, null
  br i1 %229, label %230, label %255

230:                                              ; preds = %225
  %231 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %232 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %231, i32 0, i32 3
  %233 = load i32*, i32** %232, align 8
  %234 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %235 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %234, i32 0, i32 1
  %236 = load i64, i64* %235, align 8
  %237 = load i32, i32* %8, align 4
  %238 = sext i32 %237 to i64
  %239 = add nsw i64 %236, %238
  %240 = load i32, i32* %10, align 4
  %241 = call i32 @skb_put_data(i32* %233, i64 %239, i32 %240)
  %242 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %243 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 8
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %254, label %246

246:                                              ; preds = %230
  %247 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %248 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %249 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %248, i32 0, i32 3
  %250 = load i32*, i32** %249, align 8
  %251 = call i32 @usbnet_skb_return(%struct.usbnet* %247, i32* %250)
  %252 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %253 = getelementptr inbounds %struct.asix_rx_fixup_info, %struct.asix_rx_fixup_info* %252, i32 0, i32 3
  store i32* null, i32** %253, align 8
  br label %254

254:                                              ; preds = %246, %230
  br label %255

255:                                              ; preds = %254, %225
  %256 = load i32, i32* %10, align 4
  %257 = add nsw i32 %256, 1
  %258 = and i32 %257, 65534
  %259 = load i32, i32* %8, align 4
  %260 = add nsw i32 %259, %258
  store i32 %260, i32* %8, align 4
  br label %66

261:                                              ; preds = %88, %66
  %262 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %263 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %262, i32 0, i32 0
  %264 = load i32, i32* %263, align 8
  %265 = load i32, i32* %8, align 4
  %266 = icmp ne i32 %264, %265
  br i1 %266, label %267, label %278

267:                                              ; preds = %261
  %268 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %269 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %268, i32 0, i32 0
  %270 = load %struct.TYPE_4__*, %struct.TYPE_4__** %269, align 8
  %271 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %272 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = load i32, i32* %8, align 4
  %275 = call i32 (%struct.TYPE_4__*, i8*, i32, ...) @netdev_err(%struct.TYPE_4__* %270, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %273, i32 %274)
  %276 = load %struct.asix_rx_fixup_info*, %struct.asix_rx_fixup_info** %7, align 8
  %277 = call i32 @reset_asix_rx_fixup_info(%struct.asix_rx_fixup_info* %276)
  store i32 0, i32* %4, align 4
  br label %279

278:                                              ; preds = %261
  store i32 1, i32* %4, align 4
  br label %279

279:                                              ; preds = %278, %267, %179, %156
  %280 = load i32, i32* %4, align 4
  ret i32 %280
}

declare dso_local i8* @get_unaligned_le32(i64) #1

declare dso_local i32 @netdev_err(%struct.TYPE_4__*, i8*, i32, ...) #1

declare dso_local i32 @reset_asix_rx_fixup_info(%struct.asix_rx_fixup_info*) #1

declare dso_local i32 @get_unaligned_le16(i64) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32* @netdev_alloc_skb_ip_align(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @skb_put_data(i32*, i64, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
