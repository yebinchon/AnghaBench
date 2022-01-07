; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rx_compl_process_gro.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_rx_compl_process_gro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_rx_obj = type { %struct.be_adapter* }
%struct.be_adapter = type { %struct.TYPE_3__*, %struct.be_rx_obj* }
%struct.TYPE_3__ = type { i32 }
%struct.napi_struct = type { i32 }
%struct.be_rx_compl_info = type { i64, i64, i32, i64, i32, i32 }
%struct.be_rx_page_info = type { i64, i32 }
%struct.sk_buff = type { i64, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32* }

@rx_frag_size = common dso_local global i64 0, align 8
@MAX_SKB_FRAGS = common dso_local global i64 0, align 8
@CHECKSUM_UNNECESSARY = common dso_local global i32 0, align 4
@NETIF_F_RXHASH = common dso_local global i32 0, align 4
@PKT_HASH_TYPE_L3 = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_rx_obj*, %struct.napi_struct*, %struct.be_rx_compl_info*)* @be_rx_compl_process_gro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_rx_compl_process_gro(%struct.be_rx_obj* %0, %struct.napi_struct* %1, %struct.be_rx_compl_info* %2) #0 {
  %4 = alloca %struct.be_rx_obj*, align 8
  %5 = alloca %struct.napi_struct*, align 8
  %6 = alloca %struct.be_rx_compl_info*, align 8
  %7 = alloca %struct.be_adapter*, align 8
  %8 = alloca %struct.be_rx_page_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.be_rx_obj* %0, %struct.be_rx_obj** %4, align 8
  store %struct.napi_struct* %1, %struct.napi_struct** %5, align 8
  store %struct.be_rx_compl_info* %2, %struct.be_rx_compl_info** %6, align 8
  %14 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %15 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %14, i32 0, i32 0
  %16 = load %struct.be_adapter*, %struct.be_adapter** %15, align 8
  store %struct.be_adapter* %16, %struct.be_adapter** %7, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  %17 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %18 = call %struct.sk_buff* @napi_get_frags(%struct.napi_struct* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %9, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %23 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %24 = call i32 @be_rx_compl_discard(%struct.be_rx_obj* %22, %struct.be_rx_compl_info* %23)
  br label %175

25:                                               ; preds = %3
  %26 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %27 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  store i64 0, i64* %12, align 8
  store i64 -1, i64* %13, align 8
  br label %29

29:                                               ; preds = %100, %25
  %30 = load i64, i64* %12, align 8
  %31 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %32 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %103

35:                                               ; preds = %29
  %36 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %37 = call %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj* %36)
  store %struct.be_rx_page_info* %37, %struct.be_rx_page_info** %8, align 8
  %38 = load i64, i64* %10, align 8
  %39 = load i64, i64* @rx_frag_size, align 8
  %40 = call i64 @min(i64 %38, i64 %39)
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %12, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %35
  %44 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %45 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %74

48:                                               ; preds = %43, %35
  %49 = load i64, i64* %13, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %13, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %52 = load i64, i64* %13, align 8
  %53 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %54 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @skb_frag_set_page(%struct.sk_buff* %51, i64 %52, i32 %55)
  %57 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %58 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %57)
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* %13, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %64 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @skb_frag_off_set(i32* %62, i64 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %68 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %67)
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = load i64, i64* %13, align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = call i32 @skb_frag_size_set(i32* %72, i32 0)
  br label %79

74:                                               ; preds = %43
  %75 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %76 = getelementptr inbounds %struct.be_rx_page_info, %struct.be_rx_page_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @put_page(i32 %77)
  br label %79

79:                                               ; preds = %74, %48
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %80)
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* %13, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  %86 = load i64, i64* %11, align 8
  %87 = call i32 @skb_frag_size_add(i32* %85, i64 %86)
  %88 = load i64, i64* @rx_frag_size, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %90 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %88
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 8
  %95 = load i64, i64* %11, align 8
  %96 = load i64, i64* %10, align 8
  %97 = sub nsw i64 %96, %95
  store i64 %97, i64* %10, align 8
  %98 = load %struct.be_rx_page_info*, %struct.be_rx_page_info** %8, align 8
  %99 = call i32 @memset(%struct.be_rx_page_info* %98, i32 0, i32 16)
  br label %100

100:                                              ; preds = %79
  %101 = load i64, i64* %12, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %12, align 8
  br label %29

103:                                              ; preds = %29
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* @MAX_SKB_FRAGS, align 8
  %106 = icmp sgt i64 %104, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @BUG_ON(i32 %107)
  %109 = load i64, i64* %13, align 8
  %110 = add nsw i64 %109, 1
  %111 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %112 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %111)
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i64 %110, i64* %113, align 8
  %114 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %115 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %118 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %120 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %123 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %122, i32 0, i32 1
  store i64 %121, i64* %123, align 8
  %124 = load i32, i32* @CHECKSUM_UNNECESSARY, align 4
  %125 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %126 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %128 = load %struct.be_rx_obj*, %struct.be_rx_obj** %4, align 8
  %129 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %130 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %129, i32 0, i32 1
  %131 = load %struct.be_rx_obj*, %struct.be_rx_obj** %130, align 8
  %132 = getelementptr inbounds %struct.be_rx_obj, %struct.be_rx_obj* %131, i64 0
  %133 = ptrtoint %struct.be_rx_obj* %128 to i64
  %134 = ptrtoint %struct.be_rx_obj* %132 to i64
  %135 = sub i64 %133, %134
  %136 = sdiv exact i64 %135, 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @skb_record_rx_queue(%struct.sk_buff* %127, i32 %137)
  %139 = load %struct.be_adapter*, %struct.be_adapter** %7, align 8
  %140 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %139, i32 0, i32 0
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @NETIF_F_RXHASH, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %154

147:                                              ; preds = %103
  %148 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %149 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %150 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @PKT_HASH_TYPE_L3, align 4
  %153 = call i32 @skb_set_hash(%struct.sk_buff* %148, i32 %151, i32 %152)
  br label %154

154:                                              ; preds = %147, %103
  %155 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %156 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %155, i32 0, i32 4
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 2
  store i32 %157, i32* %159, align 8
  %160 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %161 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %154
  %165 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %166 = load i32, i32* @ETH_P_8021Q, align 4
  %167 = call i32 @htons(i32 %166)
  %168 = load %struct.be_rx_compl_info*, %struct.be_rx_compl_info** %6, align 8
  %169 = getelementptr inbounds %struct.be_rx_compl_info, %struct.be_rx_compl_info* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %165, i32 %167, i32 %170)
  br label %172

172:                                              ; preds = %164, %154
  %173 = load %struct.napi_struct*, %struct.napi_struct** %5, align 8
  %174 = call i32 @napi_gro_frags(%struct.napi_struct* %173)
  br label %175

175:                                              ; preds = %172, %21
  ret void
}

declare dso_local %struct.sk_buff* @napi_get_frags(%struct.napi_struct*) #1

declare dso_local i32 @be_rx_compl_discard(%struct.be_rx_obj*, %struct.be_rx_compl_info*) #1

declare dso_local %struct.be_rx_page_info* @get_rx_page_info(%struct.be_rx_obj*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @skb_frag_set_page(%struct.sk_buff*, i64, i32) #1

declare dso_local i32 @skb_frag_off_set(i32*, i64) #1

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @skb_frag_size_set(i32*, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @skb_frag_size_add(i32*, i64) #1

declare dso_local i32 @memset(%struct.be_rx_page_info*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_record_rx_queue(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_set_hash(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_frags(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
