; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_send_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32, i32, i32, %struct.TYPE_11__*, %struct.sk_buff*, %struct.TYPE_8__, i64, i32, %struct.TYPE_7__, i8*, i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.sk_buff = type { i32, i8* }

@jiffies = common dso_local global i8* null, align 8
@SC_COMP_TCP = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"PPP: no memory (VJ comp pkt)\0A\00", align 1
@SC_NO_TCP_CCID = common dso_local global i32 0, align 4
@SL_TYPE_COMPRESSED_TCP = common dso_local global i8 0, align 1
@PPP_VJC_COMP = common dso_local global i32 0, align 4
@PPP_VJC_UNCOMP = common dso_local global i32 0, align 4
@SC_COMP_RUN = common dso_local global i32 0, align 4
@PPP_LCP = common dso_local global i32 0, align 4
@SC_CCP_UP = common dso_local global i32 0, align 4
@SC_MUST_COMP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ppp: compression required but down - pkt dropped.\0A\00", align 1
@SC_LOOP_TRAFFIC = common dso_local global i32 0, align 4
@PPP_MAX_RQLEN = common dso_local global i64 0, align 8
@KERN_DEBUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*, %struct.sk_buff*)* @ppp_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_send_frame(%struct.ppp* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ppp*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.ppp* %0, %struct.ppp** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i32 @PPP_PROTO(%struct.sk_buff* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 32768
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i8*, i8** @jiffies, align 8
  %15 = load %struct.ppp*, %struct.ppp** %3, align 8
  %16 = getelementptr inbounds %struct.ppp, %struct.ppp* %15, i32 0, i32 9
  store i8* %14, i8** %16, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.ppp*, %struct.ppp** %3, align 8
  %19 = getelementptr inbounds %struct.ppp, %struct.ppp* %18, i32 0, i32 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 2
  %27 = load %struct.ppp*, %struct.ppp** %3, align 8
  %28 = getelementptr inbounds %struct.ppp, %struct.ppp* %27, i32 0, i32 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %5, align 4
  switch i32 %32, label %158 [
    i32 128, label %33
    i32 129, label %154
  ]

33:                                               ; preds = %17
  %34 = load %struct.ppp*, %struct.ppp** %3, align 8
  %35 = getelementptr inbounds %struct.ppp, %struct.ppp* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %33
  %39 = load %struct.ppp*, %struct.ppp** %3, align 8
  %40 = getelementptr inbounds %struct.ppp, %struct.ppp* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @SC_COMP_TCP, align 4
  %43 = and i32 %41, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %38, %33
  br label %158

46:                                               ; preds = %38
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ppp*, %struct.ppp** %3, align 8
  %51 = getelementptr inbounds %struct.ppp, %struct.ppp* %50, i32 0, i32 3
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %49, %54
  %56 = sub nsw i32 %55, 2
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call %struct.sk_buff* @alloc_skb(i32 %56, i32 %57)
  store %struct.sk_buff* %58, %struct.sk_buff** %6, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %60 = icmp ne %struct.sk_buff* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %46
  %62 = load %struct.ppp*, %struct.ppp** %3, align 8
  %63 = getelementptr inbounds %struct.ppp, %struct.ppp* %62, i32 0, i32 3
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %63, align 8
  %65 = call i32 @netdev_err(%struct.TYPE_11__* %64, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %240

66:                                               ; preds = %46
  %67 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %68 = load %struct.ppp*, %struct.ppp** %3, align 8
  %69 = getelementptr inbounds %struct.ppp, %struct.ppp* %68, i32 0, i32 3
  %70 = load %struct.TYPE_11__*, %struct.TYPE_11__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %72, 2
  %74 = call i32 @skb_reserve(%struct.sk_buff* %67, i32 %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 2
  store i8* %78, i8** %8, align 8
  %79 = load %struct.ppp*, %struct.ppp** %3, align 8
  %80 = getelementptr inbounds %struct.ppp, %struct.ppp* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 8
  %82 = load i8*, i8** %8, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %84 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = sub nsw i32 %85, 2
  %87 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 1
  %89 = load i8*, i8** %88, align 8
  %90 = getelementptr inbounds i8, i8* %89, i64 2
  %91 = ptrtoint i8* %90 to i32
  %92 = load %struct.ppp*, %struct.ppp** %3, align 8
  %93 = getelementptr inbounds %struct.ppp, %struct.ppp* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @SC_NO_TCP_CCID, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i32 @slhc_compress(i32 %81, i8* %82, i32 %86, i32 %91, i8** %8, i32 %99)
  store i32 %100, i32* %7, align 4
  %101 = load i8*, i8** %8, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = getelementptr inbounds i8, i8* %104, i64 2
  %106 = icmp eq i8* %101, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %66
  %108 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %109 = call i32 @consume_skb(%struct.sk_buff* %108)
  br label %153

110:                                              ; preds = %66
  %111 = load i8*, i8** %8, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 0
  %113 = load i8, i8* %112, align 1
  %114 = zext i8 %113 to i32
  %115 = load i8, i8* @SL_TYPE_COMPRESSED_TCP, align 1
  %116 = zext i8 %115 to i32
  %117 = and i32 %114, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %130

119:                                              ; preds = %110
  %120 = load i32, i32* @PPP_VJC_COMP, align 4
  store i32 %120, i32* %5, align 4
  %121 = load i8, i8* @SL_TYPE_COMPRESSED_TCP, align 1
  %122 = zext i8 %121 to i32
  %123 = xor i32 %122, -1
  %124 = load i8*, i8** %8, align 8
  %125 = getelementptr inbounds i8, i8* %124, i64 0
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = and i32 %127, %123
  %129 = trunc i32 %128 to i8
  store i8 %129, i8* %125, align 1
  br label %139

130:                                              ; preds = %110
  %131 = load i32, i32* @PPP_VJC_UNCOMP, align 4
  store i32 %131, i32* %5, align 4
  %132 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  %136 = load i8, i8* %135, align 1
  %137 = load i8*, i8** %8, align 8
  %138 = getelementptr inbounds i8, i8* %137, i64 0
  store i8 %136, i8* %138, align 1
  br label %139

139:                                              ; preds = %130, %119
  %140 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %141 = call i32 @consume_skb(%struct.sk_buff* %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  store %struct.sk_buff* %142, %struct.sk_buff** %4, align 8
  %143 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 2
  %146 = call i8* @skb_put(%struct.sk_buff* %143, i32 %145)
  store i8* %146, i8** %8, align 8
  %147 = load i8*, i8** %8, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 0
  store i8 0, i8* %148, align 1
  %149 = load i32, i32* %5, align 4
  %150 = trunc i32 %149 to i8
  %151 = load i8*, i8** %8, align 8
  %152 = getelementptr inbounds i8, i8* %151, i64 1
  store i8 %150, i8* %152, align 1
  br label %153

153:                                              ; preds = %139, %107
  br label %158

154:                                              ; preds = %17
  %155 = load %struct.ppp*, %struct.ppp** %3, align 8
  %156 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %157 = call i32 @ppp_ccp_peek(%struct.ppp* %155, %struct.sk_buff* %156, i32 0)
  br label %158

158:                                              ; preds = %17, %154, %153, %45
  %159 = load %struct.ppp*, %struct.ppp** %3, align 8
  %160 = getelementptr inbounds %struct.ppp, %struct.ppp* %159, i32 0, i32 2
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SC_COMP_RUN, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %208

165:                                              ; preds = %158
  %166 = load %struct.ppp*, %struct.ppp** %3, align 8
  %167 = getelementptr inbounds %struct.ppp, %struct.ppp* %166, i32 0, i32 6
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %208

170:                                              ; preds = %165
  %171 = load i32, i32* %5, align 4
  %172 = load i32, i32* @PPP_LCP, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %174, label %208

174:                                              ; preds = %170
  %175 = load i32, i32* %5, align 4
  %176 = icmp ne i32 %175, 129
  br i1 %176, label %177, label %208

177:                                              ; preds = %174
  %178 = load %struct.ppp*, %struct.ppp** %3, align 8
  %179 = getelementptr inbounds %struct.ppp, %struct.ppp* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* @SC_CCP_UP, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %200, label %184

184:                                              ; preds = %177
  %185 = load %struct.ppp*, %struct.ppp** %3, align 8
  %186 = getelementptr inbounds %struct.ppp, %struct.ppp* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load i32, i32* @SC_MUST_COMP, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %200

191:                                              ; preds = %184
  %192 = call i64 (...) @net_ratelimit()
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %199

194:                                              ; preds = %191
  %195 = load %struct.ppp*, %struct.ppp** %3, align 8
  %196 = getelementptr inbounds %struct.ppp, %struct.ppp* %195, i32 0, i32 3
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %196, align 8
  %198 = call i32 @netdev_err(%struct.TYPE_11__* %197, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  br label %199

199:                                              ; preds = %194, %191
  br label %240

200:                                              ; preds = %184, %177
  %201 = load %struct.ppp*, %struct.ppp** %3, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %203 = call %struct.sk_buff* @pad_compress_skb(%struct.ppp* %201, %struct.sk_buff* %202)
  store %struct.sk_buff* %203, %struct.sk_buff** %4, align 8
  %204 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %205 = icmp ne %struct.sk_buff* %204, null
  br i1 %205, label %207, label %206

206:                                              ; preds = %200
  br label %240

207:                                              ; preds = %200
  br label %208

208:                                              ; preds = %207, %174, %170, %165, %158
  %209 = load %struct.ppp*, %struct.ppp** %3, align 8
  %210 = getelementptr inbounds %struct.ppp, %struct.ppp* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @SC_LOOP_TRAFFIC, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %234

215:                                              ; preds = %208
  %216 = load %struct.ppp*, %struct.ppp** %3, align 8
  %217 = getelementptr inbounds %struct.ppp, %struct.ppp* %216, i32 0, i32 5
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @PPP_MAX_RQLEN, align 8
  %222 = icmp sgt i64 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  br label %240

224:                                              ; preds = %215
  %225 = load %struct.ppp*, %struct.ppp** %3, align 8
  %226 = getelementptr inbounds %struct.ppp, %struct.ppp* %225, i32 0, i32 5
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 1
  %228 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %229 = call i32 @skb_queue_tail(%struct.TYPE_10__* %227, %struct.sk_buff* %228)
  %230 = load %struct.ppp*, %struct.ppp** %3, align 8
  %231 = getelementptr inbounds %struct.ppp, %struct.ppp* %230, i32 0, i32 5
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 0
  %233 = call i32 @wake_up_interruptible(i32* %232)
  br label %250

234:                                              ; preds = %208
  %235 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %236 = load %struct.ppp*, %struct.ppp** %3, align 8
  %237 = getelementptr inbounds %struct.ppp, %struct.ppp* %236, i32 0, i32 4
  store %struct.sk_buff* %235, %struct.sk_buff** %237, align 8
  %238 = load %struct.ppp*, %struct.ppp** %3, align 8
  %239 = call i32 @ppp_push(%struct.ppp* %238)
  br label %250

240:                                              ; preds = %223, %206, %199, %61
  %241 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %242 = call i32 @kfree_skb(%struct.sk_buff* %241)
  %243 = load %struct.ppp*, %struct.ppp** %3, align 8
  %244 = getelementptr inbounds %struct.ppp, %struct.ppp* %243, i32 0, i32 3
  %245 = load %struct.TYPE_11__*, %struct.TYPE_11__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %245, i32 0, i32 0
  %247 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 4
  %249 = add nsw i32 %248, 1
  store i32 %249, i32* %247, align 4
  br label %250

250:                                              ; preds = %240, %234, %224
  ret void
}

declare dso_local i32 @PPP_PROTO(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @slhc_compress(i32, i8*, i32, i32, i8**, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ppp_ccp_peek(%struct.ppp*, %struct.sk_buff*, i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local %struct.sk_buff* @pad_compress_skb(%struct.ppp*, %struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_10__*, %struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @ppp_push(%struct.ppp*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
