; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_snd_pkt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_nicvf_main.c_nicvf_snd_pkt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cqe_send_t = type { i64, i64, i64 }
%struct.sk_buff = type { i64 }
%struct.page = type { i32 }
%struct.nicvf = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.sk_buff* }
%struct.TYPE_4__ = type { %struct.snd_queue* }
%struct.snd_queue = type { i8**, i8**, i64 }
%struct.sq_hdr_subdesc = type { i64, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }

@SQ_DESC_TYPE_HEADER = common dso_local global i64 0, align 8
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.cqe_send_t*, i32, i32*, i32*, i32*)* @nicvf_snd_pkt_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nicvf_snd_pkt_handler(%struct.net_device* %0, %struct.cqe_send_t* %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.cqe_send_t*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.nicvf*, align 8
  %16 = alloca %struct.snd_queue*, align 8
  %17 = alloca %struct.sq_hdr_subdesc*, align 8
  %18 = alloca %struct.sq_hdr_subdesc*, align 8
  store %struct.net_device* %0, %struct.net_device** %7, align 8
  store %struct.cqe_send_t* %1, %struct.cqe_send_t** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %13, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call %struct.nicvf* @netdev_priv(%struct.net_device* %19)
  store %struct.nicvf* %20, %struct.nicvf** %15, align 8
  %21 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %22 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %21, i32 0, i32 2
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load %struct.snd_queue*, %struct.snd_queue** %24, align 8
  %26 = load %struct.cqe_send_t*, %struct.cqe_send_t** %8, align 8
  %27 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %25, i64 %28
  store %struct.snd_queue* %29, %struct.snd_queue** %16, align 8
  %30 = load %struct.snd_queue*, %struct.snd_queue** %16, align 8
  %31 = load %struct.cqe_send_t*, %struct.cqe_send_t** %8, align 8
  %32 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = call i64 @GET_SQ_DESC(%struct.snd_queue* %30, i64 %33)
  %35 = inttoptr i64 %34 to %struct.sq_hdr_subdesc*
  store %struct.sq_hdr_subdesc* %35, %struct.sq_hdr_subdesc** %17, align 8
  %36 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %17, align 8
  %37 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @SQ_DESC_TYPE_HEADER, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %6
  br label %230

42:                                               ; preds = %6
  %43 = load %struct.cqe_send_t*, %struct.cqe_send_t** %8, align 8
  %44 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %49 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = load %struct.cqe_send_t*, %struct.cqe_send_t** %8, align 8
  %52 = call i32 @nicvf_check_cqe_tx_errs(%struct.TYPE_6__* %50, %struct.cqe_send_t* %51)
  br label %53

53:                                               ; preds = %47, %42
  %54 = load %struct.snd_queue*, %struct.snd_queue** %16, align 8
  %55 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %107

58:                                               ; preds = %53
  %59 = load %struct.snd_queue*, %struct.snd_queue** %16, align 8
  %60 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = load %struct.cqe_send_t*, %struct.cqe_send_t** %8, align 8
  %63 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8*, i8** %61, i64 %64
  %66 = load i8*, i8** %65, align 8
  %67 = bitcast i8* %66 to %struct.page*
  store %struct.page* %67, %struct.page** %14, align 8
  %68 = load %struct.page*, %struct.page** %14, align 8
  %69 = icmp ne %struct.page* %68, null
  br i1 %69, label %70, label %84

70:                                               ; preds = %58
  %71 = load %struct.page*, %struct.page** %14, align 8
  %72 = call i32 @page_ref_count(%struct.page* %71)
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %74, label %84

74:                                               ; preds = %70
  %75 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %76 = load %struct.snd_queue*, %struct.snd_queue** %16, align 8
  %77 = load %struct.cqe_send_t*, %struct.cqe_send_t** %8, align 8
  %78 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %17, align 8
  %81 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @nicvf_unmap_sndq_buffers(%struct.nicvf* %75, %struct.snd_queue* %76, i64 %79, i64 %82)
  br label %84

84:                                               ; preds = %74, %70, %58
  %85 = load %struct.page*, %struct.page** %14, align 8
  %86 = icmp ne %struct.page* %85, null
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = load %struct.page*, %struct.page** %14, align 8
  %89 = call i32 @put_page(%struct.page* %88)
  br label %90

90:                                               ; preds = %87, %84
  %91 = load %struct.snd_queue*, %struct.snd_queue** %16, align 8
  %92 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %91, i32 0, i32 1
  %93 = load i8**, i8*** %92, align 8
  %94 = load %struct.cqe_send_t*, %struct.cqe_send_t** %8, align 8
  %95 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i8*, i8** %93, i64 %96
  store i8* null, i8** %97, align 8
  %98 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %17, align 8
  %99 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %98, i32 0, i32 2
  %100 = load i64, i64* %99, align 8
  %101 = add nsw i64 %100, 1
  %102 = load i32*, i32** %10, align 8
  %103 = load i32, i32* %102, align 4
  %104 = sext i32 %103 to i64
  %105 = add nsw i64 %104, %101
  %106 = trunc i64 %105 to i32
  store i32 %106, i32* %102, align 4
  br label %230

107:                                              ; preds = %53
  %108 = load %struct.snd_queue*, %struct.snd_queue** %16, align 8
  %109 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %108, i32 0, i32 0
  %110 = load i8**, i8*** %109, align 8
  %111 = load %struct.cqe_send_t*, %struct.cqe_send_t** %8, align 8
  %112 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = bitcast i8* %115 to %struct.sk_buff*
  store %struct.sk_buff* %116, %struct.sk_buff** %13, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %118 = icmp ne %struct.sk_buff* %117, null
  br i1 %118, label %119, label %214

119:                                              ; preds = %107
  %120 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %17, align 8
  %121 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %149

124:                                              ; preds = %119
  %125 = load %struct.snd_queue*, %struct.snd_queue** %16, align 8
  %126 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %17, align 8
  %127 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = call i64 @GET_SQ_DESC(%struct.snd_queue* %125, i64 %128)
  %130 = inttoptr i64 %129 to %struct.sq_hdr_subdesc*
  store %struct.sq_hdr_subdesc* %130, %struct.sq_hdr_subdesc** %18, align 8
  %131 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %132 = load %struct.snd_queue*, %struct.snd_queue** %16, align 8
  %133 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %17, align 8
  %134 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %18, align 8
  %137 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %136, i32 0, i32 2
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @nicvf_unmap_sndq_buffers(%struct.nicvf* %131, %struct.snd_queue* %132, i64 %135, i64 %138)
  %140 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %18, align 8
  %141 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %140, i32 0, i32 2
  %142 = load i64, i64* %141, align 8
  %143 = add nsw i64 %142, 1
  %144 = load i32*, i32** %10, align 8
  %145 = load i32, i32* %144, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %146, %143
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %144, align 4
  br label %159

149:                                              ; preds = %119
  %150 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %151 = load %struct.snd_queue*, %struct.snd_queue** %16, align 8
  %152 = load %struct.cqe_send_t*, %struct.cqe_send_t** %8, align 8
  %153 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %17, align 8
  %156 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %155, i32 0, i32 2
  %157 = load i64, i64* %156, align 8
  %158 = call i32 @nicvf_unmap_sndq_buffers(%struct.nicvf* %150, %struct.snd_queue* %151, i64 %154, i64 %157)
  br label %159

159:                                              ; preds = %149, %124
  %160 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %17, align 8
  %161 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %160, i32 0, i32 2
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %162, 1
  %164 = load i32*, i32** %10, align 8
  %165 = load i32, i32* %164, align 4
  %166 = sext i32 %165 to i64
  %167 = add nsw i64 %166, %163
  %168 = trunc i64 %167 to i32
  store i32 %168, i32* %164, align 4
  %169 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %170 = call i32 @prefetch(%struct.sk_buff* %169)
  %171 = load i32*, i32** %11, align 8
  %172 = load i32, i32* %171, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %171, align 4
  %174 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %175 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = load i32*, i32** %12, align 8
  %178 = load i32, i32* %177, align 4
  %179 = zext i32 %178 to i64
  %180 = add nsw i64 %179, %176
  %181 = trunc i64 %180 to i32
  store i32 %181, i32* %177, align 4
  %182 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %183 = call %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff* %182)
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %187 = and i32 %185, %186
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %202

189:                                              ; preds = %159
  %190 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %191 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %190, i32 0, i32 1
  %192 = load %struct.TYPE_6__*, %struct.TYPE_6__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load %struct.sk_buff*, %struct.sk_buff** %193, align 8
  %195 = icmp ne %struct.sk_buff* %194, null
  br i1 %195, label %202, label %196

196:                                              ; preds = %189
  %197 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %198 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %199 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %198, i32 0, i32 1
  %200 = load %struct.TYPE_6__*, %struct.TYPE_6__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 0
  store %struct.sk_buff* %197, %struct.sk_buff** %201, align 8
  br label %206

202:                                              ; preds = %189, %159
  %203 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %204 = load i32, i32* %9, align 4
  %205 = call i32 @napi_consume_skb(%struct.sk_buff* %203, i32 %204)
  br label %206

206:                                              ; preds = %202, %196
  %207 = load %struct.snd_queue*, %struct.snd_queue** %16, align 8
  %208 = getelementptr inbounds %struct.snd_queue, %struct.snd_queue* %207, i32 0, i32 0
  %209 = load i8**, i8*** %208, align 8
  %210 = load %struct.cqe_send_t*, %struct.cqe_send_t** %8, align 8
  %211 = getelementptr inbounds %struct.cqe_send_t, %struct.cqe_send_t* %210, i32 0, i32 1
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds i8*, i8** %209, i64 %212
  store i8* null, i8** %213, align 8
  br label %230

214:                                              ; preds = %107
  %215 = load %struct.nicvf*, %struct.nicvf** %15, align 8
  %216 = getelementptr inbounds %struct.nicvf, %struct.nicvf* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %229, label %219

219:                                              ; preds = %214
  %220 = load %struct.sq_hdr_subdesc*, %struct.sq_hdr_subdesc** %17, align 8
  %221 = getelementptr inbounds %struct.sq_hdr_subdesc, %struct.sq_hdr_subdesc* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = add nsw i64 %222, 1
  %224 = load i32*, i32** %10, align 8
  %225 = load i32, i32* %224, align 4
  %226 = sext i32 %225 to i64
  %227 = add nsw i64 %226, %223
  %228 = trunc i64 %227 to i32
  store i32 %228, i32* %224, align 4
  br label %229

229:                                              ; preds = %219, %214
  br label %230

230:                                              ; preds = %41, %90, %229, %206
  ret void
}

declare dso_local %struct.nicvf* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @GET_SQ_DESC(%struct.snd_queue*, i64) #1

declare dso_local i32 @nicvf_check_cqe_tx_errs(%struct.TYPE_6__*, %struct.cqe_send_t*) #1

declare dso_local i32 @page_ref_count(%struct.page*) #1

declare dso_local i32 @nicvf_unmap_sndq_buffers(%struct.nicvf*, %struct.snd_queue*, i64, i64) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @prefetch(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_5__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @napi_consume_skb(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
