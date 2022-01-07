; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_encrypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_macsec_encrypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64, i32 }
%struct.net_device = type { i32 }
%struct.scatterlist = type { i32 }
%struct.ethhdr = type { i32 }
%struct.macsec_eth_header = type { i32 }
%struct.aead_request = type { i32 }
%struct.macsec_secy = type { i32, i32, i32, %struct.macsec_tx_sc }
%struct.macsec_tx_sc = type { i64, i64, i32* }
%struct.macsec_tx_sa = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.macsec_dev = type { i32, %struct.TYPE_5__*, %struct.macsec_secy }
%struct.TYPE_5__ = type { i64 }
%struct.pcpu_secy_stats = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_8__ = type { %struct.macsec_tx_sa*, %struct.aead_request* }

@EINVAL = common dso_local global i32 0, align 4
@MACSEC_NEEDED_HEADROOM = common dso_local global i64 0, align 8
@MACSEC_NEEDED_TAILROOM = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@macsec_encrypt_done = common dso_local global i32 0, align 4
@EINPROGRESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sk_buff*, %struct.net_device*)* @macsec_encrypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @macsec_encrypt(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ethhdr*, align 8
  %11 = alloca %struct.macsec_eth_header*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.aead_request*, align 8
  %14 = alloca %struct.macsec_secy*, align 8
  %15 = alloca %struct.macsec_tx_sc*, align 8
  %16 = alloca %struct.macsec_tx_sa*, align 8
  %17 = alloca %struct.macsec_dev*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.sk_buff*, align 8
  %21 = alloca %struct.pcpu_secy_stats*, align 8
  %22 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %23 = load %struct.net_device*, %struct.net_device** %5, align 8
  %24 = call %struct.macsec_dev* @macsec_priv(%struct.net_device* %23)
  store %struct.macsec_dev* %24, %struct.macsec_dev** %17, align 8
  %25 = load %struct.macsec_dev*, %struct.macsec_dev** %17, align 8
  %26 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %25, i32 0, i32 2
  store %struct.macsec_secy* %26, %struct.macsec_secy** %14, align 8
  %27 = load %struct.macsec_secy*, %struct.macsec_secy** %14, align 8
  %28 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %27, i32 0, i32 3
  store %struct.macsec_tx_sc* %28, %struct.macsec_tx_sc** %15, align 8
  %29 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %15, align 8
  %30 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %15, align 8
  %33 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.macsec_tx_sa* @macsec_txsa_get(i32 %36)
  store %struct.macsec_tx_sa* %37, %struct.macsec_tx_sa** %16, align 8
  %38 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %39 = icmp ne %struct.macsec_tx_sa* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %2
  %41 = load %struct.macsec_secy*, %struct.macsec_secy** %14, align 8
  %42 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = call i32 @kfree_skb(%struct.sk_buff* %43)
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  %47 = call %struct.sk_buff* @ERR_PTR(i32 %46)
  store %struct.sk_buff* %47, %struct.sk_buff** %3, align 8
  br label %343

48:                                               ; preds = %2
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i64 @skb_headroom(%struct.sk_buff* %49)
  %51 = load i64, i64* @MACSEC_NEEDED_HEADROOM, align 8
  %52 = icmp slt i64 %50, %51
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %55 = call i64 @skb_tailroom(%struct.sk_buff* %54)
  %56 = load i64, i64* @MACSEC_NEEDED_TAILROOM, align 8
  %57 = icmp slt i64 %55, %56
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ true, %48 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  %61 = call i64 @unlikely(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %58
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = load i64, i64* @MACSEC_NEEDED_HEADROOM, align 8
  %66 = load i64, i64* @MACSEC_NEEDED_TAILROOM, align 8
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %64, i64 %65, i64 %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %20, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  %70 = call i64 @likely(%struct.sk_buff* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %63
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @consume_skb(%struct.sk_buff* %73)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %20, align 8
  store %struct.sk_buff* %75, %struct.sk_buff** %4, align 8
  br label %84

76:                                               ; preds = %63
  %77 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %78 = call i32 @macsec_txsa_put(%struct.macsec_tx_sa* %77)
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = call i32 @kfree_skb(%struct.sk_buff* %79)
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  %83 = call %struct.sk_buff* @ERR_PTR(i32 %82)
  store %struct.sk_buff* %83, %struct.sk_buff** %3, align 8
  br label %343

84:                                               ; preds = %72
  br label %98

85:                                               ; preds = %58
  %86 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %87 = load i32, i32* @GFP_ATOMIC, align 4
  %88 = call %struct.sk_buff* @skb_unshare(%struct.sk_buff* %86, i32 %87)
  store %struct.sk_buff* %88, %struct.sk_buff** %4, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  br i1 %90, label %97, label %91

91:                                               ; preds = %85
  %92 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %93 = call i32 @macsec_txsa_put(%struct.macsec_tx_sa* %92)
  %94 = load i32, i32* @ENOMEM, align 4
  %95 = sub nsw i32 0, %94
  %96 = call %struct.sk_buff* @ERR_PTR(i32 %95)
  store %struct.sk_buff* %96, %struct.sk_buff** %3, align 8
  br label %343

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %84
  %99 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  store i64 %101, i64* %12, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %103 = call %struct.ethhdr* @eth_hdr(%struct.sk_buff* %102)
  store %struct.ethhdr* %103, %struct.ethhdr** %10, align 8
  %104 = load %struct.macsec_secy*, %struct.macsec_secy** %14, align 8
  %105 = call i32 @send_sci(%struct.macsec_secy* %104)
  store i32 %105, i32* %18, align 4
  %106 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %107 = load i32, i32* %18, align 4
  %108 = call i32 @macsec_extra_len(i32 %107)
  %109 = call %struct.macsec_eth_header* @skb_push(%struct.sk_buff* %106, i32 %108)
  store %struct.macsec_eth_header* %109, %struct.macsec_eth_header** %11, align 8
  %110 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %11, align 8
  %111 = load %struct.ethhdr*, %struct.ethhdr** %10, align 8
  %112 = load i32, i32* @ETH_ALEN, align 4
  %113 = mul nsw i32 2, %112
  %114 = call i32 @memmove(%struct.macsec_eth_header* %110, %struct.ethhdr* %111, i32 %113)
  %115 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %116 = load %struct.macsec_secy*, %struct.macsec_secy** %14, align 8
  %117 = call i64 @tx_sa_update_pn(%struct.macsec_tx_sa* %115, %struct.macsec_secy* %116)
  store i64 %117, i64* %19, align 8
  %118 = load i64, i64* %19, align 8
  %119 = icmp eq i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %98
  %121 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %122 = call i32 @macsec_txsa_put(%struct.macsec_tx_sa* %121)
  %123 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %124 = call i32 @kfree_skb(%struct.sk_buff* %123)
  %125 = load i32, i32* @ENOLINK, align 4
  %126 = sub nsw i32 0, %125
  %127 = call %struct.sk_buff* @ERR_PTR(i32 %126)
  store %struct.sk_buff* %127, %struct.sk_buff** %3, align 8
  br label %343

128:                                              ; preds = %98
  %129 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %11, align 8
  %130 = load %struct.macsec_secy*, %struct.macsec_secy** %14, align 8
  %131 = load i64, i64* %19, align 8
  %132 = load i32, i32* %18, align 4
  %133 = call i32 @macsec_fill_sectag(%struct.macsec_eth_header* %129, %struct.macsec_secy* %130, i64 %131, i32 %132)
  %134 = load %struct.macsec_eth_header*, %struct.macsec_eth_header** %11, align 8
  %135 = load i64, i64* %12, align 8
  %136 = load i32, i32* @ETH_ALEN, align 4
  %137 = mul nsw i32 2, %136
  %138 = sext i32 %137 to i64
  %139 = sub i64 %135, %138
  %140 = call i32 @macsec_set_shortlen(%struct.macsec_eth_header* %134, i64 %139)
  %141 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %142 = load %struct.macsec_secy*, %struct.macsec_secy** %14, align 8
  %143 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @skb_put(%struct.sk_buff* %141, i32 %144)
  %146 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %147 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @ETH_HLEN, align 8
  %150 = sub i64 %148, %149
  %151 = load %struct.net_device*, %struct.net_device** %5, align 8
  %152 = call %struct.macsec_dev* @macsec_priv(%struct.net_device* %151)
  %153 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %152, i32 0, i32 1
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ugt i64 %150, %156
  br i1 %157, label %158, label %181

158:                                              ; preds = %128
  %159 = load %struct.macsec_dev*, %struct.macsec_dev** %17, align 8
  %160 = getelementptr inbounds %struct.macsec_dev, %struct.macsec_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = call %struct.pcpu_secy_stats* @this_cpu_ptr(i32 %161)
  store %struct.pcpu_secy_stats* %162, %struct.pcpu_secy_stats** %21, align 8
  %163 = load %struct.pcpu_secy_stats*, %struct.pcpu_secy_stats** %21, align 8
  %164 = getelementptr inbounds %struct.pcpu_secy_stats, %struct.pcpu_secy_stats* %163, i32 0, i32 0
  %165 = call i32 @u64_stats_update_begin(i32* %164)
  %166 = load %struct.pcpu_secy_stats*, %struct.pcpu_secy_stats** %21, align 8
  %167 = getelementptr inbounds %struct.pcpu_secy_stats, %struct.pcpu_secy_stats* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %168, align 4
  %171 = load %struct.pcpu_secy_stats*, %struct.pcpu_secy_stats** %21, align 8
  %172 = getelementptr inbounds %struct.pcpu_secy_stats, %struct.pcpu_secy_stats* %171, i32 0, i32 0
  %173 = call i32 @u64_stats_update_end(i32* %172)
  %174 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %175 = call i32 @macsec_txsa_put(%struct.macsec_tx_sa* %174)
  %176 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %177 = call i32 @kfree_skb(%struct.sk_buff* %176)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  %180 = call %struct.sk_buff* @ERR_PTR(i32 %179)
  store %struct.sk_buff* %180, %struct.sk_buff** %3, align 8
  br label %343

181:                                              ; preds = %128
  %182 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %183 = call i32 @skb_cow_data(%struct.sk_buff* %182, i32 0, %struct.sk_buff** %8)
  store i32 %183, i32* %6, align 4
  %184 = load i32, i32* %6, align 4
  %185 = icmp slt i32 %184, 0
  %186 = zext i1 %185 to i32
  %187 = call i64 @unlikely(i32 %186)
  %188 = icmp ne i64 %187, 0
  br i1 %188, label %189, label %196

189:                                              ; preds = %181
  %190 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %191 = call i32 @macsec_txsa_put(%struct.macsec_tx_sa* %190)
  %192 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %193 = call i32 @kfree_skb(%struct.sk_buff* %192)
  %194 = load i32, i32* %6, align 4
  %195 = call %struct.sk_buff* @ERR_PTR(i32 %194)
  store %struct.sk_buff* %195, %struct.sk_buff** %3, align 8
  br label %343

196:                                              ; preds = %181
  %197 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %198 = getelementptr inbounds %struct.macsec_tx_sa, %struct.macsec_tx_sa* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %6, align 4
  %202 = call %struct.aead_request* @macsec_alloc_req(i32 %200, i8** %9, %struct.scatterlist** %7, i32 %201)
  store %struct.aead_request* %202, %struct.aead_request** %13, align 8
  %203 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %204 = icmp ne %struct.aead_request* %203, null
  br i1 %204, label %213, label %205

205:                                              ; preds = %196
  %206 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %207 = call i32 @macsec_txsa_put(%struct.macsec_tx_sa* %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %209 = call i32 @kfree_skb(%struct.sk_buff* %208)
  %210 = load i32, i32* @ENOMEM, align 4
  %211 = sub nsw i32 0, %210
  %212 = call %struct.sk_buff* @ERR_PTR(i32 %211)
  store %struct.sk_buff* %212, %struct.sk_buff** %3, align 8
  br label %343

213:                                              ; preds = %196
  %214 = load i8*, i8** %9, align 8
  %215 = load %struct.macsec_secy*, %struct.macsec_secy** %14, align 8
  %216 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %215, i32 0, i32 2
  %217 = load i32, i32* %216, align 8
  %218 = load i64, i64* %19, align 8
  %219 = call i32 @macsec_fill_iv(i8* %214, i32 %217, i64 %218)
  %220 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %221 = load i32, i32* %6, align 4
  %222 = call i32 @sg_init_table(%struct.scatterlist* %220, i32 %221)
  %223 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %224 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %225 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %226 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @skb_to_sgvec(%struct.sk_buff* %223, %struct.scatterlist* %224, i32 0, i64 %227)
  store i32 %228, i32* %6, align 4
  %229 = load i32, i32* %6, align 4
  %230 = icmp slt i32 %229, 0
  %231 = zext i1 %230 to i32
  %232 = call i64 @unlikely(i32 %231)
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %243

234:                                              ; preds = %213
  %235 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %236 = call i32 @aead_request_free(%struct.aead_request* %235)
  %237 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %238 = call i32 @macsec_txsa_put(%struct.macsec_tx_sa* %237)
  %239 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %240 = call i32 @kfree_skb(%struct.sk_buff* %239)
  %241 = load i32, i32* %6, align 4
  %242 = call %struct.sk_buff* @ERR_PTR(i32 %241)
  store %struct.sk_buff* %242, %struct.sk_buff** %3, align 8
  br label %343

243:                                              ; preds = %213
  %244 = load %struct.macsec_tx_sc*, %struct.macsec_tx_sc** %15, align 8
  %245 = getelementptr inbounds %struct.macsec_tx_sc, %struct.macsec_tx_sc* %244, i32 0, i32 1
  %246 = load i64, i64* %245, align 8
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %248, label %272

248:                                              ; preds = %243
  %249 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %250 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = load i32, i32* %18, align 4
  %253 = call i32 @macsec_hdr_len(i32 %252)
  %254 = sext i32 %253 to i64
  %255 = sub i64 %251, %254
  %256 = load %struct.macsec_secy*, %struct.macsec_secy** %14, align 8
  %257 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = sext i32 %258 to i64
  %260 = sub i64 %255, %259
  %261 = trunc i64 %260 to i32
  store i32 %261, i32* %22, align 4
  %262 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %263 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %264 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %265 = load i32, i32* %22, align 4
  %266 = load i8*, i8** %9, align 8
  %267 = call i32 @aead_request_set_crypt(%struct.aead_request* %262, %struct.scatterlist* %263, %struct.scatterlist* %264, i32 %265, i8* %266)
  %268 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %269 = load i32, i32* %18, align 4
  %270 = call i32 @macsec_hdr_len(i32 %269)
  %271 = call i32 @aead_request_set_ad(%struct.aead_request* %268, i32 %270)
  br label %289

272:                                              ; preds = %243
  %273 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %274 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %275 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %276 = load i8*, i8** %9, align 8
  %277 = call i32 @aead_request_set_crypt(%struct.aead_request* %273, %struct.scatterlist* %274, %struct.scatterlist* %275, i32 0, i8* %276)
  %278 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %279 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %280 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load %struct.macsec_secy*, %struct.macsec_secy** %14, align 8
  %283 = getelementptr inbounds %struct.macsec_secy, %struct.macsec_secy* %282, i32 0, i32 1
  %284 = load i32, i32* %283, align 4
  %285 = sext i32 %284 to i64
  %286 = sub i64 %281, %285
  %287 = trunc i64 %286 to i32
  %288 = call i32 @aead_request_set_ad(%struct.aead_request* %278, i32 %287)
  br label %289

289:                                              ; preds = %272, %248
  %290 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %291 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %292 = call %struct.TYPE_8__* @macsec_skb_cb(%struct.sk_buff* %291)
  %293 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %292, i32 0, i32 1
  store %struct.aead_request* %290, %struct.aead_request** %293, align 8
  %294 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %295 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %296 = call %struct.TYPE_8__* @macsec_skb_cb(%struct.sk_buff* %295)
  %297 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %296, i32 0, i32 0
  store %struct.macsec_tx_sa* %294, %struct.macsec_tx_sa** %297, align 8
  %298 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %299 = load i32, i32* @macsec_encrypt_done, align 4
  %300 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %301 = call i32 @aead_request_set_callback(%struct.aead_request* %298, i32 0, i32 %299, %struct.sk_buff* %300)
  %302 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %303 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 8
  %305 = call i32 @dev_hold(i32 %304)
  %306 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %307 = call i32 @crypto_aead_encrypt(%struct.aead_request* %306)
  store i32 %307, i32* %6, align 4
  %308 = load i32, i32* %6, align 4
  %309 = load i32, i32* @EINPROGRESS, align 4
  %310 = sub nsw i32 0, %309
  %311 = icmp eq i32 %308, %310
  br i1 %311, label %312, label %315

312:                                              ; preds = %289
  %313 = load i32, i32* %6, align 4
  %314 = call %struct.sk_buff* @ERR_PTR(i32 %313)
  store %struct.sk_buff* %314, %struct.sk_buff** %3, align 8
  br label %343

315:                                              ; preds = %289
  %316 = load i32, i32* %6, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %332

318:                                              ; preds = %315
  %319 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %320 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = call i32 @dev_put(i32 %321)
  %323 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %324 = call i32 @kfree_skb(%struct.sk_buff* %323)
  %325 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %326 = call i32 @aead_request_free(%struct.aead_request* %325)
  %327 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %328 = call i32 @macsec_txsa_put(%struct.macsec_tx_sa* %327)
  %329 = load i32, i32* @EINVAL, align 4
  %330 = sub nsw i32 0, %329
  %331 = call %struct.sk_buff* @ERR_PTR(i32 %330)
  store %struct.sk_buff* %331, %struct.sk_buff** %3, align 8
  br label %343

332:                                              ; preds = %315
  br label %333

333:                                              ; preds = %332
  %334 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %335 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %334, i32 0, i32 1
  %336 = load i32, i32* %335, align 8
  %337 = call i32 @dev_put(i32 %336)
  %338 = load %struct.aead_request*, %struct.aead_request** %13, align 8
  %339 = call i32 @aead_request_free(%struct.aead_request* %338)
  %340 = load %struct.macsec_tx_sa*, %struct.macsec_tx_sa** %16, align 8
  %341 = call i32 @macsec_txsa_put(%struct.macsec_tx_sa* %340)
  %342 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  store %struct.sk_buff* %342, %struct.sk_buff** %3, align 8
  br label %343

343:                                              ; preds = %333, %318, %312, %234, %205, %189, %158, %120, %91, %76, %40
  %344 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %344
}

declare dso_local %struct.macsec_dev* @macsec_priv(%struct.net_device*) #1

declare dso_local %struct.macsec_tx_sa* @macsec_txsa_get(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @ERR_PTR(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_headroom(%struct.sk_buff*) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i64, i64, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

declare dso_local i32 @macsec_txsa_put(%struct.macsec_tx_sa*) #1

declare dso_local %struct.sk_buff* @skb_unshare(%struct.sk_buff*, i32) #1

declare dso_local %struct.ethhdr* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @send_sci(%struct.macsec_secy*) #1

declare dso_local %struct.macsec_eth_header* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @macsec_extra_len(i32) #1

declare dso_local i32 @memmove(%struct.macsec_eth_header*, %struct.ethhdr*, i32) #1

declare dso_local i64 @tx_sa_update_pn(%struct.macsec_tx_sa*, %struct.macsec_secy*) #1

declare dso_local i32 @macsec_fill_sectag(%struct.macsec_eth_header*, %struct.macsec_secy*, i64, i32) #1

declare dso_local i32 @macsec_set_shortlen(%struct.macsec_eth_header*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local %struct.pcpu_secy_stats* @this_cpu_ptr(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

declare dso_local i32 @skb_cow_data(%struct.sk_buff*, i32, %struct.sk_buff**) #1

declare dso_local %struct.aead_request* @macsec_alloc_req(i32, i8**, %struct.scatterlist**, i32) #1

declare dso_local i32 @macsec_fill_iv(i8*, i32, i64) #1

declare dso_local i32 @sg_init_table(%struct.scatterlist*, i32) #1

declare dso_local i32 @skb_to_sgvec(%struct.sk_buff*, %struct.scatterlist*, i32, i64) #1

declare dso_local i32 @aead_request_free(%struct.aead_request*) #1

declare dso_local i32 @macsec_hdr_len(i32) #1

declare dso_local i32 @aead_request_set_crypt(%struct.aead_request*, %struct.scatterlist*, %struct.scatterlist*, i32, i8*) #1

declare dso_local i32 @aead_request_set_ad(%struct.aead_request*, i32) #1

declare dso_local %struct.TYPE_8__* @macsec_skb_cb(%struct.sk_buff*) #1

declare dso_local i32 @aead_request_set_callback(%struct.aead_request*, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @dev_hold(i32) #1

declare dso_local i32 @crypto_aead_encrypt(%struct.aead_request*) #1

declare dso_local i32 @dev_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
