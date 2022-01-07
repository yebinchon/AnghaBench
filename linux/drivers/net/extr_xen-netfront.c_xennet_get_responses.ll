; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_get_responses.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_xen-netfront.c_xennet_get_responses.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netfront_queue = type { %struct.TYPE_6__, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.netfront_rx_info = type { %struct.xen_netif_extra_info*, %struct.xen_netif_rx_response }
%struct.xen_netif_extra_info = type { i32 }
%struct.xen_netif_rx_response = type { i64, i32, i64, i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type { i32 }

@XEN_NETIF_NR_SLOTS_MIN = common dso_local global i32 0, align 4
@RX_COPY_THRESHOLD = common dso_local global i64 0, align 8
@XEN_NETRXF_extra_info = common dso_local global i32 0, align 4
@XEN_PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"rx->offset: %u, size: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GRANT_INVALID_REF = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [24 x i8] c"Bad rx response id %d.\0A\00", align 1
@XEN_NETRXF_more_data = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"Need more slots\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [16 x i8] c"Too many slots\0A\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netfront_queue*, %struct.netfront_rx_info*, i64, %struct.sk_buff_head*)* @xennet_get_responses to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xennet_get_responses(%struct.netfront_queue* %0, %struct.netfront_rx_info* %1, i64 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca %struct.netfront_queue*, align 8
  %6 = alloca %struct.netfront_rx_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff_head*, align 8
  %9 = alloca %struct.xen_netif_rx_response*, align 8
  %10 = alloca %struct.xen_netif_extra_info*, align 8
  %11 = alloca %struct.device*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.netfront_queue* %0, %struct.netfront_queue** %5, align 8
  store %struct.netfront_rx_info* %1, %struct.netfront_rx_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %8, align 8
  %19 = load %struct.netfront_rx_info*, %struct.netfront_rx_info** %6, align 8
  %20 = getelementptr inbounds %struct.netfront_rx_info, %struct.netfront_rx_info* %19, i32 0, i32 1
  store %struct.xen_netif_rx_response* %20, %struct.xen_netif_rx_response** %9, align 8
  %21 = load %struct.netfront_rx_info*, %struct.netfront_rx_info** %6, align 8
  %22 = getelementptr inbounds %struct.netfront_rx_info, %struct.netfront_rx_info* %21, i32 0, i32 0
  %23 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %22, align 8
  store %struct.xen_netif_extra_info* %23, %struct.xen_netif_extra_info** %10, align 8
  %24 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %25 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.device* %29, %struct.device** %11, align 8
  %30 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %31 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %12, align 8
  %34 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_queue* %34, i64 %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %13, align 8
  %37 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %38 = load i64, i64* %12, align 8
  %39 = call i64 @xennet_get_rx_ref(%struct.netfront_queue* %37, i64 %38)
  store i64 %39, i64* %14, align 8
  %40 = load i32, i32* @XEN_NETIF_NR_SLOTS_MIN, align 4
  %41 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %42 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RX_COPY_THRESHOLD, align 8
  %45 = icmp sle i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = add nsw i32 %40, %46
  store i32 %47, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %48 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %49 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @XEN_NETRXF_extra_info, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %4
  %55 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %56 = load %struct.xen_netif_extra_info*, %struct.xen_netif_extra_info** %10, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i32 @xennet_get_extras(%struct.netfront_queue* %55, %struct.xen_netif_extra_info* %56, i64 %57)
  store i32 %58, i32* %17, align 4
  %59 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %60 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %12, align 8
  br label %63

63:                                               ; preds = %54, %4
  br label %64

64:                                               ; preds = %158, %63
  %65 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %66 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp slt i64 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %71 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %74 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add nsw i64 %72, %75
  %77 = load i64, i64* @XEN_PAGE_SIZE, align 8
  %78 = icmp sgt i64 %76, %77
  br label %79

79:                                               ; preds = %69, %64
  %80 = phi i1 [ true, %64 ], [ %78, %69 ]
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %79
  %85 = call i64 (...) @net_ratelimit()
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %96

87:                                               ; preds = %84
  %88 = load %struct.device*, %struct.device** %11, align 8
  %89 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %90 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %93 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %88, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %91, i64 %94)
  br label %96

96:                                               ; preds = %87, %84
  %97 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %98 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @xennet_move_rx_slot(%struct.netfront_queue* %97, %struct.sk_buff* %98, i64 %99)
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %17, align 4
  br label %134

103:                                              ; preds = %79
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* @GRANT_INVALID_REF, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %119

107:                                              ; preds = %103
  %108 = call i64 (...) @net_ratelimit()
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %107
  %111 = load %struct.device*, %struct.device** %11, align 8
  %112 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %113 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %111, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %114)
  br label %116

116:                                              ; preds = %110, %107
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %17, align 4
  br label %134

119:                                              ; preds = %103
  %120 = load i64, i64* %14, align 8
  %121 = call i64 @gnttab_end_foreign_access_ref(i64 %120, i32 0)
  store i64 %121, i64* %18, align 8
  %122 = load i64, i64* %18, align 8
  %123 = icmp ne i64 %122, 0
  %124 = xor i1 %123, true
  %125 = zext i1 %124 to i32
  %126 = call i32 @BUG_ON(i32 %125)
  %127 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %128 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %127, i32 0, i32 1
  %129 = load i64, i64* %14, align 8
  %130 = call i32 @gnttab_release_grant_reference(i32* %128, i64 %129)
  %131 = load %struct.sk_buff_head*, %struct.sk_buff_head** %8, align 8
  %132 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %133 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %131, %struct.sk_buff* %132)
  br label %134

134:                                              ; preds = %119, %116, %96
  %135 = load %struct.xen_netif_rx_response*, %struct.xen_netif_rx_response** %9, align 8
  %136 = getelementptr inbounds %struct.xen_netif_rx_response, %struct.xen_netif_rx_response* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 8
  %138 = load i32, i32* @XEN_NETRXF_more_data, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %142, label %141

141:                                              ; preds = %134
  br label %180

142:                                              ; preds = %134
  %143 = load i64, i64* %12, align 8
  %144 = load i32, i32* %16, align 4
  %145 = sext i32 %144 to i64
  %146 = add nsw i64 %143, %145
  %147 = load i64, i64* %7, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %158

149:                                              ; preds = %142
  %150 = call i64 (...) @net_ratelimit()
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load %struct.device*, %struct.device** %11, align 8
  %154 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %153, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %155

155:                                              ; preds = %152, %149
  %156 = load i32, i32* @ENOENT, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %17, align 4
  br label %180

158:                                              ; preds = %142
  %159 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %160 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %159, i32 0, i32 0
  %161 = load i64, i64* %12, align 8
  %162 = load i32, i32* %16, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %161, %163
  %165 = call %struct.xen_netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_6__* %160, i64 %164)
  store %struct.xen_netif_rx_response* %165, %struct.xen_netif_rx_response** %9, align 8
  %166 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %167 = load i64, i64* %12, align 8
  %168 = load i32, i32* %16, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %167, %169
  %171 = call %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_queue* %166, i64 %170)
  store %struct.sk_buff* %171, %struct.sk_buff** %13, align 8
  %172 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %173 = load i64, i64* %12, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = add nsw i64 %173, %175
  %177 = call i64 @xennet_get_rx_ref(%struct.netfront_queue* %172, i64 %176)
  store i64 %177, i64* %14, align 8
  %178 = load i32, i32* %16, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %16, align 4
  br label %64

180:                                              ; preds = %155, %141
  %181 = load i32, i32* %16, align 4
  %182 = load i32, i32* %15, align 4
  %183 = icmp sgt i32 %181, %182
  %184 = zext i1 %183 to i32
  %185 = call i64 @unlikely(i32 %184)
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %196

187:                                              ; preds = %180
  %188 = call i64 (...) @net_ratelimit()
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %193

190:                                              ; preds = %187
  %191 = load %struct.device*, %struct.device** %11, align 8
  %192 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %191, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  br label %193

193:                                              ; preds = %190, %187
  %194 = load i32, i32* @E2BIG, align 4
  %195 = sub nsw i32 0, %194
  store i32 %195, i32* %17, align 4
  br label %196

196:                                              ; preds = %193, %180
  %197 = load i32, i32* %17, align 4
  %198 = call i64 @unlikely(i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %208

200:                                              ; preds = %196
  %201 = load i64, i64* %12, align 8
  %202 = load i32, i32* %16, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %201, %203
  %205 = load %struct.netfront_queue*, %struct.netfront_queue** %5, align 8
  %206 = getelementptr inbounds %struct.netfront_queue, %struct.netfront_queue* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 0
  store i64 %204, i64* %207, align 8
  br label %208

208:                                              ; preds = %200, %196
  %209 = load i32, i32* %17, align 4
  ret i32 %209
}

declare dso_local %struct.sk_buff* @xennet_get_rx_skb(%struct.netfront_queue*, i64) #1

declare dso_local i64 @xennet_get_rx_ref(%struct.netfront_queue*, i64) #1

declare dso_local i32 @xennet_get_extras(%struct.netfront_queue*, %struct.xen_netif_extra_info*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @xennet_move_rx_slot(%struct.netfront_queue*, %struct.sk_buff*, i64) #1

declare dso_local i64 @gnttab_end_foreign_access_ref(i64, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gnttab_release_grant_reference(i32*, i64) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local %struct.xen_netif_rx_response* @RING_GET_RESPONSE(%struct.TYPE_6__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
