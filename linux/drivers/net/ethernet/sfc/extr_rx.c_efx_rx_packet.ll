; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_rx.c_efx_rx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_rx_queue = type { i32, i32, %struct.efx_nic* }
%struct.efx_nic = type { i32, i64, i32, i32 }
%struct.efx_channel = type { i32, i32 }
%struct.efx_rx_buffer = type { i32, i32, i32 }

@EFX_RX_PKT_PREFIX_LEN = common dso_local global i32 0, align 4
@EFX_RX_MAX_FRAGS = common dso_local global i32 0, align 4
@EFX_RX_PKT_DISCARD = common dso_local global i32 0, align 4
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"RX queue %d received ids %x-%x len %d %s%s\0A\00", align 1
@EFX_RX_PKT_CSUMMED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" [SUMMED]\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [11 x i8] c" [DISCARD]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_rx_packet(%struct.efx_rx_queue* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.efx_rx_queue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.efx_nic*, align 8
  %12 = alloca %struct.efx_channel*, align 8
  %13 = alloca %struct.efx_rx_buffer*, align 8
  %14 = alloca i32, align 4
  store %struct.efx_rx_queue* %0, %struct.efx_rx_queue** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %16 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %15, i32 0, i32 2
  %17 = load %struct.efx_nic*, %struct.efx_nic** %16, align 8
  store %struct.efx_nic* %17, %struct.efx_nic** %11, align 8
  %18 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %19 = call %struct.efx_channel* @efx_rx_queue_channel(%struct.efx_rx_queue* %18)
  store %struct.efx_channel* %19, %struct.efx_channel** %12, align 8
  %20 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %21 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue* %24, i32 %25)
  store %struct.efx_rx_buffer* %26, %struct.efx_rx_buffer** %13, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %29 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %45

34:                                               ; preds = %5
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* @EFX_RX_PKT_PREFIX_LEN, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %41 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @efx_rx_packet__check_len(%struct.efx_rx_queue* %40, %struct.efx_rx_buffer* %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  br label %105

45:                                               ; preds = %5
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @EFX_RX_MAX_FRAGS, align 4
  %48 = icmp ugt i32 %46, %47
  %49 = zext i1 %48 to i32
  %50 = call i64 @unlikely(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %84, label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %8, align 4
  %55 = sub i32 %54, 1
  %56 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = mul i32 %55, %58
  %60 = icmp ule i32 %53, %59
  %61 = zext i1 %60 to i32
  %62 = call i64 @unlikely(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %52
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %68 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul i32 %66, %69
  %71 = icmp ugt i32 %65, %70
  %72 = zext i1 %71 to i32
  %73 = call i64 @unlikely(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %64
  %76 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %77 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = call i64 @unlikely(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %104

84:                                               ; preds = %75, %64, %52, %45
  %85 = load i32, i32* %9, align 4
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %84
  %88 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %89 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %92 = and i32 %90, %91
  %93 = icmp ne i32 %92, 0
  br label %94

94:                                               ; preds = %87, %84
  %95 = phi i1 [ false, %84 ], [ %93, %87 ]
  %96 = xor i1 %95, true
  %97 = zext i1 %96 to i32
  %98 = call i32 @WARN_ON(i32 %97)
  %99 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %100 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %101 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %99
  store i32 %103, i32* %101, align 4
  br label %104

104:                                              ; preds = %94, %75
  br label %105

105:                                              ; preds = %104, %44
  %106 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %107 = load i32, i32* @rx_status, align 4
  %108 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %109 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %112 = call i32 @efx_rx_queue_index(%struct.efx_rx_queue* %111)
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %8, align 4
  %116 = add i32 %114, %115
  %117 = sub i32 %116, 1
  %118 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %119 = getelementptr inbounds %struct.efx_rx_queue, %struct.efx_rx_queue* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = and i32 %117, %120
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %124 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @EFX_RX_PKT_CSUMMED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %131 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %132 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  %137 = zext i1 %136 to i64
  %138 = select i1 %136, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %139 = call i32 @netif_vdbg(%struct.efx_nic* %106, i32 %107, i32 %110, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %112, i32 %113, i32 %121, i32 %122, i8* %130, i8* %138)
  %140 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %141 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @EFX_RX_PKT_DISCARD, align 4
  %144 = and i32 %142, %143
  %145 = call i64 @unlikely(i32 %144)
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %105
  %148 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %149 = call i32 @efx_rx_flush_packet(%struct.efx_channel* %148)
  %150 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %151 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @efx_discard_rx_packet(%struct.efx_channel* %150, %struct.efx_rx_buffer* %151, i32 %152)
  br label %247

154:                                              ; preds = %105
  %155 = load i32, i32* %8, align 4
  %156 = icmp eq i32 %155, 1
  br i1 %156, label %157, label %166

157:                                              ; preds = %154
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* @EFX_RX_PKT_PREFIX_LEN, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %166, label %162

162:                                              ; preds = %157
  %163 = load i32, i32* %9, align 4
  %164 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %165 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  br label %166

166:                                              ; preds = %162, %157, %154
  %167 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %168 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %169 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %170 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @efx_sync_rx_buffer(%struct.efx_nic* %167, %struct.efx_rx_buffer* %168, i32 %171)
  %173 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %174 = call i32 @efx_rx_buf_va(%struct.efx_rx_buffer* %173)
  %175 = call i32 @prefetch(i32 %174)
  %176 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %177 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %176, i32 0, i32 1
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %180 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = sext i32 %181 to i64
  %183 = add nsw i64 %182, %178
  %184 = trunc i64 %183 to i32
  store i32 %184, i32* %180, align 4
  %185 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %186 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %185, i32 0, i32 1
  %187 = load i64, i64* %186, align 8
  %188 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %189 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = zext i32 %190 to i64
  %192 = sub nsw i64 %191, %187
  %193 = trunc i64 %192 to i32
  store i32 %193, i32* %189, align 4
  %194 = load i32, i32* %8, align 4
  %195 = icmp ugt i32 %194, 1
  br i1 %195, label %196, label %231

196:                                              ; preds = %166
  %197 = load i32, i32* %8, align 4
  %198 = sub i32 %197, 1
  store i32 %198, i32* %14, align 4
  br label %199

199:                                              ; preds = %207, %196
  %200 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %201 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %202 = call %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.efx_rx_queue* %200, %struct.efx_rx_buffer* %201)
  store %struct.efx_rx_buffer* %202, %struct.efx_rx_buffer** %13, align 8
  %203 = load i32, i32* %14, align 4
  %204 = add i32 %203, -1
  store i32 %204, i32* %14, align 4
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %199
  br label %214

207:                                              ; preds = %199
  %208 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %209 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %210 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %211 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = call i32 @efx_sync_rx_buffer(%struct.efx_nic* %208, %struct.efx_rx_buffer* %209, i32 %212)
  br label %199

214:                                              ; preds = %206
  %215 = load i32, i32* %9, align 4
  %216 = load i32, i32* %8, align 4
  %217 = sub i32 %216, 1
  %218 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %219 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = mul i32 %217, %220
  %222 = sub i32 %215, %221
  %223 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %224 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  %225 = load %struct.efx_nic*, %struct.efx_nic** %11, align 8
  %226 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %227 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %228 = getelementptr inbounds %struct.efx_rx_buffer, %struct.efx_rx_buffer* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @efx_sync_rx_buffer(%struct.efx_nic* %225, %struct.efx_rx_buffer* %226, i32 %229)
  br label %231

231:                                              ; preds = %214, %166
  %232 = load %struct.efx_rx_queue*, %struct.efx_rx_queue** %6, align 8
  %233 = load i32, i32* %7, align 4
  %234 = call %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue* %232, i32 %233)
  store %struct.efx_rx_buffer* %234, %struct.efx_rx_buffer** %13, align 8
  %235 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %236 = load %struct.efx_rx_buffer*, %struct.efx_rx_buffer** %13, align 8
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @efx_recycle_rx_pages(%struct.efx_channel* %235, %struct.efx_rx_buffer* %236, i32 %237)
  %239 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %240 = call i32 @efx_rx_flush_packet(%struct.efx_channel* %239)
  %241 = load i32, i32* %8, align 4
  %242 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %243 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %242, i32 0, i32 0
  store i32 %241, i32* %243, align 4
  %244 = load i32, i32* %7, align 4
  %245 = load %struct.efx_channel*, %struct.efx_channel** %12, align 8
  %246 = getelementptr inbounds %struct.efx_channel, %struct.efx_channel* %245, i32 0, i32 1
  store i32 %244, i32* %246, align 4
  br label %247

247:                                              ; preds = %231, %147
  ret void
}

declare dso_local %struct.efx_channel* @efx_rx_queue_channel(%struct.efx_rx_queue*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buffer(%struct.efx_rx_queue*, i32) #1

declare dso_local i32 @efx_rx_packet__check_len(%struct.efx_rx_queue*, %struct.efx_rx_buffer*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @netif_vdbg(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @efx_rx_queue_index(%struct.efx_rx_queue*) #1

declare dso_local i32 @efx_rx_flush_packet(%struct.efx_channel*) #1

declare dso_local i32 @efx_discard_rx_packet(%struct.efx_channel*, %struct.efx_rx_buffer*, i32) #1

declare dso_local i32 @efx_sync_rx_buffer(%struct.efx_nic*, %struct.efx_rx_buffer*, i32) #1

declare dso_local i32 @prefetch(i32) #1

declare dso_local i32 @efx_rx_buf_va(%struct.efx_rx_buffer*) #1

declare dso_local %struct.efx_rx_buffer* @efx_rx_buf_next(%struct.efx_rx_queue*, %struct.efx_rx_buffer*) #1

declare dso_local i32 @efx_recycle_rx_pages(%struct.efx_channel*, %struct.efx_rx_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
