; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_decrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_decrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, %struct.net_device*, i64 }
%struct.net_device = type { i32 }
%struct.macsec_rx_sa = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.macsec_secy = type { i32 }
%struct.scatterlist = type { i32 }
%struct.aead_request = type { i32 }
%struct.macsec_eth_header = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.aead_request*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MACSEC_TCI_E = common dso_local global i32 0, align 4
@macsec_decrypt_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*, %struct.macsec_rx_sa*, i32, %struct.macsec_secy*)* @macsec_decrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @macsec_decrypt(%struct.sk_buff* %0, %struct.net_device* %1, %struct.macsec_rx_sa* %2, i32 %3, %struct.macsec_secy* %4) #0 {
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.macsec_rx_sa*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.macsec_secy*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.scatterlist*, align 8
  %14 = alloca %struct.sk_buff*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.aead_request*, align 8
  %17 = alloca %struct.macsec_eth_header*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.macsec_rx_sa* %2, %struct.macsec_rx_sa** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.macsec_secy* %4, %struct.macsec_secy** %11, align 8
  %20 = load %struct.macsec_secy*, %struct.macsec_secy** %11, align 8
  %21 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %18, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 0, i32* %25, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = load i32, i32* @GFP_ATOMIC, align 4
  %28 = call %struct.sk_buff* @skb_share_check(%struct.sk_buff* %26, i32 %27)
  store %struct.sk_buff* %28, %struct.sk_buff** %7, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = icmp ne %struct.sk_buff* %29, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  %34 = call %struct.sk_buff* @ERR_PTR(i32 %33)
  store %struct.sk_buff* %34, %struct.sk_buff** %6, align 8
  br label %200

35:                                               ; preds = %5
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i32 @skb_cow_data(%struct.sk_buff* %36, i32 0, %struct.sk_buff** %14)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %35
  %44 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %45 = call i32 @kfree_skb(%struct.sk_buff* %44)
  %46 = load i32, i32* %12, align 4
  %47 = call %struct.sk_buff* @ERR_PTR(i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %6, align 8
  br label %200

48:                                               ; preds = %35
  %49 = load %struct.macsec_rx_sa*, %struct.macsec_rx_sa** %9, align 8
  %50 = getelementptr inbounds %struct.macsec_rx_sa, %struct.macsec_rx_sa* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %12, align 4
  %54 = call %struct.aead_request* @macsec_alloc_req(i32 %52, i8** %15, %struct.scatterlist** %13, i32 %53)
  store %struct.aead_request* %54, %struct.aead_request** %16, align 8
  %55 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %56 = icmp ne %struct.aead_request* %55, null
  br i1 %56, label %63, label %57

57:                                               ; preds = %48
  %58 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %59 = call i32 @kfree_skb(%struct.sk_buff* %58)
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  %62 = call %struct.sk_buff* @ERR_PTR(i32 %61)
  store %struct.sk_buff* %62, %struct.sk_buff** %6, align 8
  br label %200

63:                                               ; preds = %48
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to %struct.macsec_eth_header*
  store %struct.macsec_eth_header* %67, %struct.macsec_eth_header** %17, align 8
  %68 = load i8*, i8** %15, align 8
  %69 = load i32, i32* %10, align 4
  %70 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %17, align 8
  %71 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ntohl(i32 %72)
  %74 = call i32 @macsec_fill_iv(i8* %68, i32 %69, i32 %73)
  %75 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @sg_init_table(%struct.scatterlist* %75, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @skb_to_sgvec(%struct.sk_buff* %78, %struct.scatterlist* %79, i32 0, i32 %82)
  store i32 %83, i32* %12, align 4
  %84 = load i32, i32* %12, align 4
  %85 = icmp slt i32 %84, 0
  %86 = zext i1 %85 to i32
  %87 = call i64 @unlikely(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %96

89:                                               ; preds = %63
  %90 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %91 = call i32 @aead_request_free(%struct.aead_request* %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = call i32 @kfree_skb(%struct.sk_buff* %92)
  %94 = load i32, i32* %12, align 4
  %95 = call %struct.sk_buff* @ERR_PTR(i32 %94)
  store %struct.sk_buff* %95, %struct.sk_buff** %6, align 8
  br label %200

96:                                               ; preds = %63
  %97 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %17, align 8
  %98 = getelementptr inbounds %struct.macsec_eth_header, %struct.macsec_eth_header* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @MACSEC_TCI_E, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %138

103:                                              ; preds = %96
  %104 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %105 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %108 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %107)
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @macsec_hdr_len(i32 %110)
  %112 = sub nsw i32 %106, %111
  store i32 %112, i32* %19, align 4
  %113 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %114 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %115 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %116 = load i32, i32* %19, align 4
  %117 = load i8*, i8** %15, align 8
  %118 = call i32 @aead_request_set_crypt(%struct.aead_request* %113, %struct.scatterlist* %114, %struct.scatterlist* %115, i32 %116, i8* %117)
  %119 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %121 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %120)
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @macsec_hdr_len(i32 %123)
  %125 = call i32 @aead_request_set_ad(%struct.aead_request* %119, i32 %124)
  %126 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %127 = load i32, i32* @GFP_ATOMIC, align 4
  %128 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %126, i32 %127)
  store %struct.sk_buff* %128, %struct.sk_buff** %7, align 8
  %129 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %130 = icmp ne %struct.sk_buff* %129, null
  br i1 %130, label %137, label %131

131:                                              ; preds = %103
  %132 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %133 = call i32 @aead_request_free(%struct.aead_request* %132)
  %134 = load i32, i32* @ENOMEM, align 4
  %135 = sub nsw i32 0, %134
  %136 = call %struct.sk_buff* @ERR_PTR(i32 %135)
  store %struct.sk_buff* %136, %struct.sk_buff** %6, align 8
  br label %200

137:                                              ; preds = %103
  br label %152

138:                                              ; preds = %96
  %139 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %140 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %141 = load %struct.scatterlist*, %struct.scatterlist** %13, align 8
  %142 = load i32, i32* %18, align 4
  %143 = load i8*, i8** %15, align 8
  %144 = call i32 @aead_request_set_crypt(%struct.aead_request* %139, %struct.scatterlist* %140, %struct.scatterlist* %141, i32 %142, i8* %143)
  %145 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %146 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* %18, align 4
  %150 = sub nsw i32 %148, %149
  %151 = call i32 @aead_request_set_ad(%struct.aead_request* %145, i32 %150)
  br label %152

152:                                              ; preds = %138, %137
  %153 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %154 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %155 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %154)
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 1
  store %struct.aead_request* %153, %struct.aead_request** %156, align 8
  %157 = load %struct.net_device*, %struct.net_device** %8, align 8
  %158 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %159 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %158, i32 0, i32 1
  store %struct.net_device* %157, %struct.net_device** %159, align 8
  %160 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %161 = load i32, i32* @macsec_decrypt_done, align 4
  %162 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %163 = call i32 @aead_request_set_callback(%struct.aead_request* %160, i32 0, i32 %161, %struct.sk_buff* %162)
  %164 = load %struct.net_device*, %struct.net_device** %8, align 8
  %165 = call i32 @dev_hold(%struct.net_device* %164)
  %166 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %167 = call i32 @crypto_aead_decrypt(%struct.aead_request* %166)
  store i32 %167, i32* %12, align 4
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* @EINPROGRESS, align 4
  %170 = sub nsw i32 0, %169
  %171 = icmp eq i32 %168, %170
  br i1 %171, label %172, label %175

172:                                              ; preds = %152
  %173 = load i32, i32* %12, align 4
  %174 = call %struct.sk_buff* @ERR_PTR(i32 %173)
  store %struct.sk_buff* %174, %struct.sk_buff** %6, align 8
  br label %200

175:                                              ; preds = %152
  %176 = load i32, i32* %12, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %189

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @EBADMSG, align 4
  %181 = sub nsw i32 0, %180
  %182 = icmp ne i32 %179, %181
  br i1 %182, label %183, label %188

183:                                              ; preds = %178
  %184 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %185 = call i32 @kfree_skb(%struct.sk_buff* %184)
  %186 = load i32, i32* %12, align 4
  %187 = call %struct.sk_buff* @ERR_PTR(i32 %186)
  store %struct.sk_buff* %187, %struct.sk_buff** %7, align 8
  br label %188

188:                                              ; preds = %183, %178
  br label %193

189:                                              ; preds = %175
  %190 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %191 = call %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff* %190)
  %192 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %191, i32 0, i32 0
  store i32 1, i32* %192, align 8
  br label %193

193:                                              ; preds = %189, %188
  br label %194

194:                                              ; preds = %193
  %195 = load %struct.net_device*, %struct.net_device** %8, align 8
  %196 = call i32 @dev_put(%struct.net_device* %195)
  %197 = load %struct.aead_request*, %struct.aead_request** %16, align 8
  %198 = call i32 @aead_request_free(%struct.aead_request* %197)
  %199 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %199, %struct.sk_buff** %6, align 8
  br label %200

200:                                              ; preds = %194, %172, %131, %89, %57, %43, %31
  %201 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %201
}

declare dso_local %struct.TYPE_4__* @macsec_skb_cb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_share_check(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.aead_request* @macsec_alloc_req(i32, i8**, %struct.scatterlist**, i32) #1

declare dso_local i32 @macsec_fill_iv(i8*, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i32) #1

declare dso_local i32 @aead_request_free(%struct.aead_request*) #1

declare dso_local i32 @macsec_hdr_len(i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i8*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_hold(%struct.net_device*) #1

declare dso_local i32 @crypto_aead_decrypt(%struct.aead_request*) #1

declare dso_local i32 @dev_put(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
