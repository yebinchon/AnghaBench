; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_fill_tx_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_cdc_ncm.c_cdc_ncm_fill_tx_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32, %struct.TYPE_6__*, %struct.TYPE_8__*, i64* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.cdc_ncm_ctx = type { i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.sk_buff*, i32, i32, i64, i64, i32, i32, i32, i32, %struct.sk_buff*, %struct.sk_buff*, i64, i64, i32 }
%struct.usb_cdc_ncm_nth16 = type { i8*, i8*, i8*, i8*, i32 }
%struct.usb_cdc_ncm_ndp16 = type { i8*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i8*, i8* }

@CDC_NCM_FLAG_NDP_TO_END = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@CDC_NCM_LOW_MEM_MAX_CNT = common dso_local global i64 0, align 8
@USB_CDC_NCM_NTB_MIN_OUT_SIZE = common dso_local global i64 0, align 8
@USB_CDC_NCM_NTH16_SIGN = common dso_local global i32 0, align 4
@CDC_NCM_DPT_DATAGRAMS_MAX = common dso_local global i64 0, align 8
@CDC_NCM_RESTART_TIMER_DATAGRAM_CNT = common dso_local global i64 0, align 8
@CDC_NCM_TIMER_PENDING_CNT = common dso_local global i32 0, align 4
@FLAG_SEND_ZLP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @cdc_ncm_fill_tx_frame(%struct.usbnet* %0, %struct.sk_buff* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.usbnet*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.cdc_ncm_ctx*, align 8
  %9 = alloca %struct.usb_cdc_ncm_nth16*, align 8
  %10 = alloca %struct.usb_cdc_ncm_ndp16*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %18 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 3
  %20 = load i64*, i64** %19, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.cdc_ncm_ctx*
  store %struct.cdc_ncm_ctx* %23, %struct.cdc_ncm_ctx** %8, align 8
  store i64 0, i64* %12, align 8
  store i32 0, i32* %15, align 4
  %24 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %25 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @CDC_NCM_FLAG_NDP_TO_END, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %3
  %31 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %32 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %35 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %34, i32 0, i32 15
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @ALIGN(i64 %33, i64 %36)
  store i64 %37, i64* %16, align 8
  br label %39

38:                                               ; preds = %3
  store i64 0, i64* %16, align 8
  br label %39

39:                                               ; preds = %38, %30
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = icmp ne %struct.sk_buff* %40, null
  br i1 %41, label %42, label %53

42:                                               ; preds = %39
  %43 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %44 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %45 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %44, i32 0, i32 21
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  %47 = call i32 @swap(%struct.sk_buff* %43, %struct.sk_buff* %46)
  %48 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %49 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %50 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %49, i32 0, i32 20
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  %52 = call i32 @swap(%struct.sk_buff* %48, %struct.sk_buff* %51)
  br label %54

53:                                               ; preds = %39
  store i32 1, i32* %15, align 4
  br label %54

54:                                               ; preds = %53, %42
  %55 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %56 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %55, i32 0, i32 11
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  store %struct.sk_buff* %57, %struct.sk_buff** %11, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %59 = icmp ne %struct.sk_buff* %58, null
  br i1 %59, label %161, label %60

60:                                               ; preds = %54
  %61 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %62 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %65, label %94

65:                                               ; preds = %60
  %66 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %67 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %70 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %69, i32 0, i32 3
  store i64 %68, i64* %70, align 8
  %71 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %72 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %71, i32 0, i32 3
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* @GFP_ATOMIC, align 4
  %75 = call %struct.sk_buff* @alloc_skb(i64 %73, i32 %74)
  store %struct.sk_buff* %75, %struct.sk_buff** %11, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %77 = icmp eq %struct.sk_buff* %76, null
  br i1 %77, label %78, label %93

78:                                               ; preds = %65
  %79 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %80 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %79, i32 0, i32 5
  %81 = load i64, i64* %80, align 8
  %82 = add nsw i64 %81, 1
  %83 = load i64, i64* @CDC_NCM_LOW_MEM_MAX_CNT, align 8
  %84 = trunc i64 %83 to i32
  %85 = call i64 @min(i64 %82, i32 %84)
  %86 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %87 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %86, i32 0, i32 5
  store i64 %85, i64* %87, align 8
  %88 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %89 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %88, i32 0, i32 5
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %92 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %91, i32 0, i32 2
  store i64 %90, i64* %92, align 8
  br label %93

93:                                               ; preds = %78, %65
  br label %94

94:                                               ; preds = %93, %60
  %95 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %96 = icmp eq %struct.sk_buff* %95, null
  br i1 %96, label %97, label %139

97:                                               ; preds = %94
  %98 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %99 = icmp ne %struct.sk_buff* %98, null
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %102 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @USB_CDC_NCM_NTB_MIN_OUT_SIZE, align 8
  %105 = call i64 @max(i64 %103, i64 %104)
  %106 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %107 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %106, i32 0, i32 3
  store i64 %105, i64* %107, align 8
  br label %112

108:                                              ; preds = %97
  %109 = load i64, i64* @USB_CDC_NCM_NTB_MIN_OUT_SIZE, align 8
  %110 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %111 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %110, i32 0, i32 3
  store i64 %109, i64* %111, align 8
  br label %112

112:                                              ; preds = %108, %100
  %113 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %114 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %113, i32 0, i32 3
  %115 = load i64, i64* %114, align 8
  %116 = load i32, i32* @GFP_ATOMIC, align 4
  %117 = call %struct.sk_buff* @alloc_skb(i64 %115, i32 %116)
  store %struct.sk_buff* %117, %struct.sk_buff** %11, align 8
  %118 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %119 = icmp eq %struct.sk_buff* %118, null
  br i1 %119, label %120, label %134

120:                                              ; preds = %112
  %121 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %122 = icmp ne %struct.sk_buff* %121, null
  br i1 %122, label %123, label %133

123:                                              ; preds = %120
  %124 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %125 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %124)
  %126 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %127 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %126, i32 0, i32 2
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %123, %120
  br label %533

134:                                              ; preds = %112
  %135 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %136 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %135, i32 0, i32 2
  %137 = load i64, i64* %136, align 8
  %138 = add nsw i64 %137, -1
  store i64 %138, i64* %136, align 8
  br label %139

139:                                              ; preds = %134, %94
  %140 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %141 = call %struct.usb_cdc_ncm_nth16* @skb_put_zero(%struct.sk_buff* %140, i64 40)
  store %struct.usb_cdc_ncm_nth16* %141, %struct.usb_cdc_ncm_nth16** %9, align 8
  %142 = load i32, i32* @USB_CDC_NCM_NTH16_SIGN, align 4
  %143 = call i32 @cpu_to_le32(i32 %142)
  %144 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %9, align 8
  %145 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %144, i32 0, i32 4
  store i32 %143, i32* %145, align 8
  %146 = call i8* @cpu_to_le16(i64 40)
  %147 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %9, align 8
  %148 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %147, i32 0, i32 3
  store i8* %146, i8** %148, align 8
  %149 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %150 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %149, i32 0, i32 24
  %151 = load i32, i32* %150, align 8
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %150, align 8
  %153 = sext i32 %151 to i64
  %154 = call i8* @cpu_to_le16(i64 %153)
  %155 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %9, align 8
  %156 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %155, i32 0, i32 2
  store i8* %154, i8** %156, align 8
  %157 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %158 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %157, i32 0, i32 6
  store i64 0, i64* %158, align 8
  %159 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %160 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %159, i32 0, i32 7
  store i64 0, i64* %160, align 8
  br label %161

161:                                              ; preds = %139, %54
  %162 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %163 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %162, i32 0, i32 6
  %164 = load i64, i64* %163, align 8
  store i64 %164, i64* %12, align 8
  br label %165

165:                                              ; preds = %332, %161
  %166 = load i64, i64* %12, align 8
  %167 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %168 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %167, i32 0, i32 8
  %169 = load i64, i64* %168, align 8
  %170 = icmp slt i64 %166, %169
  br i1 %170, label %171, label %335

171:                                              ; preds = %165
  %172 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %173 = icmp eq %struct.sk_buff* %172, null
  br i1 %173, label %174, label %187

174:                                              ; preds = %171
  %175 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %176 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %175, i32 0, i32 21
  %177 = load %struct.sk_buff*, %struct.sk_buff** %176, align 8
  store %struct.sk_buff* %177, %struct.sk_buff** %6, align 8
  %178 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %179 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %178, i32 0, i32 20
  %180 = load %struct.sk_buff*, %struct.sk_buff** %179, align 8
  store %struct.sk_buff* %180, %struct.sk_buff** %7, align 8
  %181 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %182 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %181, i32 0, i32 21
  store %struct.sk_buff* null, %struct.sk_buff** %182, align 8
  %183 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %184 = icmp eq %struct.sk_buff* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %174
  br label %335

186:                                              ; preds = %174
  br label %187

187:                                              ; preds = %186, %171
  %188 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %190 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %191 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %192 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %195 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %194, i32 0, i32 23
  %196 = load i64, i64* %195, align 8
  %197 = add i64 %193, %196
  %198 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %199 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %198, i32 0, i32 22
  %200 = load i64, i64* %199, align 8
  %201 = add i64 %197, %200
  %202 = call %struct.usb_cdc_ncm_ndp16* @cdc_ncm_ndp(%struct.cdc_ncm_ctx* %188, %struct.sk_buff* %189, %struct.sk_buff* %190, i64 %201)
  store %struct.usb_cdc_ncm_ndp16* %202, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %203 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %204 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %205 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %204, i32 0, i32 23
  %206 = load i64, i64* %205, align 8
  %207 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %208 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %207, i32 0, i32 22
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %211 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = call i32 @cdc_ncm_align_tail(%struct.sk_buff* %203, i64 %206, i64 %209, i64 %212)
  %214 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %215 = icmp ne %struct.usb_cdc_ncm_ndp16* %214, null
  br i1 %215, label %216, label %230

216:                                              ; preds = %187
  %217 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %218 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %221 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %220, i32 0, i32 0
  %222 = load i64, i64* %221, align 8
  %223 = add i64 %219, %222
  %224 = load i64, i64* %16, align 8
  %225 = add i64 %223, %224
  %226 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %227 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %226, i32 0, i32 3
  %228 = load i64, i64* %227, align 8
  %229 = icmp ugt i64 %225, %228
  br i1 %229, label %230, label %272

230:                                              ; preds = %216, %187
  %231 = load i64, i64* %12, align 8
  %232 = icmp eq i64 %231, 0
  br i1 %232, label %233, label %243

233:                                              ; preds = %230
  %234 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %235 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %234)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %236 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %237 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %236, i32 0, i32 2
  %238 = load %struct.TYPE_8__*, %struct.TYPE_8__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %240, align 4
  br label %271

243:                                              ; preds = %230
  %244 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %245 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %244, i32 0, i32 21
  %246 = load %struct.sk_buff*, %struct.sk_buff** %245, align 8
  %247 = icmp ne %struct.sk_buff* %246, null
  br i1 %247, label %248, label %260

248:                                              ; preds = %243
  %249 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %250 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %249, i32 0, i32 21
  %251 = load %struct.sk_buff*, %struct.sk_buff** %250, align 8
  %252 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %251)
  %253 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %254 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %253, i32 0, i32 2
  %255 = load %struct.TYPE_8__*, %struct.TYPE_8__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %255, i32 0, i32 0
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %257, align 4
  br label %260

260:                                              ; preds = %248, %243
  %261 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %262 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %263 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %262, i32 0, i32 21
  store %struct.sk_buff* %261, %struct.sk_buff** %263, align 8
  %264 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %265 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %266 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %265, i32 0, i32 20
  store %struct.sk_buff* %264, %struct.sk_buff** %266, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store i32 1, i32* %15, align 4
  %267 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %268 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %267, i32 0, i32 19
  %269 = load i32, i32* %268, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %268, align 4
  br label %271

271:                                              ; preds = %260, %233
  br label %335

272:                                              ; preds = %216
  %273 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %274 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %273, i32 0, i32 0
  %275 = load i8*, i8** %274, align 8
  %276 = call i64 @le16_to_cpu(i8* %275)
  store i64 %276, i64* %14, align 8
  %277 = load i64, i64* %14, align 8
  %278 = sub i64 %277, 16
  %279 = udiv i64 %278, 4
  %280 = sub i64 %279, 1
  store i64 %280, i64* %13, align 8
  %281 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %282 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %281, i32 0, i32 0
  %283 = load i64, i64* %282, align 8
  %284 = call i8* @cpu_to_le16(i64 %283)
  %285 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %286 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %285, i32 0, i32 1
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %286, align 8
  %288 = load i64, i64* %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %287, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 1
  store i8* %284, i8** %290, align 8
  %291 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %292 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %291, i32 0, i32 0
  %293 = load i64, i64* %292, align 8
  %294 = call i8* @cpu_to_le16(i64 %293)
  %295 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %296 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %295, i32 0, i32 1
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %296, align 8
  %298 = load i64, i64* %13, align 8
  %299 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i64 %298
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 0
  store i8* %294, i8** %300, align 8
  %301 = load i64, i64* %14, align 8
  %302 = add i64 %301, 4
  %303 = call i8* @cpu_to_le16(i64 %302)
  %304 = load %struct.usb_cdc_ncm_ndp16*, %struct.usb_cdc_ncm_ndp16** %10, align 8
  %305 = getelementptr inbounds %struct.usb_cdc_ncm_ndp16, %struct.usb_cdc_ncm_ndp16* %304, i32 0, i32 0
  store i8* %303, i8** %305, align 8
  %306 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %307 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %308 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %307, i32 0, i32 1
  %309 = load i64, i64* %308, align 8
  %310 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %311 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = call i32 @skb_put_data(%struct.sk_buff* %306, i64 %309, i64 %312)
  %314 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %315 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %314, i32 0, i32 0
  %316 = load i64, i64* %315, align 8
  %317 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %318 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %317, i32 0, i32 7
  %319 = load i64, i64* %318, align 8
  %320 = add i64 %319, %316
  store i64 %320, i64* %318, align 8
  %321 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %322 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %321)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %323 = load i64, i64* %13, align 8
  %324 = load i64, i64* @CDC_NCM_DPT_DATAGRAMS_MAX, align 8
  %325 = icmp sge i64 %323, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %272
  store i32 1, i32* %15, align 4
  %327 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %328 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %327, i32 0, i32 18
  %329 = load i32, i32* %328, align 8
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 8
  br label %335

331:                                              ; preds = %272
  br label %332

332:                                              ; preds = %331
  %333 = load i64, i64* %12, align 8
  %334 = add nsw i64 %333, 1
  store i64 %334, i64* %12, align 8
  br label %165

335:                                              ; preds = %326, %271, %185, %165
  %336 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %337 = icmp ne %struct.sk_buff* %336, null
  br i1 %337, label %338, label %348

338:                                              ; preds = %335
  %339 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %340 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %339)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  %341 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %342 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %341, i32 0, i32 2
  %343 = load %struct.TYPE_8__*, %struct.TYPE_8__** %342, align 8
  %344 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %343, i32 0, i32 0
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = add nsw i32 %346, 1
  store i32 %347, i32* %345, align 4
  br label %348

348:                                              ; preds = %338, %335
  %349 = load i64, i64* %12, align 8
  %350 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %351 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %350, i32 0, i32 6
  store i64 %349, i64* %351, align 8
  %352 = load i64, i64* %12, align 8
  %353 = icmp eq i64 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %348
  %355 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %356 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %357 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %356, i32 0, i32 11
  store %struct.sk_buff* %355, %struct.sk_buff** %357, align 8
  br label %533

358:                                              ; preds = %348
  %359 = load i64, i64* %12, align 8
  %360 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %361 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %360, i32 0, i32 8
  %362 = load i64, i64* %361, align 8
  %363 = icmp slt i64 %359, %362
  br i1 %363, label %364, label %384

364:                                              ; preds = %358
  %365 = load i32, i32* %15, align 4
  %366 = icmp eq i32 %365, 0
  br i1 %366, label %367, label %384

367:                                              ; preds = %364
  %368 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %369 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %368, i32 0, i32 9
  %370 = load i64, i64* %369, align 8
  %371 = icmp sgt i64 %370, 0
  br i1 %371, label %372, label %384

372:                                              ; preds = %367
  %373 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %374 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %375 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %374, i32 0, i32 11
  store %struct.sk_buff* %373, %struct.sk_buff** %375, align 8
  %376 = load i64, i64* %12, align 8
  %377 = load i64, i64* @CDC_NCM_RESTART_TIMER_DATAGRAM_CNT, align 8
  %378 = icmp slt i64 %376, %377
  br i1 %378, label %379, label %383

379:                                              ; preds = %372
  %380 = load i32, i32* @CDC_NCM_TIMER_PENDING_CNT, align 4
  %381 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %382 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %381, i32 0, i32 17
  store i32 %380, i32* %382, align 4
  br label %383

383:                                              ; preds = %379, %372
  br label %533

384:                                              ; preds = %367, %364, %358
  %385 = load i64, i64* %12, align 8
  %386 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %387 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %386, i32 0, i32 8
  %388 = load i64, i64* %387, align 8
  %389 = icmp eq i64 %385, %388
  br i1 %389, label %390, label %395

390:                                              ; preds = %384
  %391 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %392 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %391, i32 0, i32 16
  %393 = load i32, i32* %392, align 8
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %392, align 8
  br label %395

395:                                              ; preds = %390, %384
  br label %396

396:                                              ; preds = %395
  br label %397

397:                                              ; preds = %396
  %398 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %399 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %398, i32 0, i32 0
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @CDC_NCM_FLAG_NDP_TO_END, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %442

404:                                              ; preds = %397
  %405 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %406 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %405, i32 0, i32 1
  %407 = load i64, i64* %406, align 8
  %408 = inttoptr i64 %407 to %struct.usb_cdc_ncm_nth16*
  store %struct.usb_cdc_ncm_nth16* %408, %struct.usb_cdc_ncm_nth16** %9, align 8
  %409 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %410 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %411 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %410, i32 0, i32 15
  %412 = load i64, i64* %411, align 8
  %413 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %414 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %413, i32 0, i32 3
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %417 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = sub i64 %415, %418
  %420 = call i32 @cdc_ncm_align_tail(%struct.sk_buff* %409, i64 %412, i64 0, i64 %419)
  %421 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %422 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %421, i32 0, i32 0
  %423 = load i64, i64* %422, align 8
  %424 = call i8* @cpu_to_le16(i64 %423)
  %425 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %9, align 8
  %426 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %425, i32 0, i32 1
  store i8* %424, i8** %426, align 8
  %427 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %428 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %429 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %428, i32 0, i32 14
  %430 = load i64, i64* %429, align 8
  %431 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %432 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %431, i32 0, i32 1
  %433 = load i64, i64* %432, align 8
  %434 = call i32 @skb_put_data(%struct.sk_buff* %427, i64 %430, i64 %433)
  %435 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %436 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %435, i32 0, i32 14
  %437 = load i64, i64* %436, align 8
  %438 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %439 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %438, i32 0, i32 1
  %440 = load i64, i64* %439, align 8
  %441 = call %struct.usb_cdc_ncm_ndp16* @memset(i64 %437, i32 0, i64 %440)
  store %struct.usb_cdc_ncm_ndp16* %441, %struct.usb_cdc_ncm_ndp16** %10, align 8
  br label %442

442:                                              ; preds = %404, %397
  %443 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %444 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %443, i32 0, i32 1
  %445 = load %struct.TYPE_6__*, %struct.TYPE_6__** %444, align 8
  %446 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %445, i32 0, i32 0
  %447 = load i32, i32* %446, align 4
  %448 = load i32, i32* @FLAG_SEND_ZLP, align 4
  %449 = and i32 %447, %448
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %470, label %451

451:                                              ; preds = %442
  %452 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %453 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %452, i32 0, i32 0
  %454 = load i64, i64* %453, align 8
  %455 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %456 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %455, i32 0, i32 10
  %457 = load i64, i64* %456, align 8
  %458 = icmp ugt i64 %454, %457
  br i1 %458, label %459, label %470

459:                                              ; preds = %451
  %460 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %461 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %460, i32 0, i32 3
  %462 = load i64, i64* %461, align 8
  %463 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %464 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = sub i64 %462, %465
  store i64 %466, i64* %17, align 8
  %467 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %468 = load i64, i64* %17, align 8
  %469 = call %struct.usb_cdc_ncm_nth16* @skb_put_zero(%struct.sk_buff* %467, i64 %468)
  br label %492

470:                                              ; preds = %451, %442
  %471 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %472 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %471, i32 0, i32 0
  %473 = load i64, i64* %472, align 8
  %474 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %475 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %474, i32 0, i32 3
  %476 = load i64, i64* %475, align 8
  %477 = icmp ult i64 %473, %476
  br i1 %477, label %478, label %491

478:                                              ; preds = %470
  %479 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %480 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %479, i32 0, i32 0
  %481 = load i64, i64* %480, align 8
  %482 = load %struct.usbnet*, %struct.usbnet** %5, align 8
  %483 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = sext i32 %484 to i64
  %486 = urem i64 %481, %485
  %487 = icmp eq i64 %486, 0
  br i1 %487, label %488, label %491

488:                                              ; preds = %478
  %489 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %490 = call i32 @skb_put_u8(%struct.sk_buff* %489, i32 0)
  br label %491

491:                                              ; preds = %488, %478, %470
  br label %492

492:                                              ; preds = %491, %459
  %493 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %494 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %493, i32 0, i32 1
  %495 = load i64, i64* %494, align 8
  %496 = inttoptr i64 %495 to %struct.usb_cdc_ncm_nth16*
  store %struct.usb_cdc_ncm_nth16* %496, %struct.usb_cdc_ncm_nth16** %9, align 8
  %497 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %498 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = call i8* @cpu_to_le16(i64 %499)
  %501 = load %struct.usb_cdc_ncm_nth16*, %struct.usb_cdc_ncm_nth16** %9, align 8
  %502 = getelementptr inbounds %struct.usb_cdc_ncm_nth16, %struct.usb_cdc_ncm_nth16* %501, i32 0, i32 0
  store i8* %500, i8** %502, align 8
  %503 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %504 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %503, i32 0, i32 11
  store %struct.sk_buff* null, %struct.sk_buff** %504, align 8
  %505 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %506 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %505, i32 0, i32 0
  %507 = load i64, i64* %506, align 8
  %508 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %509 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %508, i32 0, i32 7
  %510 = load i64, i64* %509, align 8
  %511 = sub i64 %507, %510
  %512 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %513 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %512, i32 0, i32 13
  %514 = load i32, i32* %513, align 4
  %515 = sext i32 %514 to i64
  %516 = add i64 %515, %511
  %517 = trunc i64 %516 to i32
  store i32 %517, i32* %513, align 4
  %518 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %519 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %518, i32 0, i32 12
  %520 = load i32, i32* %519, align 8
  %521 = add nsw i32 %520, 1
  store i32 %521, i32* %519, align 8
  %522 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %523 = load i64, i64* %12, align 8
  %524 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %525 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %524, i32 0, i32 7
  %526 = load i64, i64* %525, align 8
  %527 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %528 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %527, i32 0, i32 0
  %529 = load i64, i64* %528, align 8
  %530 = sub i64 %526, %529
  %531 = call i32 @usbnet_set_skb_tx_stats(%struct.sk_buff* %522, i64 %523, i64 %530)
  %532 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  store %struct.sk_buff* %532, %struct.sk_buff** %4, align 8
  br label %545

533:                                              ; preds = %383, %354, %133
  %534 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %535 = getelementptr inbounds %struct.cdc_ncm_ctx, %struct.cdc_ncm_ctx* %534, i32 0, i32 11
  %536 = load %struct.sk_buff*, %struct.sk_buff** %535, align 8
  %537 = icmp ne %struct.sk_buff* %536, null
  br i1 %537, label %538, label %544

538:                                              ; preds = %533
  %539 = load i64, i64* %12, align 8
  %540 = icmp sgt i64 %539, 0
  br i1 %540, label %541, label %544

541:                                              ; preds = %538
  %542 = load %struct.cdc_ncm_ctx*, %struct.cdc_ncm_ctx** %8, align 8
  %543 = call i32 @cdc_ncm_tx_timeout_start(%struct.cdc_ncm_ctx* %542)
  br label %544

544:                                              ; preds = %541, %538, %533
  store %struct.sk_buff* null, %struct.sk_buff** %4, align 8
  br label %545

545:                                              ; preds = %544, %492
  %546 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %546
}

declare dso_local i64 @ALIGN(i64, i64) #1

declare dso_local i32 @swap(%struct.sk_buff*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local %struct.usb_cdc_ncm_nth16* @skb_put_zero(%struct.sk_buff*, i64) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local %struct.usb_cdc_ncm_ndp16* @cdc_ncm_ndp(%struct.cdc_ncm_ctx*, %struct.sk_buff*, %struct.sk_buff*, i64) #1

declare dso_local i32 @cdc_ncm_align_tail(%struct.sk_buff*, i64, i64, i64) #1

declare dso_local i64 @le16_to_cpu(i8*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i64) #1

declare dso_local %struct.usb_cdc_ncm_ndp16* @memset(i64, i32, i64) #1

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_set_skb_tx_stats(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @cdc_ncm_tx_timeout_start(%struct.cdc_ncm_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
