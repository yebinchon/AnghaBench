; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_page_to_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_page_to_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.virtnet_info = type { i32, i64 }
%struct.receive_queue = type { i32 }
%struct.page = type { i64 }
%struct.virtio_net_hdr_mrg_rxbuf = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GOOD_COPY_LEN = common dso_local global i32 0, align 4
@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s: too much data\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.virtnet_info*, %struct.receive_queue*, %struct.page*, i32, i32, i32, i32)* @page_to_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @page_to_skb(%struct.virtnet_info* %0, %struct.receive_queue* %1, %struct.page* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.virtnet_info*, align 8
  %10 = alloca %struct.receive_queue*, align 8
  %11 = alloca %struct.page*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca %struct.virtio_net_hdr_mrg_rxbuf*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %9, align 8
  store %struct.receive_queue* %1, %struct.receive_queue** %10, align 8
  store %struct.page* %2, %struct.page** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %23 = load %struct.page*, %struct.page** %11, align 8
  %24 = call i8* @page_address(%struct.page* %23)
  %25 = load i32, i32* %12, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  store i8* %27, i8** %21, align 8
  %28 = load %struct.receive_queue*, %struct.receive_queue** %10, align 8
  %29 = getelementptr inbounds %struct.receive_queue, %struct.receive_queue* %28, i32 0, i32 0
  %30 = load i32, i32* @GOOD_COPY_LEN, align 4
  %31 = call %struct.sk_buff* @napi_alloc_skb(i32* %29, i32 %30)
  store %struct.sk_buff* %31, %struct.sk_buff** %16, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %33 = icmp ne %struct.sk_buff* %32, null
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i64 @unlikely(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %7
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %167

39:                                               ; preds = %7
  %40 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %41 = call %struct.virtio_net_hdr_mrg_rxbuf* @skb_vnet_hdr(%struct.sk_buff* %40)
  store %struct.virtio_net_hdr_mrg_rxbuf* %41, %struct.virtio_net_hdr_mrg_rxbuf** %17, align 8
  %42 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %43 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %19, align 4
  %45 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %46 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  store i32 4, i32* %20, align 4
  br label %51

50:                                               ; preds = %39
  store i32 4, i32* %20, align 4
  br label %51

51:                                               ; preds = %50, %49
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %17, align 8
  %56 = load i8*, i8** %21, align 8
  %57 = load i32, i32* %19, align 4
  %58 = call i32 @memcpy(%struct.virtio_net_hdr_mrg_rxbuf* %55, i8* %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %51
  %60 = load i32, i32* %19, align 4
  %61 = load i32, i32* %13, align 4
  %62 = sub i32 %61, %60
  store i32 %62, i32* %13, align 4
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %12, align 4
  %65 = add i32 %64, %63
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %20, align 4
  %67 = load i8*, i8** %21, align 8
  %68 = zext i32 %66 to i64
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  store i8* %69, i8** %21, align 8
  %70 = load i32, i32* %13, align 4
  store i32 %70, i32* %18, align 4
  %71 = load i32, i32* %18, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %73 = call i32 @skb_tailroom(%struct.sk_buff* %72)
  %74 = icmp ugt i32 %71, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %59
  %76 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %77 = call i32 @skb_tailroom(%struct.sk_buff* %76)
  store i32 %77, i32* %18, align 4
  br label %78

78:                                               ; preds = %75, %59
  %79 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %80 = load i8*, i8** %21, align 8
  %81 = load i32, i32* %18, align 4
  %82 = call i32 @skb_put_data(%struct.sk_buff* %79, i8* %80, i32 %81)
  %83 = load i32, i32* %18, align 4
  %84 = load i32, i32* %13, align 4
  %85 = sub i32 %84, %83
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %18, align 4
  %87 = load i32, i32* %12, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %12, align 4
  %89 = load %struct.virtnet_info*, %struct.virtnet_info** %9, align 8
  %90 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %108

93:                                               ; preds = %78
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %93
  %97 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %98 = load %struct.page*, %struct.page** %11, align 8
  %99 = load i32, i32* %12, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %14, align 4
  %102 = call i32 @skb_add_rx_frag(%struct.sk_buff* %97, i32 0, %struct.page* %98, i32 %99, i32 %100, i32 %101)
  br label %106

103:                                              ; preds = %93
  %104 = load %struct.page*, %struct.page** %11, align 8
  %105 = call i32 @put_page(%struct.page* %104)
  br label %106

106:                                              ; preds = %103, %96
  %107 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %107, %struct.sk_buff** %8, align 8
  br label %167

108:                                              ; preds = %78
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %111 = load i32, i32* @PAGE_SIZE, align 4
  %112 = mul i32 %110, %111
  %113 = icmp ugt i32 %109, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %126

117:                                              ; preds = %108
  %118 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 0
  %120 = load %struct.TYPE_3__*, %struct.TYPE_3__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @net_dbg_ratelimited(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %122)
  %124 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %125 = call i32 @dev_kfree_skb(%struct.sk_buff* %124)
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  br label %167

126:                                              ; preds = %108
  %127 = load i32, i32* %12, align 4
  %128 = load i32, i32* @PAGE_SIZE, align 4
  %129 = icmp uge i32 %127, %128
  %130 = zext i1 %129 to i32
  %131 = call i32 @BUG_ON(i32 %130)
  br label %132

132:                                              ; preds = %135, %126
  %133 = load i32, i32* %13, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %158

135:                                              ; preds = %132
  %136 = load i32, i32* @PAGE_SIZE, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sub i32 %136, %137
  %139 = load i32, i32* %13, align 4
  %140 = call i32 @min(i32 %138, i32 %139)
  store i32 %140, i32* %22, align 4
  %141 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %142 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %143 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %142)
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.page*, %struct.page** %11, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %22, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @skb_add_rx_frag(%struct.sk_buff* %141, i32 %145, %struct.page* %146, i32 %147, i32 %148, i32 %149)
  %151 = load i32, i32* %22, align 4
  %152 = load i32, i32* %13, align 4
  %153 = sub i32 %152, %151
  store i32 %153, i32* %13, align 4
  %154 = load %struct.page*, %struct.page** %11, align 8
  %155 = getelementptr inbounds %struct.page, %struct.page* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = inttoptr i64 %156 to %struct.page*
  store %struct.page* %157, %struct.page** %11, align 8
  store i32 0, i32* %12, align 4
  br label %132

158:                                              ; preds = %132
  %159 = load %struct.page*, %struct.page** %11, align 8
  %160 = icmp ne %struct.page* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %158
  %162 = load %struct.receive_queue*, %struct.receive_queue** %10, align 8
  %163 = load %struct.page*, %struct.page** %11, align 8
  %164 = call i32 @give_pages(%struct.receive_queue* %162, %struct.page* %163)
  br label %165

165:                                              ; preds = %161, %158
  %166 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  store %struct.sk_buff* %166, %struct.sk_buff** %8, align 8
  br label %167

167:                                              ; preds = %165, %117, %106, %38
  %168 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  ret %struct.sk_buff* %168
}

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local %struct.sk_buff* @napi_alloc_skb(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.virtio_net_hdr_mrg_rxbuf* @skb_vnet_hdr(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(%struct.virtio_net_hdr_mrg_rxbuf*, i8*, i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_add_rx_frag(%struct.sk_buff*, i32, %struct.page*, i32, i32, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @net_dbg_ratelimited(i8*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @give_pages(%struct.receive_queue*, %struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
