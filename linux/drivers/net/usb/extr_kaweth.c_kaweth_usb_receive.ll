; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_usb_receive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_usb_receive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.kaweth_device*, %struct.TYPE_4__* }
%struct.kaweth_device = type { i32, i64, %struct.TYPE_5__*, %struct.net_device*, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.sk_buff = type { i32 }

@EPIPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Status was -EPIPE.\0A\00", align 1
@ECONNRESET = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Status was -ECONNRESET or -ESHUTDOWN.\0A\00", align 1
@EPROTO = common dso_local global i32 0, align 4
@ETIME = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Status was -EPROTO, -ETIME, or -EILSEQ.\0A\00", align 1
@EOVERFLOW = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"Status was -EOVERFLOW.\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [43 x i8] c"%s RX status: %d count: %d packet_len: %d\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [63 x i8] c"Packet length too long for USB frame (pkt_len: %x, count: %x)\0A\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"Packet len & 2047: %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Count 2: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @kaweth_usb_receive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kaweth_usb_receive(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kaweth_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.urb* %0, %struct.urb** %2, align 8
  %12 = load %struct.urb*, %struct.urb** %2, align 8
  %13 = getelementptr inbounds %struct.urb, %struct.urb* %12, i32 0, i32 4
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.device* %15, %struct.device** %3, align 8
  %16 = load %struct.urb*, %struct.urb** %2, align 8
  %17 = getelementptr inbounds %struct.urb, %struct.urb* %16, i32 0, i32 3
  %18 = load %struct.kaweth_device*, %struct.kaweth_device** %17, align 8
  store %struct.kaweth_device* %18, %struct.kaweth_device** %4, align 8
  %19 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %20 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %19, i32 0, i32 3
  %21 = load %struct.net_device*, %struct.net_device** %20, align 8
  store %struct.net_device* %21, %struct.net_device** %5, align 8
  %22 = load %struct.urb*, %struct.urb** %2, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %6, align 4
  %25 = load %struct.urb*, %struct.urb** %2, align 8
  %26 = getelementptr inbounds %struct.urb, %struct.urb* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %8, align 4
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %9, align 4
  %31 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %32 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = call i32 @le16_to_cpup(i32* %34)
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @EPIPE, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp eq i32 %36, %38
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %56

43:                                               ; preds = %1
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %50 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  %51 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %52 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %51, i32 0, i32 6
  %53 = call i32 @wake_up(i32* %52)
  %54 = load %struct.device*, %struct.device** %3, align 8
  %55 = call i32 @dev_dbg(%struct.device* %54, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %249

56:                                               ; preds = %1
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ECONNRESET, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @ESHUTDOWN, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br label %66

66:                                               ; preds = %61, %56
  %67 = phi i1 [ true, %56 ], [ %65, %61 ]
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %73 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %72, i32 0, i32 0
  store i32 1, i32* %73, align 8
  %74 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %75 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %74, i32 0, i32 6
  %76 = call i32 @wake_up(i32* %75)
  %77 = load %struct.device*, %struct.device** %3, align 8
  %78 = call i32 @dev_dbg(%struct.device* %77, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %249

79:                                               ; preds = %66
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @EPROTO, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @ETIME, align 4
  %87 = sub nsw i32 0, %86
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %6, align 4
  %91 = load i32, i32* @EILSEQ, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp eq i32 %90, %92
  br label %94

94:                                               ; preds = %89, %84, %79
  %95 = phi i1 [ true, %84 ], [ true, %79 ], [ %93, %89 ]
  %96 = zext i1 %95 to i32
  %97 = call i64 @unlikely(i32 %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.net_device*, %struct.net_device** %5, align 8
  %101 = getelementptr inbounds %struct.net_device, %struct.net_device* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 4
  %105 = load %struct.device*, %struct.device** %3, align 8
  %106 = call i32 @dev_dbg(%struct.device* %105, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %249

107:                                              ; preds = %94
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @EOVERFLOW, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  %112 = zext i1 %111 to i32
  %113 = call i64 @unlikely(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %107
  %116 = load %struct.net_device*, %struct.net_device** %5, align 8
  %117 = getelementptr inbounds %struct.net_device, %struct.net_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  %121 = load %struct.device*, %struct.device** %3, align 8
  %122 = call i32 @dev_dbg(%struct.device* %121, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %123

123:                                              ; preds = %115, %107
  %124 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %125 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %124, i32 0, i32 4
  %126 = load i64, i64* %7, align 8
  %127 = call i32 @spin_lock_irqsave(i32* %125, i64 %126)
  %128 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %129 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %128, i32 0, i32 5
  %130 = load i32, i32* %129, align 4
  %131 = call i64 @IS_BLOCKED(i32 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %123
  %134 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %135 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %134, i32 0, i32 4
  %136 = load i64, i64* %7, align 8
  %137 = call i32 @spin_unlock_irqrestore(i32* %135, i64 %136)
  br label %249

138:                                              ; preds = %123
  %139 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %140 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %139, i32 0, i32 4
  %141 = load i64, i64* %7, align 8
  %142 = call i32 @spin_unlock_irqrestore(i32* %140, i64 %141)
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %168

145:                                              ; preds = %138
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* @EREMOTEIO, align 4
  %148 = sub nsw i32 0, %147
  %149 = icmp ne i32 %146, %148
  br i1 %149, label %150, label %168

150:                                              ; preds = %145
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 1
  br i1 %152, label %153, label %168

153:                                              ; preds = %150
  %154 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %155 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %154, i32 0, i32 2
  %156 = load %struct.TYPE_5__*, %struct.TYPE_5__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %156, i32 0, i32 0
  %158 = load %struct.net_device*, %struct.net_device** %5, align 8
  %159 = getelementptr inbounds %struct.net_device, %struct.net_device* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* %6, align 4
  %162 = load i32, i32* %8, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %157, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.4, i64 0, i64 0), i32 %160, i32 %161, i32 %162, i32 %163)
  %165 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %166 = load i32, i32* @GFP_ATOMIC, align 4
  %167 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %165, i32 %166)
  br label %249

168:                                              ; preds = %150, %145, %138
  %169 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %170 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %169, i32 0, i32 3
  %171 = load %struct.net_device*, %struct.net_device** %170, align 8
  %172 = icmp ne %struct.net_device* %171, null
  br i1 %172, label %173, label %245

173:                                              ; preds = %168
  %174 = load i32, i32* %8, align 4
  %175 = icmp sgt i32 %174, 2
  br i1 %175, label %176, label %245

176:                                              ; preds = %173
  %177 = load i32, i32* %10, align 4
  %178 = load i32, i32* %8, align 4
  %179 = sub nsw i32 %178, 2
  %180 = icmp sgt i32 %177, %179
  br i1 %180, label %181, label %205

181:                                              ; preds = %176
  %182 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %183 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %182, i32 0, i32 2
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 0
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %8, align 4
  %188 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %185, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i32 %186, i32 %187)
  %189 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %190 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %189, i32 0, i32 2
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 0
  %193 = load i32, i32* %10, align 4
  %194 = and i32 %193, 2047
  %195 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %192, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %194)
  %196 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %197 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %196, i32 0, i32 2
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %197, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 0
  %200 = load i32, i32* %9, align 4
  %201 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %199, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i32 %200)
  %202 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %203 = load i32, i32* @GFP_ATOMIC, align 4
  %204 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %202, i32 %203)
  br label %249

205:                                              ; preds = %176
  %206 = load i32, i32* %10, align 4
  %207 = add nsw i32 %206, 2
  %208 = call %struct.sk_buff* @dev_alloc_skb(i32 %207)
  store %struct.sk_buff* %208, %struct.sk_buff** %11, align 8
  %209 = icmp ne %struct.sk_buff* %208, null
  br i1 %209, label %214, label %210

210:                                              ; preds = %205
  %211 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %212 = load i32, i32* @GFP_ATOMIC, align 4
  %213 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %211, i32 %212)
  br label %249

214:                                              ; preds = %205
  %215 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %216 = call i32 @skb_reserve(%struct.sk_buff* %215, i32 2)
  %217 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %218 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %219 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %218, i32 0, i32 1
  %220 = load i64, i64* %219, align 8
  %221 = add nsw i64 %220, 2
  %222 = load i32, i32* %10, align 4
  %223 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %217, i64 %221, i32 %222)
  %224 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %225 = load i32, i32* %10, align 4
  %226 = call i32 @skb_put(%struct.sk_buff* %224, i32 %225)
  %227 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %228 = load %struct.net_device*, %struct.net_device** %5, align 8
  %229 = call i32 @eth_type_trans(%struct.sk_buff* %227, %struct.net_device* %228)
  %230 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 0
  store i32 %229, i32* %231, align 4
  %232 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %233 = call i32 @netif_rx(%struct.sk_buff* %232)
  %234 = load %struct.net_device*, %struct.net_device** %5, align 8
  %235 = getelementptr inbounds %struct.net_device, %struct.net_device* %234, i32 0, i32 0
  %236 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %236, align 4
  %239 = load i32, i32* %10, align 4
  %240 = load %struct.net_device*, %struct.net_device** %5, align 8
  %241 = getelementptr inbounds %struct.net_device, %struct.net_device* %240, i32 0, i32 0
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = add nsw i32 %243, %239
  store i32 %244, i32* %242, align 4
  br label %245

245:                                              ; preds = %214, %173, %168
  %246 = load %struct.kaweth_device*, %struct.kaweth_device** %4, align 8
  %247 = load i32, i32* @GFP_ATOMIC, align 4
  %248 = call i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device* %246, i32 %247)
  br label %249

249:                                              ; preds = %245, %210, %181, %153, %133, %99, %71, %43
  ret void
}

declare dso_local i32 @le16_to_cpup(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @IS_BLOCKED(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @kaweth_resubmit_rx_urb(%struct.kaweth_device*, i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
