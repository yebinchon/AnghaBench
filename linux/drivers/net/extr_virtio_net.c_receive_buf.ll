; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_receive_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_receive_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32, i32, i64, i64, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.receive_queue = type { i32, i32 }
%struct.virtnet_rq_stats = type { i32 }
%struct.sk_buff = type { i32, i32, i32, i32 }
%struct.virtio_net_hdr_mrg_rxbuf = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@ETH_HLEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"%s: short packet %i\0A\00", align 1
@VIRTIO_NET_HDR_F_DATA_VALID = common dso_local global i32 0, align 4
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: bad gso: type: %u, size: %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"Receiving skb proto 0x%04x len %i type %i\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtnet_info*, %struct.receive_queue*, i8*, i32, i8**, i32*, %struct.virtnet_rq_stats*)* @receive_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @receive_buf(%struct.virtnet_info* %0, %struct.receive_queue* %1, i8* %2, i32 %3, i8** %4, i32* %5, %struct.virtnet_rq_stats* %6) #0 {
  %8 = alloca %struct.virtnet_info*, align 8
  %9 = alloca %struct.receive_queue*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.virtnet_rq_stats*, align 8
  %15 = alloca %struct.net_device*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.virtio_net_hdr_mrg_rxbuf*, align 8
  store %struct.virtnet_info* %0, %struct.virtnet_info** %8, align 8
  store %struct.receive_queue* %1, %struct.receive_queue** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store %struct.virtnet_rq_stats* %6, %struct.virtnet_rq_stats** %14, align 8
  %18 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  %19 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %18, i32 0, i32 4
  %20 = load %struct.net_device*, %struct.net_device** %19, align 8
  store %struct.net_device* %20, %struct.net_device** %15, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  %23 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @ETH_HLEN, align 4
  %26 = add i32 %24, %25
  %27 = icmp ult i32 %21, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %65

31:                                               ; preds = %7
  %32 = load %struct.net_device*, %struct.net_device** %15, align 8
  %33 = getelementptr inbounds %struct.net_device, %struct.net_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load %struct.net_device*, %struct.net_device** %15, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  %42 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  %43 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %31
  %47 = load i8*, i8** %10, align 8
  %48 = call i32 @virt_to_head_page(i8* %47)
  %49 = call i32 @put_page(i32 %48)
  br label %64

50:                                               ; preds = %31
  %51 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  %52 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load %struct.receive_queue*, %struct.receive_queue** %9, align 8
  %57 = load i8*, i8** %10, align 8
  %58 = call i32 @give_pages(%struct.receive_queue* %56, i8* %57)
  br label %63

59:                                               ; preds = %50
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @virt_to_head_page(i8* %60)
  %62 = call i32 @put_page(i32 %61)
  br label %63

63:                                               ; preds = %59, %55
  br label %64

64:                                               ; preds = %63, %46
  br label %184

65:                                               ; preds = %7
  %66 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  %67 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load %struct.net_device*, %struct.net_device** %15, align 8
  %72 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  %73 = load %struct.receive_queue*, %struct.receive_queue** %9, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = load i8**, i8*** %12, align 8
  %76 = load i32, i32* %11, align 4
  %77 = load i32*, i32** %13, align 8
  %78 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %14, align 8
  %79 = call %struct.sk_buff* @receive_mergeable(%struct.net_device* %71, %struct.virtnet_info* %72, %struct.receive_queue* %73, i8* %74, i8** %75, i32 %76, i32* %77, %struct.virtnet_rq_stats* %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %16, align 8
  br label %104

80:                                               ; preds = %65
  %81 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  %82 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %15, align 8
  %87 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  %88 = load %struct.receive_queue*, %struct.receive_queue** %9, align 8
  %89 = load i8*, i8** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %14, align 8
  %92 = call %struct.sk_buff* @receive_big(%struct.net_device* %86, %struct.virtnet_info* %87, %struct.receive_queue* %88, i8* %89, i32 %90, %struct.virtnet_rq_stats* %91)
  store %struct.sk_buff* %92, %struct.sk_buff** %16, align 8
  br label %103

93:                                               ; preds = %80
  %94 = load %struct.net_device*, %struct.net_device** %15, align 8
  %95 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  %96 = load %struct.receive_queue*, %struct.receive_queue** %9, align 8
  %97 = load i8*, i8** %10, align 8
  %98 = load i8**, i8*** %12, align 8
  %99 = load i32, i32* %11, align 4
  %100 = load i32*, i32** %13, align 8
  %101 = load %struct.virtnet_rq_stats*, %struct.virtnet_rq_stats** %14, align 8
  %102 = call %struct.sk_buff* @receive_small(%struct.net_device* %94, %struct.virtnet_info* %95, %struct.receive_queue* %96, i8* %97, i8** %98, i32 %99, i32* %100, %struct.virtnet_rq_stats* %101)
  store %struct.sk_buff* %102, %struct.sk_buff** %16, align 8
  br label %103

103:                                              ; preds = %93, %85
  br label %104

104:                                              ; preds = %103, %70
  %105 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %106 = icmp ne %struct.sk_buff* %105, null
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = call i64 @unlikely(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %184

112:                                              ; preds = %104
  %113 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %114 = call %struct.virtio_net_hdr_mrg_rxbuf* @skb_vnet_hdr(%struct.sk_buff* %113)
  store %struct.virtio_net_hdr_mrg_rxbuf* %114, %struct.virtio_net_hdr_mrg_rxbuf** %17, align 8
  %115 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %17, align 8
  %116 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, %struct.virtio_net_hdr_mrg_rxbuf* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @VIRTIO_NET_HDR_F_DATA_VALID, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %112
  %123 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %124 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %125 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  br label %126

126:                                              ; preds = %122, %112
  %127 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %128 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %17, align 8
  %129 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, %struct.virtio_net_hdr_mrg_rxbuf* %128, i32 0, i32 0
  %130 = load %struct.virtnet_info*, %struct.virtnet_info** %8, align 8
  %131 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @virtio_is_little_endian(i32 %132)
  %134 = call i64 @virtio_net_hdr_to_skb(%struct.sk_buff* %127, %struct.TYPE_4__* %129, i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %149

136:                                              ; preds = %126
  %137 = load %struct.net_device*, %struct.net_device** %15, align 8
  %138 = getelementptr inbounds %struct.net_device, %struct.net_device* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %17, align 8
  %141 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, %struct.virtio_net_hdr_mrg_rxbuf* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %17, align 8
  %145 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, %struct.virtio_net_hdr_mrg_rxbuf* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @net_warn_ratelimited(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %139, i32 %143, i32 %147)
  br label %176

149:                                              ; preds = %126
  %150 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %151 = load %struct.receive_queue*, %struct.receive_queue** %9, align 8
  %152 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @vq2rxq(i32 %153)
  %155 = call i32 @skb_record_rx_queue(%struct.sk_buff* %150, i32 %154)
  %156 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %157 = load %struct.net_device*, %struct.net_device** %15, align 8
  %158 = call i32 @eth_type_trans(%struct.sk_buff* %156, %struct.net_device* %157)
  %159 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %160 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %159, i32 0, i32 2
  store i32 %158, i32* %160, align 4
  %161 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %162 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %161, i32 0, i32 2
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @ntohs(i32 %163)
  %165 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %166 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %165, i32 0, i32 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %169 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %164, i32 %167, i32 %170)
  %172 = load %struct.receive_queue*, %struct.receive_queue** %9, align 8
  %173 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %172, i32 0, i32 0
  %174 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %175 = call i32 @napi_gro_receive(i32* %173, %struct.sk_buff* %174)
  br label %184

176:                                              ; preds = %136
  %177 = load %struct.net_device*, %struct.net_device** %15, align 8
  %178 = getelementptr inbounds %struct.net_device, %struct.net_device* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 4
  %182 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %183 = call i32 @dev_kfree_skb(%struct.sk_buff* %182)
  br label %184

184:                                              ; preds = %176, %149, %111, %64
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @virt_to_head_page(i8*) #1

declare dso_local i32 @give_pages(%struct.receive_queue*, i8*) #1

declare dso_local %struct.sk_buff* @receive_mergeable(%struct.net_device*, %struct.virtnet_info*, %struct.receive_queue*, i8*, i8**, i32, i32*, %struct.virtnet_rq_stats*) #1

declare dso_local %struct.sk_buff* @receive_big(%struct.net_device*, %struct.virtnet_info*, %struct.receive_queue*, i8*, i32, %struct.virtnet_rq_stats*) #1

declare dso_local %struct.sk_buff* @receive_small(%struct.net_device*, %struct.virtnet_info*, %struct.receive_queue*, i8*, i8**, i32, i32*, %struct.virtnet_rq_stats*) #1

declare dso_local %struct.virtio_net_hdr_mrg_rxbuf* @skb_vnet_hdr(%struct.sk_buff*) #1

declare dso_local i64 @virtio_net_hdr_to_skb(%struct.sk_buff*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @virtio_is_little_endian(i32) #1

declare dso_local i32 @net_warn_ratelimited(i8*, i32, i32, i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @vq2rxq(i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
