; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_yam_tx_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hamradio/extr_yam.c_yam_tx_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.yam_port = type { i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i32, i32* }

@YAM_MAX_FRAME = common dso_local global i32 0, align 4
@chktabl = common dso_local global i8* null, align 8
@chktabh = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.yam_port*)* @yam_tx_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yam_tx_byte(%struct.net_device* %0, %struct.yam_port* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.yam_port*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.yam_port* %1, %struct.yam_port** %4, align 8
  %8 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %9 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %263 [
    i32 129, label %11
    i32 130, label %12
    i32 131, label %80
    i32 133, label %135
    i32 132, label %181
    i32 128, label %251
  ]

11:                                               ; preds = %2
  br label %263

12:                                               ; preds = %2
  %13 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %14 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, -1
  store i32 %16, i32* %14, align 4
  %17 = icmp sle i32 %16, 0
  br i1 %17, label %18, label %79

18:                                               ; preds = %12
  %19 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %20 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %19, i32 0, i32 10
  %21 = call %struct.sk_buff* @skb_dequeue(i32* %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %5, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %18
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = call i32 @ptt_off(%struct.net_device* %24)
  %26 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %27 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %26, i32 0, i32 0
  store i32 129, i32* %27, align 8
  br label %263

28:                                               ; preds = %18
  %29 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %30 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %29, i32 0, i32 0
  store i32 131, i32* %30, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %38)
  br label %263

40:                                               ; preds = %28
  %41 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %42 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = sub nsw i32 %43, 1
  %45 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %46 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %48 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @YAM_MAX_FRAME, align 4
  %51 = icmp sge i32 %49, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %40
  %53 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %54 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = icmp slt i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %52, %40
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %58)
  br label %263

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %63 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %62, i32 0, i32 3
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %66 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @skb_copy_from_linear_data_offset(%struct.sk_buff* %61, i32 1, i8* %64, i32 %67)
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %69)
  %71 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %72 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %71, i32 0, i32 1
  store i32 0, i32* %72, align 4
  %73 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %74 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %73, i32 0, i32 4
  store i32 33, i32* %74, align 8
  %75 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %76 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %75, i32 0, i32 5
  store i32 243, i32* %76, align 4
  %77 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %78 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %77, i32 0, i32 0
  store i32 131, i32* %78, align 8
  br label %79

79:                                               ; preds = %60, %12
  br label %263

80:                                               ; preds = %2
  %81 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %82 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %81, i32 0, i32 3
  %83 = load i8*, i8** %82, align 8
  %84 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %85 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %83, i64 %88
  %90 = load i8, i8* %89, align 1
  store i8 %90, i8* %6, align 1
  %91 = load i8, i8* %6, align 1
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @THR(i32 %94)
  %96 = call i32 @outb(i8 zeroext %91, i32 %95)
  %97 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %98 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 8
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %7, align 1
  %101 = load i8*, i8** @chktabl, align 8
  %102 = load i8, i8* %7, align 1
  %103 = zext i8 %102 to i64
  %104 = getelementptr inbounds i8, i8* %101, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %108 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = xor i32 %106, %109
  %111 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %112 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %111, i32 0, i32 4
  store i32 %110, i32* %112, align 8
  %113 = load i8*, i8** @chktabh, align 8
  %114 = load i8, i8* %7, align 1
  %115 = zext i8 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = load i8, i8* %6, align 1
  %120 = zext i8 %119 to i32
  %121 = xor i32 %118, %120
  %122 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %123 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %125 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %128 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %126, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %80
  %132 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %133 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %132, i32 0, i32 0
  store i32 133, i32* %133, align 8
  br label %134

134:                                              ; preds = %131, %80
  br label %263

135:                                              ; preds = %2
  %136 = load i8*, i8** @chktabl, align 8
  %137 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %138 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i8, i8* %136, i64 %140
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %145 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = xor i32 %143, %146
  %148 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %149 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load i8*, i8** @chktabh, align 8
  %151 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %152 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds i8, i8* %150, i64 %154
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = load i8*, i8** @chktabl, align 8
  %159 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %160 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i8, i8* %158, i64 %162
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = xor i32 %157, %165
  %167 = xor i32 %166, 255
  %168 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %169 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %168, i32 0, i32 4
  store i32 %167, i32* %169, align 8
  %170 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %171 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %170, i32 0, i32 4
  %172 = load i32, i32* %171, align 8
  %173 = trunc i32 %172 to i8
  %174 = load %struct.net_device*, %struct.net_device** %3, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @THR(i32 %176)
  %178 = call i32 @outb(i8 zeroext %173, i32 %177)
  %179 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %180 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %179, i32 0, i32 0
  store i32 132, i32* %180, align 8
  br label %263

181:                                              ; preds = %2
  %182 = load i8*, i8** @chktabh, align 8
  %183 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %184 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8, i8* %182, i64 %186
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = xor i32 %189, 255
  %191 = trunc i32 %190 to i8
  %192 = load %struct.net_device*, %struct.net_device** %3, align 8
  %193 = getelementptr inbounds %struct.net_device, %struct.net_device* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @THR(i32 %194)
  %196 = call i32 @outb(i8 zeroext %191, i32 %195)
  %197 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %198 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %197, i32 0, i32 10
  %199 = call i32 @skb_queue_empty(i32* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %240

201:                                              ; preds = %181
  %202 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %203 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %202, i32 0, i32 6
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %206 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = mul nsw i32 %204, %207
  %209 = sdiv i32 %208, 8000
  %210 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %211 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %210, i32 0, i32 1
  store i32 %209, i32* %211, align 4
  %212 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %213 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %212, i32 0, i32 8
  %214 = load i32, i32* %213, align 8
  %215 = icmp eq i32 %214, 2
  br i1 %215, label %216, label %229

216:                                              ; preds = %201
  %217 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %218 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %217, i32 0, i32 6
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %221 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %220, i32 0, i32 9
  %222 = load i32, i32* %221, align 4
  %223 = mul nsw i32 %219, %222
  %224 = sdiv i32 %223, 8
  %225 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %226 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, %224
  store i32 %228, i32* %226, align 4
  br label %229

229:                                              ; preds = %216, %201
  %230 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %231 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %237

234:                                              ; preds = %229
  %235 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %236 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %235, i32 0, i32 1
  store i32 1, i32* %236, align 4
  br label %237

237:                                              ; preds = %234, %229
  %238 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %239 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %238, i32 0, i32 0
  store i32 128, i32* %239, align 8
  br label %245

240:                                              ; preds = %181
  %241 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %242 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %241, i32 0, i32 1
  store i32 1, i32* %242, align 4
  %243 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %244 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %243, i32 0, i32 0
  store i32 130, i32* %244, align 8
  br label %245

245:                                              ; preds = %240, %237
  %246 = load %struct.net_device*, %struct.net_device** %3, align 8
  %247 = getelementptr inbounds %struct.net_device, %struct.net_device* %246, i32 0, i32 0
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %248, align 4
  br label %263

251:                                              ; preds = %2
  %252 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %253 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = add nsw i32 %254, -1
  store i32 %255, i32* %253, align 4
  %256 = icmp sle i32 %255, 0
  br i1 %256, label %257, label %262

257:                                              ; preds = %251
  %258 = load %struct.yam_port*, %struct.yam_port** %4, align 8
  %259 = getelementptr inbounds %struct.yam_port, %struct.yam_port* %258, i32 0, i32 0
  store i32 129, i32* %259, align 8
  %260 = load %struct.net_device*, %struct.net_device** %3, align 8
  %261 = call i32 @ptt_off(%struct.net_device* %260)
  br label %262

262:                                              ; preds = %257, %251
  br label %263

263:                                              ; preds = %2, %262, %245, %135, %134, %79, %57, %37, %23, %11
  ret void
}

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @ptt_off(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_copy_from_linear_data_offset(%struct.sk_buff*, i32, i8*, i32) #1

declare dso_local i32 @outb(i8 zeroext, i32) #1

declare dso_local i32 @THR(i32) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
