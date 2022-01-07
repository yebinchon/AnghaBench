; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_rx_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_usb.c_mwifiex_usb_rx_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i64 }
%struct.urb_context = type { i64, %struct.sk_buff*, %struct.mwifiex_adapter* }
%struct.sk_buff = type { i32 }
%struct.mwifiex_adapter = type { i32, i32, i64 }
%struct.usb_card_rec = type { i64, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"mwifiex adapter or card structure is not valid\0A\00", align 1
@MWIFIEX_SURPRISE_REMOVED = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"URB status is failed: %d\0A\00", align 1
@INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"info: recv_length=%d, status=%d\0A\00", align 1
@EINPROGRESS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [34 x i8] c"received data processing failed!\0A\00", align 1
@MWIFIEX_IS_SUSPENDED = common dso_local global i32 0, align 4
@FATAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [21 x i8] c"Card is removed: %d\0A\00", align 1
@MWIFIEX_RX_CMD_BUF_SIZE = common dso_local global i32 0, align 4
@MWIFIEX_RX_DATA_BUF_SIZE = common dso_local global i32 0, align 4
@HIGH_RX_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @mwifiex_usb_rx_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mwifiex_usb_rx_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.urb_context*, align 8
  %4 = alloca %struct.mwifiex_adapter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.usb_card_rec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %10 = load %struct.urb*, %struct.urb** %2, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.urb_context*
  store %struct.urb_context* %13, %struct.urb_context** %3, align 8
  %14 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %15 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %14, i32 0, i32 2
  %16 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %15, align 8
  store %struct.mwifiex_adapter* %16, %struct.mwifiex_adapter** %4, align 8
  %17 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %18 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %17, i32 0, i32 1
  %19 = load %struct.sk_buff*, %struct.sk_buff** %18, align 8
  store %struct.sk_buff* %19, %struct.sk_buff** %5, align 8
  %20 = load %struct.urb*, %struct.urb** %2, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %7, align 4
  %23 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %24 = icmp ne %struct.mwifiex_adapter* %23, null
  br i1 %24, label %25, label %30

25:                                               ; preds = %1
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %32, label %30

30:                                               ; preds = %25, %1
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %228

32:                                               ; preds = %25
  %33 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %34 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.usb_card_rec*
  store %struct.usb_card_rec* %36, %struct.usb_card_rec** %6, align 8
  %37 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %38 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %41 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %39, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %32
  %45 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %46 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %45, i32 0, i32 2
  %47 = call i32 @atomic_dec(i32* %46)
  br label %52

48:                                               ; preds = %32
  %49 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %50 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %49, i32 0, i32 1
  %51 = call i32 @atomic_dec(i32* %50)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %150

55:                                               ; preds = %52
  %56 = load %struct.urb*, %struct.urb** %2, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = load i32, i32* @MWIFIEX_SURPRISE_REMOVED, align 4
  %62 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %63 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %62, i32 0, i32 1
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %84

66:                                               ; preds = %60, %55
  %67 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %68 = load i32, i32* @ERROR, align 4
  %69 = load %struct.urb*, %struct.urb** %2, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %67, i32 %68, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %74 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %77 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %66
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %81)
  br label %83

83:                                               ; preds = %80, %66
  br label %189

84:                                               ; preds = %60
  %85 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %86 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = icmp sgt i32 %87, %88
  br i1 %89, label %90, label %94

90:                                               ; preds = %84
  %91 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = call i32 @skb_trim(%struct.sk_buff* %91, i32 %92)
  br label %102

94:                                               ; preds = %84
  %95 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %96 = load i32, i32* %7, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = sub nsw i32 %96, %99
  %101 = call i32 @skb_put(%struct.sk_buff* %95, i32 %100)
  br label %102

102:                                              ; preds = %94, %90
  %103 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %106 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @mwifiex_usb_recv(%struct.mwifiex_adapter* %103, %struct.sk_buff* %104, i64 %107)
  store i32 %108, i32* %9, align 4
  %109 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %110 = load i32, i32* @INFO, align 4
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* %9, align 4
  %113 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %109, i32 %110, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %111, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @EINPROGRESS, align 4
  %116 = sub nsw i32 0, %115
  %117 = icmp eq i32 %114, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %102
  %119 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %120 = call i32 @mwifiex_queue_main_work(%struct.mwifiex_adapter* %119)
  %121 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %122 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %125 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = icmp eq i64 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %118
  br label %228

129:                                              ; preds = %118
  br label %149

130:                                              ; preds = %102
  %131 = load i32, i32* %9, align 4
  %132 = icmp eq i32 %131, -1
  br i1 %132, label %133, label %137

133:                                              ; preds = %130
  %134 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %135 = load i32, i32* @ERROR, align 4
  %136 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %134, i32 %135, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %137

137:                                              ; preds = %133, %130
  %138 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %139 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %142 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = icmp ne i64 %140, %143
  br i1 %144, label %145, label %148

145:                                              ; preds = %137
  %146 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %147 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %146)
  br label %148

148:                                              ; preds = %145, %137
  br label %149

149:                                              ; preds = %148, %129
  br label %188

150:                                              ; preds = %52
  %151 = load %struct.urb*, %struct.urb** %2, align 8
  %152 = getelementptr inbounds %struct.urb, %struct.urb* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %175

155:                                              ; preds = %150
  %156 = load i32, i32* @MWIFIEX_IS_SUSPENDED, align 4
  %157 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %158 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %157, i32 0, i32 1
  %159 = call i64 @test_bit(i32 %156, i32* %158)
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %172, label %161

161:                                              ; preds = %155
  %162 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %163 = load i32, i32* @FATAL, align 4
  %164 = load %struct.urb*, %struct.urb** %2, align 8
  %165 = getelementptr inbounds %struct.urb, %struct.urb* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %162, i32 %163, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %166)
  %168 = load i32, i32* @MWIFIEX_SURPRISE_REMOVED, align 4
  %169 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %170 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %169, i32 0, i32 1
  %171 = call i32 @set_bit(i32 %168, i32* %170)
  br label %172

172:                                              ; preds = %161, %155
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %173)
  br label %228

175:                                              ; preds = %150
  %176 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %177 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %180 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %179, i32 0, i32 0
  %181 = load i64, i64* %180, align 8
  %182 = icmp ne i64 %178, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %175
  %184 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %185 = call i32 @dev_kfree_skb_any(%struct.sk_buff* %184)
  br label %186

186:                                              ; preds = %183, %175
  br label %187

187:                                              ; preds = %186
  br label %188

188:                                              ; preds = %187, %149
  br label %189

189:                                              ; preds = %188, %83
  %190 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %191 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %194 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = icmp eq i64 %192, %195
  br i1 %196, label %197, label %199

197:                                              ; preds = %189
  %198 = load i32, i32* @MWIFIEX_RX_CMD_BUF_SIZE, align 4
  store i32 %198, i32* %8, align 4
  br label %201

199:                                              ; preds = %189
  %200 = load i32, i32* @MWIFIEX_RX_DATA_BUF_SIZE, align 4
  store i32 %200, i32* %8, align 4
  br label %201

201:                                              ; preds = %199, %197
  %202 = load %struct.usb_card_rec*, %struct.usb_card_rec** %6, align 8
  %203 = getelementptr inbounds %struct.usb_card_rec, %struct.usb_card_rec* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %206 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = icmp eq i64 %204, %207
  br i1 %208, label %209, label %213

209:                                              ; preds = %201
  %210 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @mwifiex_usb_submit_rx_urb(%struct.urb_context* %210, i32 %211)
  br label %227

213:                                              ; preds = %201
  %214 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %4, align 8
  %215 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %214, i32 0, i32 0
  %216 = call i64 @atomic_read(i32* %215)
  %217 = load i64, i64* @HIGH_RX_PENDING, align 8
  %218 = icmp sle i64 %216, %217
  br i1 %218, label %219, label %223

219:                                              ; preds = %213
  %220 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %221 = load i32, i32* %8, align 4
  %222 = call i32 @mwifiex_usb_submit_rx_urb(%struct.urb_context* %220, i32 %221)
  br label %226

223:                                              ; preds = %213
  %224 = load %struct.urb_context*, %struct.urb_context** %3, align 8
  %225 = getelementptr inbounds %struct.urb_context, %struct.urb_context* %224, i32 0, i32 1
  store %struct.sk_buff* null, %struct.sk_buff** %225, align 8
  br label %226

226:                                              ; preds = %223, %219
  br label %227

227:                                              ; preds = %226, %209
  br label %228

228:                                              ; preds = %227, %172, %128, %30
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @dev_kfree_skb_any(%struct.sk_buff*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @mwifiex_usb_recv(%struct.mwifiex_adapter*, %struct.sk_buff*, i64) #1

declare dso_local i32 @mwifiex_queue_main_work(%struct.mwifiex_adapter*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mwifiex_usb_submit_rx_urb(%struct.urb_context*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
