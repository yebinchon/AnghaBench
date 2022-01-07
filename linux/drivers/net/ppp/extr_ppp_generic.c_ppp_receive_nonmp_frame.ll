; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_receive_nonmp_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ppp/extr_ppp_generic.c_ppp_receive_nonmp_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp = type { i32, i32, i32, i64*, %struct.TYPE_11__*, i32, i8*, i64, i64, %struct.TYPE_9__, %struct.TYPE_8__, i32, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_9__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.sk_buff = type { i32, i32, %struct.TYPE_11__*, i32, i32 }

@SC_DECOMP_RUN = common dso_local global i32 0, align 4
@SC_DC_FERROR = common dso_local global i32 0, align 4
@SC_DC_ERROR = common dso_local global i32 0, align 4
@SC_MUST_COMP = common dso_local global i32 0, align 4
@SC_REJ_COMP_TCP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PPP: no memory (VJ decomp)\0A\00", align 1
@CHECKSUM_NONE = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"PPP: VJ decompression error\0A\00", align 1
@PPP_IP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"PPP: VJ uncompressed error\0A\00", align 1
@PPP_MAX_RQLEN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i8* null, align 8
@IFF_UP = common dso_local global i32 0, align 4
@NPMODE_PASS = common dso_local global i64 0, align 8
@npindex_to_ethertype = common dso_local global i32* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ppp*, %struct.sk_buff*)* @ppp_receive_nonmp_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ppp_receive_nonmp_frame(%struct.ppp* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ppp*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ppp* %0, %struct.ppp** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.ppp*, %struct.ppp** %3, align 8
  %10 = getelementptr inbounds %struct.ppp, %struct.ppp* %9, i32 0, i32 12
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %33

13:                                               ; preds = %2
  %14 = load %struct.ppp*, %struct.ppp** %3, align 8
  %15 = getelementptr inbounds %struct.ppp, %struct.ppp* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SC_DECOMP_RUN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %33

20:                                               ; preds = %13
  %21 = load %struct.ppp*, %struct.ppp** %3, align 8
  %22 = getelementptr inbounds %struct.ppp, %struct.ppp* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @SC_DC_FERROR, align 4
  %25 = load i32, i32* @SC_DC_ERROR, align 4
  %26 = or i32 %24, %25
  %27 = and i32 %23, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load %struct.ppp*, %struct.ppp** %3, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %32 = call %struct.sk_buff* @ppp_decompress_frame(%struct.ppp* %30, %struct.sk_buff* %31)
  store %struct.sk_buff* %32, %struct.sk_buff** %4, align 8
  br label %33

33:                                               ; preds = %29, %20, %13, %2
  %34 = load %struct.ppp*, %struct.ppp** %3, align 8
  %35 = getelementptr inbounds %struct.ppp, %struct.ppp* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @SC_MUST_COMP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %33
  %41 = load %struct.ppp*, %struct.ppp** %3, align 8
  %42 = getelementptr inbounds %struct.ppp, %struct.ppp* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @SC_DC_FERROR, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %311

48:                                               ; preds = %40, %33
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 @PPP_PROTO(%struct.sk_buff* %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  switch i32 %51, label %202 [
    i32 129, label %52
    i32 128, label %156
    i32 130, label %198
  ]

52:                                               ; preds = %48
  %53 = load %struct.ppp*, %struct.ppp** %3, align 8
  %54 = getelementptr inbounds %struct.ppp, %struct.ppp* %53, i32 0, i32 11
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %52
  %58 = load %struct.ppp*, %struct.ppp** %3, align 8
  %59 = getelementptr inbounds %struct.ppp, %struct.ppp* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @SC_REJ_COMP_TCP, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %57, %52
  br label %311

65:                                               ; preds = %57
  %66 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %67 = call i32 @skb_tailroom(%struct.sk_buff* %66)
  %68 = icmp slt i32 %67, 124
  br i1 %68, label %73, label %69

69:                                               ; preds = %65
  %70 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %71 = call i32 @skb_cloned(%struct.sk_buff* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %102

73:                                               ; preds = %69, %65
  %74 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = add nsw i32 %76, 128
  %78 = call %struct.sk_buff* @dev_alloc_skb(i32 %77)
  store %struct.sk_buff* %78, %struct.sk_buff** %5, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %80 = icmp ne %struct.sk_buff* %79, null
  br i1 %80, label %86, label %81

81:                                               ; preds = %73
  %82 = load %struct.ppp*, %struct.ppp** %3, align 8
  %83 = getelementptr inbounds %struct.ppp, %struct.ppp* %82, i32 0, i32 4
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** %83, align 8
  %85 = call i32 @netdev_err(%struct.TYPE_11__* %84, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %311

86:                                               ; preds = %73
  %87 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %88 = call i32 @skb_reserve(%struct.sk_buff* %87, i32 2)
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %92 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @skb_put(%struct.sk_buff* %90, i32 %93)
  %95 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @skb_copy_bits(%struct.sk_buff* %89, i32 0, i32 %94, i32 %97)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = call i32 @consume_skb(%struct.sk_buff* %99)
  %101 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %101, %struct.sk_buff** %4, align 8
  br label %106

102:                                              ; preds = %69
  %103 = load i32, i32* @CHECKSUM_NONE, align 4
  %104 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 4
  store i32 %103, i32* %105, align 4
  br label %106

106:                                              ; preds = %102, %86
  %107 = load %struct.ppp*, %struct.ppp** %3, align 8
  %108 = getelementptr inbounds %struct.ppp, %struct.ppp* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, 2
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = sub nsw i32 %116, 2
  %118 = call i32 @slhc_uncompress(i32 %109, i32 %113, i32 %117)
  store i32 %118, i32* %7, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp sle i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %106
  %122 = load i32, i32* @KERN_DEBUG, align 4
  %123 = load %struct.ppp*, %struct.ppp** %3, align 8
  %124 = getelementptr inbounds %struct.ppp, %struct.ppp* %123, i32 0, i32 4
  %125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %124, align 8
  %126 = call i32 @netdev_printk(i32 %122, %struct.TYPE_11__* %125, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %311

127:                                              ; preds = %106
  %128 = load i32, i32* %7, align 4
  %129 = add nsw i32 %128, 2
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %7, align 4
  %131 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %132 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp sgt i32 %130, %133
  br i1 %134, label %135, label %143

135:                                              ; preds = %127
  %136 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %137 = load i32, i32* %7, align 4
  %138 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %139 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %137, %140
  %142 = call i32 @skb_put(%struct.sk_buff* %136, i32 %141)
  br label %154

143:                                              ; preds = %127
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %153

149:                                              ; preds = %143
  %150 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @skb_trim(%struct.sk_buff* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %143
  br label %154

154:                                              ; preds = %153, %135
  %155 = load i32, i32* @PPP_IP, align 4
  store i32 %155, i32* %6, align 4
  br label %202

156:                                              ; preds = %48
  %157 = load %struct.ppp*, %struct.ppp** %3, align 8
  %158 = getelementptr inbounds %struct.ppp, %struct.ppp* %157, i32 0, i32 11
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %156
  %162 = load %struct.ppp*, %struct.ppp** %3, align 8
  %163 = getelementptr inbounds %struct.ppp, %struct.ppp* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SC_REJ_COMP_TCP, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %161, %156
  br label %311

169:                                              ; preds = %161
  %170 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %171 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %172 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = call i32 @pskb_may_pull(%struct.sk_buff* %170, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %169
  br label %311

177:                                              ; preds = %169
  %178 = load %struct.ppp*, %struct.ppp** %3, align 8
  %179 = getelementptr inbounds %struct.ppp, %struct.ppp* %178, i32 0, i32 11
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %182 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %181, i32 0, i32 3
  %183 = load i32, i32* %182, align 8
  %184 = add nsw i32 %183, 2
  %185 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %186 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 8
  %188 = sub nsw i32 %187, 2
  %189 = call i32 @slhc_remember(i32 %180, i32 %184, i32 %188)
  %190 = icmp sle i32 %189, 0
  br i1 %190, label %191, label %196

191:                                              ; preds = %177
  %192 = load %struct.ppp*, %struct.ppp** %3, align 8
  %193 = getelementptr inbounds %struct.ppp, %struct.ppp* %192, i32 0, i32 4
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = call i32 @netdev_err(%struct.TYPE_11__* %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %311

196:                                              ; preds = %177
  %197 = load i32, i32* @PPP_IP, align 4
  store i32 %197, i32* %6, align 4
  br label %202

198:                                              ; preds = %48
  %199 = load %struct.ppp*, %struct.ppp** %3, align 8
  %200 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %201 = call i32 @ppp_ccp_peek(%struct.ppp* %199, %struct.sk_buff* %200, i32 1)
  br label %202

202:                                              ; preds = %48, %198, %196, %154
  %203 = load %struct.ppp*, %struct.ppp** %3, align 8
  %204 = getelementptr inbounds %struct.ppp, %struct.ppp* %203, i32 0, i32 10
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %205, align 4
  %208 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = sub nsw i32 %210, 2
  %212 = load %struct.ppp*, %struct.ppp** %3, align 8
  %213 = getelementptr inbounds %struct.ppp, %struct.ppp* %212, i32 0, i32 10
  %214 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = add nsw i32 %215, %211
  store i32 %216, i32* %214, align 8
  %217 = load i32, i32* %6, align 4
  %218 = call i32 @proto_to_npindex(i32 %217)
  store i32 %218, i32* %8, align 4
  %219 = load i32, i32* %8, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %251

221:                                              ; preds = %202
  %222 = load %struct.ppp*, %struct.ppp** %3, align 8
  %223 = getelementptr inbounds %struct.ppp, %struct.ppp* %222, i32 0, i32 9
  %224 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %223, i32 0, i32 1
  %225 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %226 = call i32 @skb_queue_tail(%struct.TYPE_10__* %224, %struct.sk_buff* %225)
  br label %227

227:                                              ; preds = %243, %221
  %228 = load %struct.ppp*, %struct.ppp** %3, align 8
  %229 = getelementptr inbounds %struct.ppp, %struct.ppp* %228, i32 0, i32 9
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @PPP_MAX_RQLEN, align 8
  %234 = icmp sgt i64 %232, %233
  br i1 %234, label %235, label %241

235:                                              ; preds = %227
  %236 = load %struct.ppp*, %struct.ppp** %3, align 8
  %237 = getelementptr inbounds %struct.ppp, %struct.ppp* %236, i32 0, i32 9
  %238 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %237, i32 0, i32 1
  %239 = call %struct.sk_buff* @skb_dequeue(%struct.TYPE_10__* %238)
  store %struct.sk_buff* %239, %struct.sk_buff** %4, align 8
  %240 = icmp ne %struct.sk_buff* %239, null
  br label %241

241:                                              ; preds = %235, %227
  %242 = phi i1 [ false, %227 ], [ %240, %235 ]
  br i1 %242, label %243, label %246

243:                                              ; preds = %241
  %244 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %245 = call i32 @kfree_skb(%struct.sk_buff* %244)
  br label %227

246:                                              ; preds = %241
  %247 = load %struct.ppp*, %struct.ppp** %3, align 8
  %248 = getelementptr inbounds %struct.ppp, %struct.ppp* %247, i32 0, i32 9
  %249 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %248, i32 0, i32 0
  %250 = call i32 @wake_up_interruptible(i32* %249)
  br label %310

251:                                              ; preds = %202
  %252 = load i8*, i8** @jiffies, align 8
  %253 = load %struct.ppp*, %struct.ppp** %3, align 8
  %254 = getelementptr inbounds %struct.ppp, %struct.ppp* %253, i32 0, i32 6
  store i8* %252, i8** %254, align 8
  %255 = load %struct.ppp*, %struct.ppp** %3, align 8
  %256 = getelementptr inbounds %struct.ppp, %struct.ppp* %255, i32 0, i32 4
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = load i32, i32* @IFF_UP, align 4
  %261 = and i32 %259, %260
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %273, label %263

263:                                              ; preds = %251
  %264 = load %struct.ppp*, %struct.ppp** %3, align 8
  %265 = getelementptr inbounds %struct.ppp, %struct.ppp* %264, i32 0, i32 3
  %266 = load i64*, i64** %265, align 8
  %267 = load i32, i32* %8, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i64, i64* %266, i64 %268
  %270 = load i64, i64* %269, align 8
  %271 = load i64, i64* @NPMODE_PASS, align 8
  %272 = icmp ne i64 %270, %271
  br i1 %272, label %273, label %276

273:                                              ; preds = %263, %251
  %274 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %275 = call i32 @kfree_skb(%struct.sk_buff* %274)
  br label %309

276:                                              ; preds = %263
  %277 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %278 = call i32 @skb_pull_rcsum(%struct.sk_buff* %277, i32 2)
  %279 = load %struct.ppp*, %struct.ppp** %3, align 8
  %280 = getelementptr inbounds %struct.ppp, %struct.ppp* %279, i32 0, i32 4
  %281 = load %struct.TYPE_11__*, %struct.TYPE_11__** %280, align 8
  %282 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %283 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %282, i32 0, i32 2
  store %struct.TYPE_11__* %281, %struct.TYPE_11__** %283, align 8
  %284 = load i32*, i32** @npindex_to_ethertype, align 8
  %285 = load i32, i32* %8, align 4
  %286 = sext i32 %285 to i64
  %287 = getelementptr inbounds i32, i32* %284, i64 %286
  %288 = load i32, i32* %287, align 4
  %289 = call i32 @htons(i32 %288)
  %290 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %291 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %290, i32 0, i32 1
  store i32 %289, i32* %291, align 4
  %292 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %293 = call i32 @skb_reset_mac_header(%struct.sk_buff* %292)
  %294 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %295 = load %struct.ppp*, %struct.ppp** %3, align 8
  %296 = getelementptr inbounds %struct.ppp, %struct.ppp* %295, i32 0, i32 5
  %297 = load i32, i32* %296, align 8
  %298 = load %struct.ppp*, %struct.ppp** %3, align 8
  %299 = getelementptr inbounds %struct.ppp, %struct.ppp* %298, i32 0, i32 4
  %300 = load %struct.TYPE_11__*, %struct.TYPE_11__** %299, align 8
  %301 = call i32 @dev_net(%struct.TYPE_11__* %300)
  %302 = call i32 @net_eq(i32 %297, i32 %301)
  %303 = icmp ne i32 %302, 0
  %304 = xor i1 %303, true
  %305 = zext i1 %304 to i32
  %306 = call i32 @skb_scrub_packet(%struct.sk_buff* %294, i32 %305)
  %307 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %308 = call i32 @netif_rx(%struct.sk_buff* %307)
  br label %309

309:                                              ; preds = %276, %273
  br label %310

310:                                              ; preds = %309, %246
  br label %316

311:                                              ; preds = %191, %176, %168, %121, %81, %64, %47
  %312 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %313 = call i32 @kfree_skb(%struct.sk_buff* %312)
  %314 = load %struct.ppp*, %struct.ppp** %3, align 8
  %315 = call i32 @ppp_receive_error(%struct.ppp* %314)
  br label %316

316:                                              ; preds = %311, %310
  ret void
}

declare dso_local %struct.sk_buff* @ppp_decompress_frame(%struct.ppp*, %struct.sk_buff*) #1

declare dso_local i32 @PPP_PROTO(%struct.sk_buff*) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_cloned(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i32) #1

declare dso_local i32 @netdev_err(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_bits(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @slhc_uncompress(i32, i32, i32) #1

declare dso_local i32 @netdev_printk(i32, %struct.TYPE_11__*, i8*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @slhc_remember(i32, i32, i32) #1

declare dso_local i32 @ppp_ccp_peek(%struct.ppp*, %struct.sk_buff*, i32) #1

declare dso_local i32 @proto_to_npindex(i32) #1

declare dso_local i32 @skb_queue_tail(%struct.TYPE_10__*, %struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.TYPE_10__*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @skb_pull_rcsum(%struct.sk_buff*, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_scrub_packet(%struct.sk_buff*, i32) #1

declare dso_local i32 @net_eq(i32, i32) #1

declare dso_local i32 @dev_net(%struct.TYPE_11__*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @ppp_receive_error(%struct.ppp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
